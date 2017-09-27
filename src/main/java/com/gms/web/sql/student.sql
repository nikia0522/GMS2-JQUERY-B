create view student(
id, password, name, 
ssn, phone, email,
title, regdate)
as
 (
SELECT 
    a.member_id id,
    a.password password,
    a.name name, 
    RPAD(SUBSTRING(a.ssn,1,8),14, '*') ssn, 
    a.phone phone, 
    a.email email, 
    GROUP_CONCAT(s.title, ',') title, 
    DATE_FORMAT(a.regdate,'%Y-%m-%d') regdate 
    FROM member a
        LEFT JOIN major m ON a.member_id LIKE m.member_id
        LEFT JOIN subject s ON m.subj_id LIKE s.subj_id
    GROUP BY a.member_id, a.name, a.ssn, a.phone, a.email, a.regdate
    ORDER BY regdate
    ) 
order by regdate desc;

drop view student;

select * from subject;
select * 
from
	member a
	left join major m 
		on a.member_id like m.member_id
	left join subject s 
		on m.subj_id like s.subj_id
	group by 
		a member_id, a.name, a.ssn, 
		a.regdate, a.phone, a.email
	order by regdate
;