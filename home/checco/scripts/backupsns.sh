#!/bin/bash
rclone copy --copy-links --verbose --update --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s ~/casa gdrivesns:backup/home/casa
rclone copy --copy-links --verbose --update --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s ~/wallpaper gdrivesns:backup/home/wallpaper
