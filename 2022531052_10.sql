-- 사용자 정의 함수 작성
CREATE FUNCTION `ID_CHECK`(
    NAME VARCHAR(10)
    , AGE INTEGER
) RETURNS varchar(15)
BEGIN
    DECLARE AGE_VALUE VARCHAR(20);
    DECLARE NAME_VALUE VARCHAR(20);
    DECLARE RETURN_VALUE VARCHAR(20);
    
    SELECT CONCAT(NAME, '님은 ') 
      INTO NAME_VALUE;
    
    IF(AGE > 19) THEN
    	SET AGE_VALUE = '성인';
    ELSE
    	SET AGE_VALUE = '미성년자';
    END IF;

    RETURN CONCAT(NAME_VALUE, AGE_VALUE);
END

-- 실행
SELECT ID_CHECK("김철수", 20);