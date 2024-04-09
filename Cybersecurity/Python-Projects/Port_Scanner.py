
import socket

def scan_ports(target_host, start_port, end_port):
    print(f"Scanning ports on {target_host}...")
    for port in range(start_port, end_port + 1):
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(1)
            result = sock.connect_ex((target_host, port))
            if result == 0:
                print(f"Port {port}: Open")
            sock.close()
        except KeyboardInterrupt:
            print("\nExiting...")
            break
        except socket.gaierror:
            print("Hostname could not be resolved. Exiting...")
            break
        except socket.error:
            print("Couldn't connect to server. Exiting...")
            break

if __name__ == "__main__":
    target_host = input("Enter the target IP address: ")
    start_port = int(input("Enter the start port: "))
    end_port = int(input("Enter the end port: "))

    if start_port > end_port:
        print("Error: Start port cannot be greater than end port.")
    else:
        scan_ports(target_host, start_port, end_port)
