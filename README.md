# Namuteo

Jekyll과 GitHub Pages로 운영하는 개인 블로그입니다.

## Stack

- Jekyll
- GitHub Pages
- Minima theme

## Local Development

### 1. Install dependencies

```bash
bundle install
```

### 2. Run local server

```bash
bundle exec jekyll serve
```

브라우저에서 `http://127.0.0.1:4000`으로 확인할 수 있습니다.

## Build

정적 사이트 빌드는 아래 명령으로 확인합니다.

```bash
bundle exec jekyll build
```

## Writing

블로그는 **Deep Dive**와 **TIL** 두 영역으로 나뉘어 있습니다. 둘은 분리돼 있지만 한 사이트
안에서 공유 네비게이션·홈 화면으로 연결됩니다. (흐름: 매일 쌓는 TIL → 정리된 Deep Dive)

### 새 글 만들기 — QuickAdd (Obsidian)

명령 팔레트에서 한 번에 날짜 파일명 + 양식이 채워진 새 글을 만듭니다.
**제목(한글)**과 **슬러그(영문 파일명)** 를 차례로 입력 → 깔끔한 영문 URL.

- **`New Deep Dive`** → 제목 + 슬러그 → `_posts/YYYY-MM-DD-<slug>.md` 생성 (layout/date/categories/tags 자동)
- **`New TIL`** → 제목 + 슬러그 → `_til/YYYY-MM-DD-<slug>.md` 생성 (date/tags 자동)

설정: QuickAdd 플러그인 설치 → `.obsidian/plugins/quickadd/data.json`에 두 명령이 미리 구성돼 있음.
템플릿 원본은 `_templates/deep-dive.md`, `_templates/til.md` (Jekyll 빌드에서 제외되는 `_` 폴더).
단축키는 `설정 → 단축키`에서 `QuickAdd: New Deep Dive / New TIL`에 지정.

### 수동 생성 (대안)

```bash
cp _templates/deep-dive.md _posts/2026-06-09-my-new-post.md   # Deep Dive
cp _templates/til.md       _til/2026-06-03-my-til.md           # TIL
```

- Deep Dive 목록: `/deep-dive/` · TIL 목록: `/til/` (URL은 `/til/<파일명>/`)
- 태그는 `/tags/`에서 주제별로 모아 봅니다. 글 본문 이미지는 `_posts`가 아니라 `assets/`에 두세요(미게시 방지).

## Project Structure

```text
.
├── _config.yml          # til 컬렉션·헤더 네비게이션 정의
├── _posts/              # Deep Dive (기술 글)
├── _til/                # TIL (collection)
├── _templates/          # QuickAdd 템플릿 (Jekyll 빌드 제외)
├── _layouts/
│   ├── home.html        # 홈: Deep Dive + TIL 두 스트림
│   ├── post.html        # Deep Dive 글 레이아웃
│   ├── til.html         # TIL 글 레이아웃
│   └── doc-post.html    # 문서 임베드형 Deep Dive 글
├── _includes/head.html  # Pretendard 폰트 주입 (minima head 오버라이드)
├── deep-dive/index.html # /deep-dive/  Deep Dive 목록
├── til/index.html       # /til/        TIL 목록
├── assets/
└── index.md             # 홈
```

## Deployment

`main` 브랜치 push 기준 GitHub Pages 기본 빌드입니다 (별도 Actions 워크플로 없음).

1. (문서형 글이 있으면) `./sync-docs.sh` 실행 — personal-os의 html → `docs/` 동기화
2. obsidian-git(또는 git)으로 commit & push
3. GitHub Pages가 Jekyll 빌드 → 반영

로컬 미리보기: `bundle exec jekyll serve`
