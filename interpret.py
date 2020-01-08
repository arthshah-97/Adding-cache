#!/usr/bin/python3

import matplotlib.pyplot as plt
import os

class ss_result():
    def __init__(self, file):
        self.file = file

    def interpret(self):
        self.caches = int(self.file[-1])
        self.benchmark = self.file.split('.')[0]

        results_text = open(os.path.join('results', self.file), 'r')
        lines = results_text.readlines()
        for line in lines:
            if line.startswith('sim_CPI'):
                cpi_line = line
                break

        self.cpi = float(cpi_line.split()[1])




results = []
benchmarks = {}

for root, dirs, files in os.walk('results'):
    for file in files:
        results.append(ss_result(file))
    

for result in results:
    result.interpret()


    if not result.benchmark in benchmarks.keys():
        benchmarks[result.benchmark] = [None] * 5
    benchmarks[result.benchmark][result.caches - 1] = result.cpi 

fig = plt.figure()
ax1 = fig.add_subplot(111)

for bench in benchmarks:
    ax1.plot(range(1,6), benchmarks[bench], label=bench, marker='s')

plt.xlabel('Cache levels')
plt.ylabel('CPI')
plt.title('SPEC95 Benchmarks CPI per Levels of Cache')
plt.legend(loc='upper right');
plt.xticks(range(1,6))
plt.show()

    
