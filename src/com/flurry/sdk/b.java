package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Map;

public class b
{
  private static final String b = b.class.getSimpleName();
  boolean a;
  private final c c = new c();
  private final File d;
  private String e;
  
  public b()
  {
    this(y.a().b());
  }
  
  public b(Context paramContext)
  {
    d = paramContext.getFileStreamPath(".flurryinstallreceiver.");
    am.a(3, b, "Referrer file name if it exists:  " + d);
  }
  
  private void b(String paramString)
  {
    if (paramString == null) {
      return;
    }
    e = paramString;
  }
  
  public final Map<String, List<String>> a()
  {
    try
    {
      if (!a)
      {
        a = true;
        am.a(4, b, "Loading referrer info from file: " + d.getAbsolutePath());
        localObject1 = br.b(d);
        am.a(b, "Referrer file contents: " + (String)localObject1);
        b((String)localObject1);
      }
      Object localObject1 = c.a(e);
      return (Map<String, List<String>>)localObject1;
    }
    finally {}
  }
  
  public final void a(String paramString)
  {
    try
    {
      a = true;
      b(paramString);
      br.a(d, e);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */