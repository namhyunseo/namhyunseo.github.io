# HSBlog

제목과 글만 있는 개인 블로그. Astro 정적 사이트.

- **글 쓰기:** 옵시디언에서 `posts/` 폴더를 볼트로 열기 → `.md` 하나 = 글 하나.
  - 맨 위 frontmatter 에 `title` · `date` 만. `draft: true` 면 안 보임.
  - 파일 이름 = 글 주소 (`posts/hello.md` → `/hello/`). 영문 · 숫자 · `-` 권장.
  - `_` 로 시작하는 파일(예: `_템플릿.md`)은 사이트에 안 나감.
  - 이미지는 `posts/assets/` (옵시디언 설정에 맞춰 둠), 마크다운 링크 `![](assets/x.png)`.
- **로컬:** Node 22.23.4 이상 필요(Astro 7). `npm run dev` → http://localhost:4321
- **빌드:** `npm run build` → `dist/`
- **자동 올리기 (Obsidian Git):** `posts/.obsidian/plugins/obsidian-git` 설치 · 설정해 둠.
  - 마지막 수정 5분 뒤 자동 commit + push → GitHub Actions 배포. 볼트 열 때 자동 pull.
  - `limitToVault` 켜 둠 — `posts/` 안 파일만 커밋.
  - 쓰는 중인 글은 `draft: true` 로 (템플릿 기본값). 올릴 때 지우거나 `false`.
  - 바로 올리기: 명령 팔레트(Cmd+P) → 「Git: Commit-and-sync」.
