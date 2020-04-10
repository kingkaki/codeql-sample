query int getProduct(int x, int y) {
  x = 3 and
  y in [0 .. 2] and
  result = x * y
}

// query类型的predicate语句
// 传入`_`表示返回所有符合条件的情况
select getProduct(_, _)
