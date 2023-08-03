#!/bin/bash
# Revanced build
source ./src/tools.sh

# Check patch
check_new_patch "revanced" "revanced"

#Download Revanced patches
dl_gh "revanced" "revanced-patches revanced-cli revanced-integrations" "latest"

# Download HTMLQ 
dl_htmlq

# Use v$version to take apk with version
# Example: patch "reddit" "reddit-revanced-v$version"

# Twitter
get_patches_key "twitter"
version="9.98.0-release.0"
get_apkmirror "twitter"
patch "twitter" "twitter-revanced-v$version"

# Patch Twitch 
get_patches_key "twitch"
get_ver "twitch"
get_apkmirror "twitch"
patch "twitch" "twitch-revanced-v$version"

# Patch Tiktok
get_patches_key "tiktok"
get_apkmirror "tiktok"
patch "tiktok" "tiktok-revanced-v$version"

# Patch YouTube 
get_patches_key "youtube-revanced"
get_ver "youtube-rv"
get_apkmirror "youtube"
patch "youtube" "youtube-revanced-v$version"

# Patch YouTube Music 
get_patches_key "youtube-music-revanced"
get_apkmirror "youtube-music" "arm64-v8a"
patch "youtube-music" "youtube-music-revanced-v$version"

# Finish patch
finish_patch "revanced"

# Split APK
#dl_gh "inotia00" "revanced-cli" "latest"
#dl_gh "revanced" "revanced-patches" "latest"
#split_apk "youtube-revanced"
