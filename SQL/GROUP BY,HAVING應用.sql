/*全省各站點2022年進站總人數*/
SELECT EXTRACT(YEAR FROM 日期)AS 年,名稱,
SUM(進站人數) AS 總和 
FROM gate_count LEFT JOIN stations ON gate_count.站點編號=stations.編號
WHERE (日期 BETWEEN '2022-01-01' AND '2022-12-31')
GROUP BY EXTRACT(YEAR FROM 日期),名稱
ORDER BY 總和 DESC


/*全省各站點2022年進站總人數大於5佰萬人的站點*/
SELECT EXTRACT(YEAR FROM 日期)AS 年,名稱,
SUM(進站人數) AS 總和 
FROM gate_count LEFT JOIN stations ON gate_count.站點編號=stations.編號
WHERE (日期 BETWEEN '2022-01-01' AND '2022-12-31')
GROUP BY EXTRACT(YEAR FROM 日期),名稱
HAVING SUM(進站人數) > 5000000
ORDER BY 總和 DESC


/*基隆火車站2020年,每月份進站人數*/
/*基隆火車站2020年,每月份進站人數,由多至少*/
/*基隆火車站2020,2021,2022,每年進站人數*/
/*基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/