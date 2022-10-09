## TASK
193.16.20.35/29

What is the Network IP, number of hosts, range of IP addresses and broadcast IP from this subnet?

### Instruction: 
Submit all your answer as a markdown file in the folder for this exercise.
<hr>

## SOLUTION

 To calculate the Network IP, use the [logic gate "and" operator](https://www.tutorialspoint.com/computer_logical_organization/logic_gates.htm) on the subnet mask address and the given IP. 
 
 To do this, we get the CIDR which is /29 to get our subnet mask address and convert to binary. 

Subnet mask address in binary = 11111111.11111111.11111111.11111000

Subnet mask address in decimal = 255.255.255.248 
(255 converted to binary is= 11111111 and 248 to binary is= 11111000)

Given IP = 193.16.20.35/29
IP in binary = 11000001.00010000.00010100.00100011

using logic gate and operator (.)

- 11111111 . 11000001 = 11000001 
- 11111111 . 00010000 = 00010000
- 11111111 . 00010100 = 00010100
- 11111000 . 00100011 = 00100000

Network IP = 11000001.00010000.00010100.00100000
convert the result to base to get the Network IP in decimal

#### Network IP = 193.16.20.32
---

To calculate the number of hosts, we use the formula 2^n-2 where n is the remaining host bit from the subnet mask and minus 2 means that you minus the first and last ip addresses as the first address is not assignable while the last address is your broadcast address.

We have 3 hosts bit remaining from our subnet mask so our number of host will be:
2^3 = 8 hosts

8 -2 = 6 usable hosts

Range of IP addresses = addresses from 193.16.20.32 to 193.16.20.39
- First IP = 193.16.20.32 (unassignable)
- Last IP = 193.16.20.39 (Broadcast address)
- Range of usable IPs = 193.16.20.33 - 193.16.20.38
---

In conclusion, we have the following answers
#### Network IP = 193.16.20.32
#### Number of hosts = 6
#### Range of IP addresses = 193.16.20.32 - 
- First usable IP = 193.16.20.33
- Last Usabele IP = 193.16.20.38
#### Broadcast address = 193.16.20.39
