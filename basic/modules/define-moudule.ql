module Example {
  class OneTwoThree extends int {
    OneTwoThree() { this = 1 or this = 2 or this = 3 }
  }
}

// 文件内模块定义
from Example::OneTwoThree ott
where ott = 1 or ott = 2
select ott
