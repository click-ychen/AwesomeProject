#!/usr/bin/env bash
curl https://api.applivery.io/v1/integrations/builds \
    -X POST \
    -H "Authorization: bearer $API_KEY" \
    -F build="@$APP_FILE" \
    -F notify="$NOTIFY" \
    -F release_notes="$RELEASE_NOTES" \
    -F tags="$TAGS"
