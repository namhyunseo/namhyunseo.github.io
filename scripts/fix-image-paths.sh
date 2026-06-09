#!/bin/sh
# 이미지 경로 자동 교정
# Obsidian "absolute path in vault"는 맨 앞 슬래시를 안 붙여서
# `](assets/...)` 형태로 들어간다. 웹(하위 URL 페이지)에서 깨지므로
# 커밋 직전에 `](/assets/...)`(루트 절대경로)로 정규화한다.
#
# pre-commit 훅에서 호출되며, 스테이징된 _posts/_til 마크다운만 손본다.

set -e

changed=$(git diff --cached --name-only --diff-filter=ACM | grep -E '^(_til|_posts|_drafts)/.*\.md$' || true)
[ -z "$changed" ] && exit 0

fixed=""
for f in $changed; do
  [ -f "$f" ] || continue
  if grep -q '](assets/' "$f"; then
    sed -i '' 's#](assets/#](/assets/#g' "$f"
    git add "$f"
    fixed="$fixed $f"
  fi
done

[ -n "$fixed" ] && echo "[fix-image-paths] 루트 슬래시 교정:$fixed"
exit 0
