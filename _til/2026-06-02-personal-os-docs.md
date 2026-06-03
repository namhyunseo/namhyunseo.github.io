---
title: "Personal OS 문서 구조 정리"
date: 2026-06-02
tags: [personal-os, workspace, architecture]
---

## personal-os/docs/

Personal OS 워크스페이스 설계와 인프라, 에이전트 상호작용 흐름, 데스크탑 전환 전략을 정리하는 문서 폴더.

---

## 1. workspace-folder-structure.html

`~/workspace/` 폴더 구조 설계 문서.

- raw/ 폴더의 역할
- knowledge/ 폴더의 역할
- data/ 폴더의 역할
- 각 폴더 간 경계 규칙
- 어떤 정보가 어디에 저장되어야 하는지에 대한 기준

## 2. workspace-infrastructure.html

Personal OS 전체 인프라 청사진 문서.

- Personal OS 앱 / Knowledge System / mem0 / Raspberry Pi / Pi + Qdrant 구성
- 각 레이어별 역할 분담
- 앱, 지식 시스템, 메모리 시스템, 로컬 서버 간 연결 구조

## 3. workspace-interaction-pipeline.html

에이전트와의 상호작용 흐름을 정리한 문서.

- 사용자 입력 분류
- 입력 유형별 실행 흐름
- 결과를 task, knowledge, memory 중 어디로 보낼지 판단하는 파이프라인

## 4. main-workspace-control-plane.html

워크스페이스 전체 컨트롤 플레인 개요 문서. 위 3개 문서를 연결하는 상위 설계도.

## 5. tauri-migration-concepts.html

Next.js 기반 Personal OS 앱을 Tauri 데스크탑 앱으로 전환하기 위한 개념 정리 문서.

- Next.js → Tauri 전환 개념 / PGlite 도입 전략 / Dual-mode 아키텍처 / 정적 빌드 전략

---

### 역할 구분

| 문서 | 역할 |
|---|---|
| main-workspace-control-plane.html | 전체 구조를 연결하는 상위 인덱스 |
| workspace-folder-structure.html | 로컬 워크스페이스 폴더 구조 설계 |
| workspace-infrastructure.html | Personal OS 전체 인프라 레이어 설계 |
| workspace-interaction-pipeline.html | 에이전트 입력/실행/저장 흐름 설계 |
| tauri-migration-concepts.html | Tauri 데스크탑 전환 전략 정리 |
