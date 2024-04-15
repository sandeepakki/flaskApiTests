from locust import HttpUser, task, between
import json


class MyUser(HttpUser):
    host = "http://127.0.0.1:5000"  # Replace this with your base host URL
    wait_time = between(1, 3)

    @task
    def submit_json(self):
        headers = {'Content-Type': 'application/json'}
        payload = {'name': 'sandeep akki', 'email': 'sandeep.akki@gmail.com'}  # Replace with your desired user data
        response = self.client.post("/submit-json", data=json.dumps(payload), headers=headers)

