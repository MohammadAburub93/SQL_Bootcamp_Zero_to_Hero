--Q1
SELECT facid, name, membercost, monthlymaintenance
 FROM cd.facilities
 WHERE membercost > 0 AND
 (membercost < monthlymaintenance/50)


--Q2
SELECT facid, SUM(slots) AS "Total Slots" FROM cd.bookings
WHERE EXTRACT(MONTH, starttime) = 9
GROUP BY facid
ORDER BY SUM(slots)

--Q3
SELECT facid, SUM(slots) AS total_slots FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY SUM(slots) DESC
LIMIT 5

--Q4
SELECT starttime,name FROM cd.bookings
INNER JOIN cd.facilities
ON cd.bookings.facid = cd.facilities.facid
WHERE starttime BETWEEN '2012-09-21' AND '2012-09-22'
AND name LIKE '%Tennis Court%'
ORDER BY starttime

--Q5
SELECT starttime FROM cd.bookings
INNER JOIN cd.members
ON cd.bookings.memid = cd.members.memid
WHERE firstname = 'David' AND surname = 'Farrell'
ORDER BY starttime