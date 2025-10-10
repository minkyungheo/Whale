# Docker CI/CD 배포 자동화 프로젝트

이 프로젝트는 **GitHub, GitHub Actions, Docker Hub 및 운영 서버**를 연동하여  
개발·운영 환경에서 **자동화된 Docker 이미지 배포 플로우**를 제공합니다.  

개발자가 코드를 GitHub에 푸시하면:
1. GitHub Actions가 자동으로 Docker 이미지를 빌드하고 Docker Hub에 업로드합니다.  
2. 운영 서버는 Docker Hub에서 이미지를 pull 받아 서비스에 반영합니다.  

---

## 아키텍처 개요
- **DEV 환경** → GitHub에 코드 푸시  
- **GitHub Actions** → Docker 이미지 자동 빌드 및 Docker Hub 업로드  
- **운영 서버 (Docker Op)** → Docker Hub에서 이미지 pull 및 서비스 배포  
- **확장 가능**: MySQL, Docker Watch 등 다양한 컨테이너 연동 가능  

---

## 주요 기능
- **CI/CD 자동화**: GitHub Actions를 통한 이미지 빌드 및 배포 자동화  
- **Docker Hub 기반 중앙 관리**: 이미지 버전 관리 및 팀 협업 최적화  
- **실시간 배포 & 롤백**: 최신/특정 버전 이미지로 신속 교체 가능  
- **운영 환경 모듈화**: Docker Watch, MySQL 등 서비스와 유연한 연동  

---

##  사용법
1. 개발자가 코드를 **GitHub에 Push**합니다.  
2. **GitHub Actions**가 실행되어 이미지를 빌드 후 **Docker Hub에 Push**합니다.  
3. 운영 서버(Docker Op)가 **Docker Hub에서 이미지를 pull** 받아 컨테이너 실행합니다.  

---

##  기술 스택
- **GitHub / GitHub Actions**  
- **Docker / Docker Hub**  
- **MySQL (운영 환경)**  
- **기타 모듈**: Docker Watch 등  

---

## 추후 확장 및 관리
- 조직/팀 단위 **Docker Hub 권한 설정**  
- 환경별 **이미지 태깅 및 저장소 분리**  
- 추가 서비스 모듈 및 **자동화 스크립트 연계**  

---

##  라이선스
본 프로젝트는 **MIT License**를 따릅니다.  
필요 시, 상세 설정(`.github/workflows`, `Dockerfile` 등)은 각 디렉토리 내 설명을 참고하세요.  
