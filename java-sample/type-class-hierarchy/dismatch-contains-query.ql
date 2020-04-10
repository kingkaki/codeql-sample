import java

class JavaUtilCollection extends GenericInterface {
  JavaUtilCollection() { this.hasQualifiedName("java.util", "Collection") }
}

class JavaUtilCollectionContains extends Method {
  JavaUtilCollectionContains() {
    this.getDeclaringType() instanceof JavaUtilCollection and
    this.hasStringSignature("contains(Object)")
  }
}

class JavaUtilCollectionContainsCall extends MethodAccess {
  JavaUtilCollectionContainsCall() {
    exists(JavaUtilCollectionContains jucc |
      this.getMethod().getSourceDeclaration().overrides*(jucc)
    )
  }

  Type getArgumentType() { result = this.getArgument(0).getType() }

  Type getCollectionElementType() {
    exists(RefType D, ParameterizedInterface S |
      D = this.getMethod().getDeclaringType() and
      D.hasSupertype*(S) and
      S.getSourceDeclaration() instanceof JavaUtilCollection and
      result = S.getTypeArgument(0)
    )
  }
}

predicate haveCommonDescendant(RefType tp1, RefType tp2) {
  exists(RefType commondesc | commondesc.hasSupertype*(tp1) and commondesc.hasSupertype*(tp2))
}

from JavaUtilCollectionContainsCall juccc, Type collEltType, Type argType
where
  collEltType = juccc.getCollectionElementType() and
  argType = juccc.getArgumentType() and
  not haveCommonDescendant(collEltType, argType)
select juccc, "Element type " + collEltType + " is incompatible with argument type " + argType
