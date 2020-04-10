module Example {
  class OneTwoThree extends int {
    OneTwoThree() { this = 1 or this = 2 or this = 3 }
  }
}

// 注意最后的分号
module AliasName = Example;

// moudule alias
from Example::OneTwoThree ott
select ott
