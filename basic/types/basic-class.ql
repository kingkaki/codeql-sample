// QL中的类不会“创建”新对象，而只是表示逻辑属性。
// 如果值满足该逻辑属性，则该值属于特定类。
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


// 1.(OneTwoThree) 可以理解为强制类型转换
from OneTwoThree ott
select ott, ott.getAString(), 1.(OneTwoThree).getAString(),
  1.(OneTwoThree).getAString().toUpperCase()
