// 没啥好说的基础操作
// 类似SQL可以用as取一个别名
from int x, int y
where x = 3 and y in [0 .. 2]
select x, y, x * y as product, "product: " + product
