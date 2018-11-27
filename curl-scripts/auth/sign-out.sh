#!/bin/bash

curl "http://localhost:4741/sign-out" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo

# TOKEN=BAhJIiVkZjczYmU2MTM4MmI3YjU3NDczNWIzMGU3OTE5Y2Q2OAY6BkVG--139d984565047d1ef79f469cafe6eb77a20ff84e sh curl-scripts/auth/sign-out.sh
