package com.flurry.sdk;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

public abstract class at
{
  private ah<s> a = new ah() {};
  protected final String c;
  Set<String> d = new HashSet();
  av e;
  protected String f = "defaultDataKey_";
  
  public at(final String paramString1, String paramString2)
  {
    c = paramString2;
    ai.a().a("com.flurry.android.sdk.NetworkStateEvent", a);
    paramString1 = new bt()
    {
      public final void a()
      {
        e = new av(paramString1);
      }
    };
    y.a().b(paramString1);
  }
  
  private boolean a()
  {
    return d.size() <= 5;
  }
  
  protected final void a(a parama)
  {
    parama = new bt()
    {
      public final void a()
      {
        c();
      }
    };
    y.a().b(parama);
  }
  
  protected void a(final String paramString1, final String paramString2, int paramInt)
  {
    paramString1 = new bt()
    {
      public final void a()
      {
        if (!e.a(paramString1, paramString2)) {
          am.a(6, c, "Internal error. Block wasn't deleted with id = " + paramString1);
        }
        if (!d.remove(paramString1)) {
          am.a(6, c, "Internal error. Block with id = " + paramString1 + " was not in progress state");
        }
      }
    };
    y.a().b(paramString1);
  }
  
  protected abstract void a(byte[] paramArrayOfByte, String paramString1, String paramString2);
  
  protected final void b()
  {
    a(null);
  }
  
  public final void b(final byte[] paramArrayOfByte, final String paramString1, final String paramString2)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
    {
      am.a(6, c, "Report that has to be sent is EMPTY or NULL");
      return;
    }
    paramArrayOfByte = new bt()
    {
      public final void a()
      {
        c(paramArrayOfByte, paramString1, paramString2);
      }
    };
    y.a().b(paramArrayOfByte);
    a(null);
  }
  
  protected final void c()
  {
    if (!ab) {
      am.a(5, c, "Reports were not sent! No Internet connection!");
    }
    String str1;
    int i;
    label133:
    String str2;
    do
    {
      return;
      do
      {
        Object localObject1;
        do
        {
          localObject1 = new ArrayList(e.c.keySet());
          if (((List)localObject1).isEmpty())
          {
            am.a(4, c, "No more reports to send.");
            return;
          }
          localObject1 = ((List)localObject1).iterator();
        } while (!((Iterator)localObject1).hasNext());
        str1 = (String)((Iterator)localObject1).next();
      } while (!a());
      List localList = e.a(str1);
      am.a(4, c, "Number of not sent blocks = " + localList.size());
      i = 0;
      if (i >= localList.size()) {
        break label249;
      }
      str2 = (String)localList.get(i);
      if (d.contains(str2)) {
        break;
      }
    } while (!a());
    Object localObject2 = (au)new af(y.a().b().getFileStreamPath(au.a(str2)), ".yflurrydatasenderblock.", new bd()
    {
      public final bb<au> a()
      {
        return new au.a();
      }
    }).a();
    if (localObject2 == null)
    {
      am.a(6, c, "Internal ERROR! Cannot read!");
      e.a(str2, str1);
    }
    for (;;)
    {
      i += 1;
      break label133;
      label249:
      break;
      localObject2 = ((au)localObject2).a();
      if ((localObject2 == null) || (localObject2.length == 0))
      {
        am.a(6, c, "Internal ERROR! Report is empty!");
        e.a(str2, str1);
      }
      else
      {
        am.a(5, c, "Reading block info " + str2);
        d.add(str2);
        a((byte[])localObject2, str2, str1);
      }
    }
  }
  
  protected final void c(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    paramString1 = f + paramString1 + "_" + paramString2;
    paramArrayOfByte = new au(paramArrayOfByte);
    paramString2 = a;
    new af(y.a().b().getFileStreamPath(au.a(paramString2)), ".yflurrydatasenderblock.", new bd()
    {
      public final bb<au> a()
      {
        return new au.a();
      }
    }).a(paramArrayOfByte);
    am.a(5, c, "Saving Block File " + paramString2 + " at " + y.a().b().getFileStreamPath(au.a(paramString2)));
    e.a(paramArrayOfByte, paramString1);
  }
  
  public static abstract interface a {}
}

/* Location:
 * Qualified Name:     com.flurry.sdk.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */