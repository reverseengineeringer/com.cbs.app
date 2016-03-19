package com.google.ads.a;

import com.google.android.gms.ads.internal.util.client.b;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@Deprecated
public abstract class g
{
  public final void a(Map<String, String> paramMap)
  {
    Object localObject1 = new HashMap();
    Object localObject2 = getClass().getFields();
    int j = localObject2.length;
    int i = 0;
    Object localObject3;
    while (i < j)
    {
      localObject3 = localObject2[i];
      b localb = (b)((Field)localObject3).getAnnotation(b.class);
      if (localb != null) {
        ((Map)localObject1).put(localb.a(), localObject3);
      }
      i += 1;
    }
    if (((Map)localObject1).isEmpty()) {
      b.a(5);
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      localObject2 = (Map.Entry)paramMap.next();
      localObject3 = (Field)((Map)localObject1).remove(((Map.Entry)localObject2).getKey());
      if (localObject3 != null)
      {
        try
        {
          ((Field)localObject3).set(this, ((Map.Entry)localObject2).getValue());
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          new StringBuilder("Server option \"").append((String)((Map.Entry)localObject2).getKey()).append("\" could not be set: Illegal Access");
          b.a(5);
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          new StringBuilder("Server option \"").append((String)((Map.Entry)localObject2).getKey()).append("\" could not be set: Bad Type");
          b.a(5);
        }
      }
      else
      {
        new StringBuilder("Unexpected server option: ").append((String)((Map.Entry)localObject2).getKey()).append(" = \"").append((String)((Map.Entry)localObject2).getValue()).append("\"");
        b.a(3);
      }
    }
    paramMap = new StringBuilder();
    localObject1 = ((Map)localObject1).values().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Field)((Iterator)localObject1).next();
      if (((b)((Field)localObject2).getAnnotation(b.class)).b())
      {
        new StringBuilder("Required server option missing: ").append(((b)((Field)localObject2).getAnnotation(b.class)).a());
        b.a(5);
        if (paramMap.length() > 0) {
          paramMap.append(", ");
        }
        paramMap.append(((b)((Field)localObject2).getAnnotation(b.class)).a());
      }
    }
    if (paramMap.length() > 0) {
      throw new a("Required server option(s) missing: " + paramMap.toString());
    }
  }
  
  public static final class a
    extends Exception
  {
    public a(String paramString)
    {
      super();
    }
  }
  
  @Retention(RetentionPolicy.RUNTIME)
  @Target({java.lang.annotation.ElementType.FIELD})
  protected static @interface b
  {
    String a();
    
    boolean b() default true;
  }
}

/* Location:
 * Qualified Name:     com.google.ads.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */