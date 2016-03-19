package com.google.android.gms.plus;

import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a.a.c;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.ks;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.ku;
import com.google.android.gms.internal.kv;
import com.google.android.gms.internal.kw;
import java.util.HashSet;
import java.util.Set;

public final class d
{
  public static final a.d<com.google.android.gms.plus.internal.d> a = new a.d();
  static final a.b<com.google.android.gms.plus.internal.d, a> b = new d.1();
  public static final com.google.android.gms.common.api.a<a> c = new com.google.android.gms.common.api.a("Plus.API", b, a);
  public static final Scope d = new Scope("https://www.googleapis.com/auth/plus.login");
  public static final Scope e = new Scope("https://www.googleapis.com/auth/plus.me");
  public static final b f = new kv();
  public static final c g = new kw();
  public static final a h = new ks();
  public static final f i = new ku();
  public static final e j = new kt();
  
  public static com.google.android.gms.plus.internal.d a(com.google.android.gms.common.api.b paramb)
  {
    if (paramb != null) {}
    for (boolean bool = true;; bool = false)
    {
      z.b(bool, "GoogleApiClient parameter is required.");
      z.a(paramb.e(), "GoogleApiClient must be connected.");
      z.a(paramb.a(c), "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
      bool = paramb.b(c);
      if (bool) {
        break;
      }
      throw new IllegalStateException("GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call.");
    }
    if (bool) {
      return (com.google.android.gms.plus.internal.d)paramb.a(a);
    }
    return null;
  }
  
  public static final class a
    implements a.a.c
  {
    final String a;
    final Set<String> b;
    
    private a()
    {
      a = null;
      b = new HashSet();
    }
    
    private a(a parama)
    {
      a = a;
      b = b;
    }
    
    public static final class a
    {
      String a;
      final Set<String> b = new HashSet();
      
      public final d.a a()
      {
        return new d.a(this, (byte)0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */