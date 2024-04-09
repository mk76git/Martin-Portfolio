import requests

url = 'https://www.challagladiolen.nl/images/a3.jpg'
r = requests.get(url, allow_redirects=True)
open('a3.jpg', 'wb').write(r.content)
