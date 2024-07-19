#!/bin/bash
BASE_BRANCHES=$(gh pr list -R "https://github.com/issei-suzuki-10antz/PracticeOfTheShellSecondSeason" \
--json headRefName \
--jq '.[].baseRefName')

for BRANCH in $BASE_BRANCHES; do
  echo "base: ${BRANCH}"
done

HEAD_BRANCHES=$(gh pr list -R "https://github.com/issei-suzuki-10antz/PracticeOfTheShellSecondSeason" \
--json headRefName \
--jq '.[].headRefName')

for BRANCH in $HEAD_BRANCHES; do
  echo "head: ${BRANCH}"
done