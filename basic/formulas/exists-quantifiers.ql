import common

// 多个条件and关系，同时存在
where exists(int i | i instanceof OneTwoThree | i = 1)
select "exists i instanceof OneTwoThree."
