import requests

h = {'token': 'NDU1OTM2MjI0NTQ4MjgyNDUwMDc4NjgyMzcxOTU5MTAxNDg5MTA=',
     'Content-Type': 'application/json'}
r1 = requests.get('http://localhost:8080/api/users/yeksworld', headers=h)

print(r1.headers)
print(r1.status_code)
print(r1.text)
assert r1.status_code == 200
assert r1.headers["Content-Type"] == "application/json"


