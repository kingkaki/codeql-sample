private newtype TTaintType =
  TExactValue()
  or
  TTaintedValue()

class TaintType extends TTaintType {
  string toString() {
    this = TExactValue() and result = "exact"
    or
    this = TTaintedValue() and result = "tainted"
  }
}

/** A taint type where the data is untainted. */
class Untainted extends TaintType, TExactValue {
}

/** A taint type where the data is tainted. */
class Tainted extends TaintType, TTaintedValue {
}

// 不大懂干啥用的，先留个印象
from TaintType tt
select tt