#!/bin/sh
# git 훅 설치. 새 기기에서 클론한 뒤 한 번 실행하면 된다.
#   sh scripts/install-hooks.sh
root="$(git rev-parse --show-toplevel)"
cat > "$root/.git/hooks/pre-commit" <<'EOF'
#!/bin/sh
exec "$(git rev-parse --show-toplevel)/scripts/fix-image-paths.sh"
EOF
chmod +x "$root/.git/hooks/pre-commit" "$root/scripts/fix-image-paths.sh"
echo "pre-commit 훅 설치 완료."
