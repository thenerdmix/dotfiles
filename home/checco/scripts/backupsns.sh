#!/bin/bash
rclone sync --config /home/checco/.config/rclone/rclone.conf --copy-links --verbose --update --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --exclude .git/** --stats 1s /home/checco/casa gdrivesns:backup/home/casa
rclone sync --config /home/checco/.config/rclone/rclone.conf --copy-links --verbose --update --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s /home/checco/wallpaper gdrivesns:backup/home/wallpaper
rclone sync --config /home/checco/.config/rclone/rclone.conf --copy-links --verbose --update --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s /home/checco/music gdrivesns:backup/home/music
