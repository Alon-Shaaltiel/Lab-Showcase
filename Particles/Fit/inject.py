#!/usr/bin/env python
# coding: utf-8

# In[6]:


import pyperclip
momentum = 10
particle = 'electron'
password = ''
username = 'shaaltiel'
start = 'cd "$LAB/Particles/Data"\n' # file location
# start += f'sshpass -p {password} ssh -tt {username}@hpcssd.tau.ac.il | tee -a Second_KShort_alpha_4_{momentum}.txt\n'
start += f'sshpass -p {password} ssh -tt {username}@hpcssd.tau.ac.il | tee -a test.txt\n'
start += 'singularity shell --bind /var/misc/phys /docker_scratch/g\n'
start += 'cd /var/misc/phys; ./gimel\n'
first = True
pyperclip.copy(start)

while True:
    if input(r'Did you paste the commands into the terminal? [y\n]: ') == 'y':
        break

measurements = 2
inject = ''

if first:
    inject += '1\nn\n'
    first = False

inject += f'{particle} {momentum}\n'
for j in range(measurements//120 + 1):
    inject += 'inject; ' * min(measurements-j*120,120) + '\n'
# inject += 'exit\nexit\nexit\n'
pyperclip.copy(inject)

print('Now paste again into the GEANT3 screen, without inputting anything beforehand.')