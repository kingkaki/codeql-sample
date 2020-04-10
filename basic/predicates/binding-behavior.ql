/*
不允许predicate中未绑定的行为出现
否则注释中的语句会限制无限个集合
*/


// int errorMultiplyBy4(int i) {
//   result = i * 4
// }
int multiplyBy4(int i) {
    i in [2..10] and  result = i * 4
}

from int i
select multiplyBy4(i)
