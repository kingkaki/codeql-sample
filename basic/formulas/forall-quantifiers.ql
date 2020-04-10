import common

// 全都满足，多个条件 and
where forall(OneTwoThree ott | ott < 5 | ott > 0)
select "all match."
