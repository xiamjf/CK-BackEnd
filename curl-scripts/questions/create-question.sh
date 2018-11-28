curl --include --request POST "http://localhost:4741/questions/" \
  --header "Content-Type: application/json" \
  --data '{
      "question": {
        "prompt": "'"${TEXT}"'"
      }
  }'

# TEXT='lorem ipsum' sh ./curl-scripts/questions/create-question.sh
