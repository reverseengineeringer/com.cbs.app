package com.google.android.gms.internal;

import com.google.ads.a.a;
import com.google.ads.a.c;
import com.google.ads.b;
import com.google.android.gms.ads.f;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import java.util.Date;
import java.util.HashSet;

@fs
public final class ea
{
  public static c a(AdRequestParcel paramAdRequestParcel)
  {
    HashSet localHashSet;
    Date localDate;
    a.a locala;
    if (e != null)
    {
      localHashSet = new HashSet(e);
      localDate = new Date(b);
      switch (d)
      {
      default: 
        locala = a.a.a;
      }
    }
    for (;;)
    {
      return new c(localDate, locala, localHashSet, f, k);
      localHashSet = null;
      break;
      locala = a.a.c;
      continue;
      locala = a.a.b;
    }
  }
  
  public static b a(AdSizeParcel paramAdSizeParcel)
  {
    int i = 0;
    b[] arrayOfb = new b[6];
    arrayOfb[0] = b.a;
    arrayOfb[1] = b.b;
    arrayOfb[2] = b.c;
    arrayOfb[3] = b.d;
    arrayOfb[4] = b.e;
    arrayOfb[5] = b.f;
    while (i < 6)
    {
      if ((arrayOfb[i].a() == f) && (arrayOfb[i].b() == c)) {
        return arrayOfb[i];
      }
      i += 1;
    }
    return new b(f.a(f, c, b));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */