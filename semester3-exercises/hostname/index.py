#importing socket library
import socket

#function to display hostname and ip address
def getHost_name():
    try:
        host_name = socket.gethostname()
        host_ip = socket.gethostbyname(host_name)
        print("Hello! Welcome to my app.")
        print("My Hostname is : ", host_name)
        print("My IP address is :", host_ip)
    except:
        print("Unable to get Hostname and Ip address.")

getHost_name()
