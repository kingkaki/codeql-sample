import java

// 查找嵌套复杂大大于5的
from Method m, MetricCallable mc
where
  mc = m.getMetrics() and
  mc.getCyclomaticComplexity() > 5
select m
