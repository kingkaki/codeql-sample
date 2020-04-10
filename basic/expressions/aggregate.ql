// 各种乱七八糟的聚合表达式
select min(string s | s = "Tarski" or s = "Dedekind" or s = "De Morgan" | s),
  max(string s | s = "Tarski" or s = "Dedekind" or s = "De Morgan" | s.length()),
  count(int i | i in [2 .. 8] | i), avg(int i | i = [2 .. 8] | i),
  sum(int i, int j | i = [2 .. 5] and j = [3 .. 6] | i * j),
  concat(int i | i = [1 .. 3] | i.toString() order by i desc),
  concat(int i | i = [1 .. 3] | i.toString(), "|"),
  rank[3](int i | i = [5 .. 15] | i order by i desc),
  count(string s | s = "hello" | s.charAt(_))
