int getSuccessor(int i) {
  result = i + 1 and
  i in [1 .. 9]
}

string getStr(string str) {
  str = "123" and result = str or
  str = "456" and result = str 
}

// predicate的别名
// 后面的`/1`啥意思？
predicate succ = getSuccessor/1;
predicate gst = getStr/1;

select succ(_), gst(_)

