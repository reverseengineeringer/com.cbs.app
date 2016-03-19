package com.google.android.gms.ads.internal.purchase;

import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.fs;

@fs
public final class k
{
  private final String a;
  
  public k(String paramString)
  {
    a = paramString;
  }
  
  public final boolean a(String paramString, Intent paramIntent)
  {
    if ((paramString == null) || (paramIntent == null)) {}
    String str;
    for (;;)
    {
      return false;
      o.o();
      str = i.b(paramIntent);
      o.o();
      if (paramIntent == null) {}
      for (paramIntent = null; (str != null) && (paramIntent != null); paramIntent = paramIntent.getStringExtra("INAPP_DATA_SIGNATURE"))
      {
        o.o();
        if (paramString.equals(i.a(str))) {
          break label72;
        }
        b.a(5);
        return false;
      }
    }
    label72:
    if (a != null)
    {
      paramString = a;
      if ((TextUtils.isEmpty(str)) || (TextUtils.isEmpty(paramString)) || (TextUtils.isEmpty(paramIntent))) {
        b.a("Purchase verification failed: missing data.");
      }
      for (boolean bool = false; !bool; bool = l.a(l.a(paramString), str, paramIntent))
      {
        b.a(5);
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */