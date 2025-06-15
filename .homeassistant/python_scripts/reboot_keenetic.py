#!/usr/bin/python

import pexpect
import sys

# total arguments
n = len(sys.argv)
print("Total arguments passed:", n)

# Arguments passed
print("\nName of Python script:", sys.argv[0])

print("\nArguments passed:", sys.argv[1])


child = pexpect.spawn('telnet 192.168.17.1')
child.expect('Login:')
print (child.before)
print ("after:",child.after)

child.sendline('admin')

child.expect('Password:')
print ("Password: ",child.before)

child.sendline(sys.argv[1])

child.expect ('\(config\)\>')
print ("config: ",child.before)

child.sendline('system reboot 120')

child.expect ('RebootManager: Will activate system reboot')
print ("rebooting: ",child.before)

child.sendline('exit')


child.expect(pexpect.EOF, timeout=None)
cmd_show_data = child.before
cmd_output = cmd_show_data.split('\r\n')
#for data in cmd_output:
#    print data