SELECT
    s.submission_date,
    COUNT(DISTINCT s.hacker_id),
    h1.hacker_id,
    h.name
FROM Submissions s

JOIN (
    SELECT
        submission_date,
        hacker_id
    FROM (
        SELECT
            submission_date,
            hacker_id,
            COUNT(*) AS total_submissions,
            RANK() OVER (
                PARTITION BY submission_date
                ORDER BY COUNT(*) DESC, hacker_id ASC
            ) AS rnk
        FROM Submissions
        GROUP BY submission_date, hacker_id
    ) ranked
    WHERE rnk = 1
) h1
ON s.submission_date = h1.submission_date

JOIN Hackers h
ON h1.hacker_id = h.hacker_id

WHERE (
    SELECT COUNT(DISTINCT s2.submission_date)
    FROM Submissions s2
    WHERE s2.hacker_id = s.hacker_id
    AND s2.submission_date <= s.submission_date
) = DATEDIFF(s.submission_date, '2016-03-01') + 1

GROUP BY
    s.submission_date,
    h1.hacker_id,
    h.name

ORDER BY s.submission_date;