import requests


response = requests.get("http://localhost:8080/api/users")
assert response.status_code == 200
assert response.headers["Content-Type"] == "application/json"

response_body = response.json()
print(response_body)
assert response_body["payload"][1] == "yeksworld2"
assert response_body["status"] == "SUCCESS"