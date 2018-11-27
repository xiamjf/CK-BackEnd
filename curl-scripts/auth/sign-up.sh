#!/bin/bash

curl "http://localhost:4741/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'",
      "first_name": "'"${FIRST_NAME}"'",
      "last_name": "'"${LAST_NAME}"'",
      "grade": "'"${GRADE}"'",
      "school": "'"${SCHOOL}"'"
    }
  }'

echo

# EMAIL=c@c.com PASSWORD=ccc PASSWORD_CONFIRMATION=ccc FIRST_NAME=CC LAST_NAME=Cowen GRADE=4 SCHOOL='Sackett Elementary' sh curl-scripts/auth/sign-up.sh
