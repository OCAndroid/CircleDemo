#!/usr/bin/env bash

function uploadToHockeyApp {
  curl --verbose \
       --fail \
       --form "status=2" \
       --form "notify=1" \
       --form "platform=Android" \
       --form "ipa=@${HOCKEYAPP_EXPORT_APK_PATH}" \
       --form "release_type=2" \
       --header "X-HockeyAppToken: ${HOCKEYAPP_TOKEN}" \
       "https://upload.hockeyapp.net/api/2/apps/${HOCKEYAPP_APP_IDENTIFIER}/app_versions/upload"
}