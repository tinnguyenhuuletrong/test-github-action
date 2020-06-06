
REPO_URL="https://api.github.com/repos/tinnguyenhuuletrong/test-github-action/dispatches"
GIT_USERNAME="<update-here>"
ACCESS_TOKEN="<update-here>"
echo $REPO_URL
curl -XPOST -u "${GIT_USERNAME}:${ACCESS_TOKEN}" -H "Accept: application/vnd.github.everest-preview+json" -H "Content-Type: application/json" $REPO_URL --data '{"event_type": "some_type", "client_payload": {"name": "TTin"}}'
