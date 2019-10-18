import matplotlib.pyplot as plt
import numpy as np
import scipy.stats as st
plt.style.use('seaborn-darkgrid')
ps = [[0.1, 0.6, 0.3], [0.3, 0.1, 0.1, 0.5]]
for p in ps:
    x = range(len(p))
    plt.plot(x, p, '-o', label='p = {}'.format(p))
plt.xlabel('x', fontsize=12)
plt.ylabel('f(x)', fontsize=12)
plt.ylim(0)
plt.legend(loc=1)
plt.show()