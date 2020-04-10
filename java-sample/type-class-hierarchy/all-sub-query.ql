import java

from Interface inf
where inf.hasName("A")
select inf, inf.getASubtype+()
// 和all-super-query类似
// `+` 不包含自身的递归子类
// `*` 包含自自身的递归子类