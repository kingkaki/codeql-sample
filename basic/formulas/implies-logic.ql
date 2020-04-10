class SmallInt extends int {
  SmallInt() { this = [1 .. 10] }
}

// A implies B
// (not A) or B
// 这是个啥逻辑，之前也没见过类似的
from SmallInt x
where x % 2 = 0 implies x % 4 = 0
select x