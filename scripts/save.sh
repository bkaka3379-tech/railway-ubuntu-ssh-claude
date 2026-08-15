#!/bin/bash
cd /app || exit 1
git add -A
git commit -m "save: $(date '+%F %T')" || true
git push
