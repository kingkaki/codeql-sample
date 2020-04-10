import java

// 选出所有未被调用的函数
// 并且是存在于源码（codeql数据库）中的调用
// 这样就能排除一些java的基础类库
from Callable callee
where not exists(Callable caller | caller.polyCalls(callee)) and
    callee.getCompilationUnit().fromSource()
select callee, callee.getLocation()