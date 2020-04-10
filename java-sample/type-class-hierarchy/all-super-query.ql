import java

from Class clz
where clz.hasName("E")
select clz, clz.getASupertype+()
// 贼nb的一个功能
// clz.getASupertype() 定义中显示所有的的父类
// clz.getASupertype+() 除了自身以外所有**递归**的父类
// clz.getASupertype*() 包括自身的所有**递归**的父类