class Four2Ten extends int {
  Four2Ten() { this = [4 .. 10] }
}

class One2Seven extends int {
  One2Seven() { this = [1 .. 7] }
}

class MultiExtendsClass extends Four2Ten, One2Seven { }

// 可以看到多继承显示为一个交集的状态
from MultiExtendsClass mec
select mec