# FROM openjdk:17-jdk-slim
FROM amazoncorretto:17-alpine-jdk
# Gradle 빌드 경로인 build/libs/*.jar 파일을 복사합니다.
# plain.jar 파일이 같이 생성될 수 있으므로 정확히 실행 가능한 jar만 가져오도록 지정
ARG JAR_FILE=build/libs/*-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]

# docker로 빌드만 하면 한꺼번에 실행이 되어있어야 한다! 