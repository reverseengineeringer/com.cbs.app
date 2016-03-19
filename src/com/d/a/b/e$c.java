package com.d.a.b;

import com.d.a.b.a.c;
import com.d.a.b.d.b;
import java.io.InputStream;

final class e$c
  implements b
{
  private final b a;
  
  public e$c(b paramb)
  {
    a = paramb;
  }
  
  public final InputStream a(String paramString, Object paramObject)
  {
    paramObject = a.a(paramString, paramObject);
    switch (e.1.a[com.d.a.b.d.b.a.a(paramString).ordinal()])
    {
    default: 
      return (InputStream)paramObject;
    }
    return new c((InputStream)paramObject);
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.e.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */