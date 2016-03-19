package com.google.ads.a;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface g$b
{
  String a();
  
  boolean b() default true;
}

/* Location:
 * Qualified Name:     com.google.ads.a.g.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */