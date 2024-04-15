Step 1 : install robortframework libraries using command 'pip install robotframework'
Step 2: create test case with POST request, headers and json payload
Step 3: add to validation for json response received.
Step 4: save the file with .robot extension
Step 5: Before running the robot file make sure the flask server is ON. if not run the flask with the command python fileName.py
Step 6: Now run the robot file with the command 'robot folderName\projectName.robot'
Step 7: check the PASS/FAIL status on the terminal console
Step 8: create load test for the api using locust
Step 9: Install locust with command 'pip install locust'
Step 10: run the locustFile with the command 'locust -f TestCases\locustFile.py'
Step 11: Navigate to locust web interface 'localhost:8089'
Step 12: add number of user, ramp up users/sec and hit start button to initiate the load testing for the api endpoint.
