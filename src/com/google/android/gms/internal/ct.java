package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.api.d;

@fs
public abstract class ct
  implements d
{
  protected hs a;
  
  public ct(hs paramhs)
  {
    a = paramhs;
  }
  
  public abstract void a();
  
  protected final void a(String paramString1, String paramString2, int paramInt)
  {
    a.a.post(new ct.2(this, paramString1, paramString2, paramInt));
  }
  
  protected final void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    a.a.post(new ct.3(this, paramString1, paramString2, paramString3, paramString4));
  }
  
  public abstract boolean a(String paramString);
  
  public final void b() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */