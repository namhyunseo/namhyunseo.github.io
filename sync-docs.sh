#!/bin/bash
# personal-os/docs/ → my-blog/docs/ 동기화
# push 전에 실행: ./sync-docs.sh

SRC=~/personal-os/docs
DEST=~/dev/_hub/my-blog/docs

cp "$SRC"/*.html "$DEST"/
echo "✓ synced $(ls "$DEST"/*.html | wc -l | tr -d ' ') html files → $DEST"
