#!/usr/bin/python3

class ss_run:
    def __init__(self, run_ID, conf, test, input):
        self.ID = run_ID
        self.conf = conf
        self.test = test
        self.input = input


import threading
import queue
import os
import subprocess

run_queue = queue.Queue()

class Worker(threading.Thread):
    def __init__(self, q, *args, **kwargs):
        self.q = q
        super().__init__(*args, **kwargs)
    def run(self):
        try:
            work = self.q.get(timeout=0)  # no timeout
        except queue.Empty:
            return
        
        if not work.test.endswith(' 50 9 '):
            result = os.path.join(os.getcwd(), 'results', os.path.basename(work.test) + os.path.basename(work.conf))
        else:
            result = os.path.join(os.getcwd(), 'results', os.path.basename(work.test[:-6]) + os.path.basename(work.conf))

        command =  '../build/simplesim-3.0/sim-outorder -config {} -redir:sim {} {} {}'.format(work.conf, result, work.test, work.input)
        print('Thread {} executing {}'.format(work.ID,command))
        retval = subprocess.call(command, shell=True)
        print(retval)
        self.q.task_done()

class Dispatcher(threading.Thread):
    def __init__(self, q, ss_runs, *args, **kwargs):
        self.q = q
        super().__init__(*args, **kwargs)
    def run(self):
        dispatched = 0
        for run in ss_runs:
            work = self.q.put(run)  # no timeout
        self.q.task_done()


confs = []
tests = []
inputs = []
ss_runs = []

for root, dirs, files in os.walk('confs'):
    for file in files:
        confs.append(os.path.join(os.getcwd(),root,file))

for root, dirs, files in os.walk('tests'):
    for file in files:
        tests.append(os.path.join(os.getcwd(),root,file))

for test in tests:
    inputs.append(test.replace('.ss', '.in').replace('/tests/','/inputs/'))

# redirect stdin for commands that require it
for x in range(len(inputs)):
    if inputs[x].endswith('anagram.in') or inputs[x].endswith('compress95.in'):
        inputs[x] = ' < ' + inputs[x]

run_id = 0
for conf in confs:
    for x in range(0,len(tests)):
        # add test-unique command line options
        if tests[x].endswith('go.ss'):
            tests[x] += ' 50 9 '
        ss_runs.append(ss_run(run_id,conf,tests[x],inputs[x]))
        run_id += 1



for _ in range(len(ss_runs)):
    Worker(run_queue).start()
    Dispatcher(run_queue, ss_runs).start()
run_queue.join()  # blocks until the queue is empty.
