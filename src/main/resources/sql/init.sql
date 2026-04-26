SET NAMES utf8mb4;

CREATE TABLE IF NOT EXISTS member (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

INSERT INTO member (name, email) VALUES ('김철수', 'chul@example.com');
INSERT INTO member (name, email) VALUES ('이영희', 'young@example.com');
INSERT INTO member (name, email) VALUES ('박민수', 'min@example.com');
INSERT INTO member (name, email) VALUES ('최지우', 'chul@example.com');
INSERT INTO member (name, email) VALUES ('강건너', 'young@example.com');
INSERT INTO member (name, email) VALUES ('임바다', 'min@example.com');
INSERT INTO member (name, email) VALUES ('오햇살', 'chul@example.com');
INSERT INTO member (name, email) VALUES ('정다정', 'young@example.com');
INSERT INTO member (name, email) VALUES ('윤하늘', 'min@example.com');
INSERT INTO member (name, email) VALUES ('한나무', 'chul@example.com');
INSERT INTO member (name, email) VALUES ('강러너', 'young@example.com');
INSERT INTO member (name, email) VALUES ('박코딩', 'min@example.com');
INSERT INTO member (name, email) VALUES ('최수지', 'chul@example.com');
INSERT INTO member (name, email) VALUES ('유도희', 'young@example.com');
INSERT INTO member (name, email) VALUES ('정은희', 'min@example.com');
