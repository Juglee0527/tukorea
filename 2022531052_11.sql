-- 1. 트리거 테스트 테이블 생성
CREATE TABLE deleteTable ( -- 삭제할 테이블
    id char(10),
    passward char(20),
    desc char(128)
);
CREATE TABLE backupTable ( -- 백업받는 테이블
    id char(10),
    passward char(20),
    desc char(128)
);

-- 2. 트리거 생성
DELIMITER //
CREATE TRIGGER backupTrigger
        AFTER DELETE 
        ON deleteTable
        FOR EACH ROW	
BEGIN
    INSERT INTO backupTable VALUES (OLD.id, OLD.passward, OLD.desc);
END
// DELIMITER ;

-- 3. 테스트 시작 & 확인
DELETE FROM deleteTable;
SELECT * FROM backupTable;