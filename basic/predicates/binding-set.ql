/*
如果可以保证筛选时可以通过where条件筛选出有限集合
则可以用bindingset[var]的方式来声明
*/

bindingset[i]
int multiplyBy4(int i) {
    result = i * 4
}

from int i
where i in [2..10]
select multiplyBy4(i)