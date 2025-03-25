-- Soru(a)
SELECT firstname,lastname,salary FROM employees;



-- Soru(b)
SELECT DISTINCT departmentid FROM employees;



-- Soru(c)
-- Çözüm - 1
SELECT * FROM employees WHERE departmentid = 1;
-- Çözüm - 2
SELECT * FROM employees As emp 
	INNER JOIN departments dpr 
	ON emp.departmentid = dpr.departmentid 
	WHERE dpr.departmentname ='IT';



-- Soru(d)
SELECT * FROM employees ORDER BY salary DESC;


-- Soru(e)
-- Çözüm - 1
SELECT firstname || ' ' || lastname AS name FROM employees;
-- Çözüm - 2
SELECT CONCAT(firstname ,' ', lastname) AS name FROM employees;