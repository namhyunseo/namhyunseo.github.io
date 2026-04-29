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

## Writing Posts

- 게시글은 `_posts/` 아래에 `YYYY-MM-DD-title.md` 형식으로 생성합니다.
- 초안은 `_drafts/` 아래에서 작성합니다.
- 템플릿은 `_drafts/new-post-template.md`를 복제해서 사용하면 됩니다.

예시:

```bash
cp _drafts/new-post-template.md _posts/2026-04-29-my-new-post.md
```

## Project Structure

```text
.
├── _config.yml
├── _drafts/
├── _posts/
├── assets/
└── index.md
```

## Deployment

이 저장소는 `main` 브랜치 기준 GitHub Pages 배포를 전제로 구성되어 있습니다.
