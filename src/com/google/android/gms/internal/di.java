package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@fs
public final class di
{
  public static List<String> a(JSONObject paramJSONObject, String paramString)
  {
    paramJSONObject = paramJSONObject.optJSONArray(paramString);
    if (paramJSONObject != null)
    {
      paramString = new ArrayList(paramJSONObject.length());
      int i = 0;
      while (i < paramJSONObject.length())
      {
        paramString.add(paramJSONObject.getString(i));
        i += 1;
      }
      return Collections.unmodifiableList(paramString);
    }
    return null;
  }
  
  public static void a(Context paramContext, String paramString1, gk paramgk, String paramString2, boolean paramBoolean, List<String> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    if (paramBoolean) {}
    for (String str1 = "1";; str1 = "0")
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str2 = ((String)localIterator.next()).replaceAll("@gw_adlocid@", paramString2).replaceAll("@gw_adnetrefresh@", str1).replaceAll("@gw_qdata@", o.f).replaceAll("@gw_sdkver@", paramString1).replaceAll("@gw_sessid@", o.h().a()).replaceAll("@gw_seqnum@", i);
        paramList = str2;
        if (l != null) {
          paramList = str2.replaceAll("@gw_adnetid@", l.b).replaceAll("@gw_allocid@", l.d);
        }
        new hc(paramContext, paramString1, paramList).e();
      }
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */