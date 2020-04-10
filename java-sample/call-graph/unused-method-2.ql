import java

// 寻找所有未被调用的方法，并满足如下条件
// 非 clinit、 非 finalize、 非 public 、 非
from Callable callee
where
  not exists(Callable caller | caller.polyCalls(callee)) and
  callee.getCompilationUnit().fromSource() and
  not callee.hasName("<clinit>") and
  not callee.hasName("finalize") and 
  not callee.isPublic() and 
  not callee.(Constructor).getNumberOfParameters() = 0 and 
  not callee.getDeclaringType() instanceof TestClass
select callee, callee.getLocation()
