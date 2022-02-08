import requests


from requests.auth import HTTPBasicAuth


r = requests.get('http://localhost:8080/api/auth/token',
                 auth=HTTPBasicAuth('yeksworld', '1234asdf'))

assert r.status_code == 200
assert r.headers["Content-Type"] == "application/json"
r_body = r.json()
print("Content-Type :", r.headers["Content-Type"])
print("token :", r_body["token"])
assert r_body["token"] != None
assert r_body["status"] == "SUCCESS"
assert r.headers["Content-Length"] == "84"
