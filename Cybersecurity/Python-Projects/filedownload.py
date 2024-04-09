import requests

url = 'https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwor$
r = requests.get(url, allow_redirects=True)
open('10k-most-common.txt', 'wb').write(r.content)  
