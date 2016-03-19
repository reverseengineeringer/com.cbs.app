package com.a.a.a;

import android.content.Context;
import com.google.android.gms.ads.a.a.a;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import java.io.IOException;

public final class f
  extends e
{
  private f(Context paramContext, i parami, j paramj)
  {
    super(paramContext, parami, paramj);
  }
  
  public static f a(String paramString, Context paramContext)
  {
    a locala = new a();
    a(paramString, paramContext, locala);
    return new f(paramContext, locala, new l());
  }
  
  private a d(Context paramContext)
  {
    int i = 0;
    a.a locala;
    try
    {
      locala = com.google.android.gms.ads.a.a.a(paramContext);
      paramContext = locala.a();
      if ((paramContext != null) && (paramContext.matches("^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$")))
      {
        byte[] arrayOfByte = new byte[16];
        int j = 0;
        while (i < paramContext.length())
        {
          int k;
          if ((i != 8) && (i != 13) && (i != 18))
          {
            k = i;
            if (i != 23) {}
          }
          else
          {
            k = i + 1;
          }
          arrayOfByte[j] = ((byte)((Character.digit(paramContext.charAt(k), 16) << 4) + Character.digit(paramContext.charAt(k + 1), 16)));
          j += 1;
          i = k + 2;
        }
        paramContext = c.a(arrayOfByte);
      }
    }
    catch (d paramContext)
    {
      throw new IOException(paramContext);
    }
    catch (SecurityException paramContext)
    {
      throw new IOException(paramContext);
    }
    for (;;)
    {
      return new a(paramContext, locala.b());
    }
  }
  
  protected final void b(Context paramContext)
  {
    super.b(paramContext);
    try
    {
      Object localObject = d(paramContext);
      if (((a)localObject).b()) {}
      for (long l = 1L;; l = 0L)
      {
        a(28, l);
        localObject = ((a)localObject).a();
        if (localObject != null)
        {
          a(26, 5L);
          a(24, (String)localObject);
        }
        return;
      }
      return;
    }
    catch (c localc)
    {
      a(24, c(paramContext));
      return;
    }
    catch (IOException paramContext)
    {
      return;
    }
    catch (e.a paramContext) {}
  }
  
  final class a
  {
    private String b;
    private boolean c;
    
    public a(String paramString, boolean paramBoolean)
    {
      b = paramString;
      c = paramBoolean;
    }
    
    public final String a()
    {
      return b;
    }
    
    public final boolean b()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */