#!/usr/bin/env bash
#
# Create one team yaml file to include with the cookiecutter.yaml
#
# This script is meant to be called only within the 'script' directory

# Go to the team directory (silently)
pushd ../team/ > /dev/null

# Merge all individual files, excluding template and header files
find . -type f -name '*.yaml' \
  ! -name team.yaml ! -name team_people.yaml \
  ! -name template.yaml ! -name header.yaml | \
  sort | xargs -I '{}' cat '{}' > team_people.yaml

# Indent to proper yaml
sed -i.bkp -e 's/^/  /' team_people.yaml
rm team_people.yaml.bkp

# Create the final team file
cat header.yaml team_people.yaml > team.yaml

# Remove temporary files
rm team_people.yaml

# Go back where we came from
popd > /dev/null

echo "Team.yaml created"

