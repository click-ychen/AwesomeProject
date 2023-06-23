#!/usr/bin/env bash
curl https://api.applivery.io/v1/integrations/builds \
    -X POST \
    -H "Authorization: bearer $API_KEY" \
    -F build="@$APP_FILE" \
    -F notifyCollaborators="$NOTIFY" \
    -F changelog="$CHANGELOG" \
    -F tags="$TAGS" \
    -F deployer.name='github action' \
    -F deployer.info.tag="$GITHUB_TAG"  \
    -F versionName="$VERSION_NAME"
