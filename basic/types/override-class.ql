class OneTwoThree extends int {
  OneTwoThree() {
    // characteristic predicate
    this = 1 or this = 2 or this = 3
  }

  string getAString() {
    // member predicate
    result = "One, two or three: " + this.toString()
  }

  predicate isEven() {
    // member predicate
    this = 2
  }
}

class OneTwo extends OneTwoThree {
  OneTwo() { this = 1 or this = 2 }

  override string getAString() { result = "One or two: " + this.toString() }
}

class TwoThree extends OneTwoThree {
  TwoThree() { this = 2 or this = 3 }

  override string getAString() { result = "Two or three: " + this.toString() }
}

// 可以看到2被输出了两次，并且以不同的输出方式
// 由于2同时属于`OneTwo`和`TwoThree`
// 所以加载时会调用最终实现类的方法
from OneTwoThree ott
select  ott, ott.getAString()
