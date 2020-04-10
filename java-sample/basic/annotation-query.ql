import java

from Constructor c, Annotation ann, AnnotationType anntp
where ann = c.getAnAnnotation() and
    anntp = ann.getType() and 
    anntp.hasQualifiedName("java.lang", "Deprecated")
select ann, ann.getLocation()