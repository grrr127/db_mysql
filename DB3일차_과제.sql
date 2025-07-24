USE test;

-- SET SQL_SAFE_UPDATES = 0;

-- 모든 직원의 이름과 연봉 정보만을 조회하는 쿼리를 작성해주세요
SELECT name, salary FROM employees;

-- 1. Frontend 직책을 가진 직원 중에서 연봉이 90000 이하인 직원의 이름과 연봉을 조회하세요
SELECT name, salary FROM employees WHERE position = 'Frontend' AND salary <= 90000

-- 2. PM 직책을 가진 모든 직원의 연봉을 10% 인상한 후 그 결과를 확인하세요
UPDATE employees
SET salary = salary * 1.1
WHERE position = 'PM';
SELECT * FROM employees;

-- 3. 모든 Backend 직책을 가진 직원의 연봉을 5% 인상하세요
UPDATE employees
SET salary = salary * 1.05
WHERE position = 'Backend';

-- 4. 민혁 사원의 데이터를 삭제하세요
DELETE FROM employees WHERE name = '민혁';

-- 5. 모든 직원을 position 별로 그룸화하여 각 직책의 평균 연봉을 계산하세요
SELECT position, AVG(salary) as avg_salary
FROM employees
GROUP BY position
ORDER BY avg_salary DESC;

-- 6. employees 테이블을 삭제하세요
DROP TABLE employees;


-- SELECT * FROM employees;