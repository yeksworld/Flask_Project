import requests

h = {'token': 'MjI0NjAyNDMxMTM2NDkyMzE2NTk0Njc0Njk3ODgyODQyNTczNDY0',
     'Content-Type': 'application/json'}
put_info = {
    'firstname': 'semig'
}

r1 = requests.put('http://localhost:8080/api/users/yeksworld', headers=h, data=put_info)

print(r1.headers)
print(r1.status_code)
print(r1.text)

assert r1.status_code == 200
assert r1.headers["Content-Type"] == "application/json"