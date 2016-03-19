package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@fs
public final class dd
{
  public final List<dc> a;
  public final long b;
  public final List<String> c;
  public final List<String> d;
  public final List<String> e;
  public final String f;
  public final long g;
  public final String h;
  public final int i;
  public int j;
  public int k;
  
  public dd(String paramString)
  {
    paramString = new JSONObject(paramString);
    if (b.a(2))
    {
      new StringBuilder("Mediation Response JSON: ").append(paramString.toString(2));
      b.a(2);
    }
    JSONArray localJSONArray = paramString.getJSONArray("ad_networks");
    ArrayList localArrayList = new ArrayList(localJSONArray.length());
    int n = -1;
    int m = 0;
    while (m < localJSONArray.length())
    {
      dc localdc = new dc(localJSONArray.getJSONObject(m));
      localArrayList.add(localdc);
      int i1 = n;
      if (n < 0)
      {
        i1 = n;
        if (a(localdc)) {
          i1 = m;
        }
      }
      m += 1;
      n = i1;
    }
    j = n;
    k = localJSONArray.length();
    a = Collections.unmodifiableList(localArrayList);
    f = paramString.getString("qdata");
    paramString = paramString.optJSONObject("settings");
    if (paramString != null)
    {
      b = paramString.optLong("ad_network_timeout_millis", -1L);
      o.q();
      c = di.a(paramString, "click_urls");
      o.q();
      d = di.a(paramString, "imp_urls");
      o.q();
      e = di.a(paramString, "nofill_urls");
      long l = paramString.optLong("refresh", -1L);
      if (l > 0L) {}
      for (l *= 1000L;; l = -1L)
      {
        g = l;
        paramString = paramString.optJSONArray("rewards");
        if ((paramString != null) && (paramString.length() != 0)) {
          break;
        }
        h = null;
        i = 0;
        return;
      }
      h = paramString.getJSONObject(0).optString("rb_type");
      i = paramString.getJSONObject(0).optInt("rb_amount");
      return;
    }
    b = -1L;
    c = null;
    d = null;
    e = null;
    g = -1L;
    h = null;
    i = 0;
  }
  
  private static boolean a(dc paramdc)
  {
    paramdc = c.iterator();
    while (paramdc.hasNext()) {
      if (((String)paramdc.next()).equals("com.google.ads.mediation.admob.AdMobAdapter")) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */