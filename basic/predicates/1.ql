int isSmall(int i) {
  result = i + 1 and
  i in [1 .. 9]
}

// 普通查询
select isSmall(5), isSmall(8)