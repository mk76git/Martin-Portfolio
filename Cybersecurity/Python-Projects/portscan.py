import sys
import socket
import pyfiglet


ascii_banner = pyfiglet.figlet_format("PORT SCANNER \nPort $
print(ascii_banner)


ip = '10.10.111.199' 
open_ports =[] 

ports = range(1, 65535)


def probe_port(ip, port, result = 1): 
  try: 
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
    sock.settimeout(0.5) 
