#!/bin/sh

new_version="$1"
echo "Updating version to '$new_version' ..."

sed -i -e "s/3\.[0-9.]\+-security-dev/${new_version}/g" \
  full-backend-tests/pom.xml \
  graylog-plugin-archetype/pom.xml \
  graylog-plugin-parent/graylog-plugin-web-parent/pom.xml \
  graylog-plugin-parent/pom.xml \
  graylog-project-parent/pom.xml \
  graylog2-server/pom.xml \
  graylog2-web-interface/manifests/package.json \
  graylog2-web-interface/package.json \
  graylog2-web-interface/packages/graylog-web-plugin/package.json \
  integration-tests/pom.xml \
  pom.xml

echo "Done."
