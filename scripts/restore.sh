#!/bin/bash
if [ -n "$GITHUB_TOKEN" ]; then
    git clone https://${GITHUB_TOKEN}@github.com/bkaka3379-tech/railway-ubuntu-ssh-claude.git /tmp/brain 2>/dev/null || true
    if [ -d "/tmp/brain" ]; then
        cp -r /tmp/brain/configs/.bashrc /tmp/brain/configs/.ssh ~/ 2>/dev/null || true
        cp /tmp/brain/configs/* /app/configs/ 2>/dev/null || true
        cp /tmp/brain/scripts/* /usr/local/bin/ 2>/dev/null || true
        chmod +x /usr/local/bin/* 2>/dev/null || true
    fi
fi
