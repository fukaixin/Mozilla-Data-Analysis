create table tabTime SELECT FROM_UNIXTIME(`When`,'%Y-%m-%d') as Date from 2011_mozilla_activity_level2 ;
create table submit_time select time ,COUNT(time) as Submit from tabTime GROUP BY Date;
