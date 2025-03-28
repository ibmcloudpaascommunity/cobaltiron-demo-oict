#!/bin/bash
# Mihai Criveti <crmihai1@ie.ibm.com>
# Analyze GitHub Issues data and create wordclouds

# You need to be logged in
#gh auth login

# Other options
# gh issue list --limit 1000 --state all | tr '\t' ',' > /tmp/issues.csv
# gh issue list --limit 1000 --state all | tr ',' ' ' | tr '\t' ',' > issues.csv
# hub issue -f "%t,%l%n" > list.csv https://hub.github.com/

# GH_HOST = github.ibm.com
rm /tmp/github-dump.json

# Get total number of issues
MAX_NUM=`gh issue list --limit 1 --json number | jq ".[].number"`
for n in `seq 1 $MAX_NUM`
  do gh issue view $n --json title,assignees,author,body,closed,closedAt,comments,createdAt,id,labels,milestone,number,projectCards,reactionGroups,state,title,updatedAt,url
done

# >> /tmp/github-dump.json 2>/dev/null
