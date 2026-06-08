---
layout: doc-post
title: "Personal OS — Workspace 설계 문서"
date: 2026-06-02
categories: dev
doc: workspace-infrastructure
---
### Today I do
- personal OS 구축 중
- workspace 기반 지식 데이터베이스 설계 및 구현 중
- 로엔 프로젝트 개발 (신앙 노트, 성경 도메인 작업)


### Output
1. personal OS 데스크탑 앱으로 개발 -> 실제 사용 시작
![personal OS 데스크탑 앱 화면](/assets/img/2026-06-02-personal-os.png)

2. Personal OS 프로젝트의 전체 인프라 설계를 정리한 문서.

`~/workspace/` (지식·데이터)와 `~/personal-os/` (앱 코드)를 분리하고,
에이전트 메모리 레이어(mem0), Knowledge System(Obsidian vault), Raspberry Pi 역할까지 포함한 청사진.
