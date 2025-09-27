# Gradle + JDK 17 이미지 사용
FROM gradle:8.3-jdk17 AS build

# 프로젝트 전체 복사 (build.gradle, settings.gradle, src/)
COPY --chown=gradle:gradle . /home/gradle/project
WORKDIR /home/gradle/project

# 컨테이너 안에서 Gradle 빌드
RUN gradle clean build --no-daemon

# 실행용 단계 (가벼운 이미지)
FROM openjdk:17
WORKDIR /app

# 빌드 결과 JAR 복사
COPY --from=build /home/gradle/project/build/libs/*.jar app.jar

# 실행 명령어
ENTRYPOINT ["java", "-jar", "app.jar"]


# # Dockerfile

# # JDK 17 기반 이미지 사용
# FROM openjdk:17

# # 빌드할 때 전달할 JAR 파일 경로 지정
# ARG JAR_FILE=./build/libs/demo-0.0.1-SNAPSHOT.jar

# # JAR 파일 컨테이너로 복사
# COPY ${JAR_FILE} app.jar

# # 컨테이너 시작 시 JAR 실행
# ENTRYPOINT ["java", "-jar", "app.jar"]
