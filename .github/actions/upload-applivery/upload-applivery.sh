#!/usr/bin/env bash
curl https://api.applivery.io/v1/integrations/builds \
    -F api_key="$API_KEY" \
    -F file="@$APP_FILE" \
    -F notify="$NOTIFY" \
    -F release_notes="$RELEASE_NOTES" \
    -F tags="$TAGS"
