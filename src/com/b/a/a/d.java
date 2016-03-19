package com.b.a.a;

import android.net.Uri.Builder;
import com.c.a.a.e;
import com.c.a.a.f;

public final class d
{
  public static void a(String paramString1, String paramString2, String paramString3, String paramString4, e parame)
  {
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.appendQueryParameter("lftoken", paramString4);
    paramString1 = new StringBuilder(a.a).append(a.d).append(".").append(a.a(paramString1)).append("/api/v3.0/message/").append(paramString3).append("/").append("like").append(localBuilder.toString());
    c.a.a(paramString1.toString(), new f("collection_id", paramString2), parame);
  }
}

/* Location:
 * Qualified Name:     com.b.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */