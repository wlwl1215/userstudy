# 🚀 User Study Project

스프링 부트와 도커를 활용한 간단한 회원 관리 시스템입니다.

## 🛠️ 기술 스택
- **Backend:** Java 17, Spring Boot 3.x, Spring Data JPA
- **Database:** MySQL 8.0
- **Infrastructure:** Docker, Docker Compose

## 🏃 실행 방법
1. 프로젝트 빌드: `.\gradlew clean build -x test`
2. 컨테이너 실행: `docker-compose up --build`

## 🔗 주요 API 주소
| 기능 | 방식 | 주소 | 설명 |
| :--- | :--- | :--- | :--- |
| 회원 목록 조회 | GET | `http://localhost:8080/api/members` | 등록된 모든 회원 정보를 반환합니다. |