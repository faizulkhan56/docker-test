#!/bin/bash

# GitHub repository and token
REPO="faizulkhan56/docker-test"
TOKEN=$MY_GITHUB_TOKEN

# Fetch the list of deployments from the GitHub API
deployments=$(curl -s -H "Authorization: token $TOKEN" "https://api.github.com/repos/$REPO/deployments")

# Count the number of deployments
deployment_count=$(echo "$deployments" | jq length)

echo "$deployment_count"
