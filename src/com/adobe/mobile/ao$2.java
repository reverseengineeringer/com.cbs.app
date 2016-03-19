package com.adobe.mobile;

import android.content.SharedPreferences.Editor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

final class ao$2
  implements Runnable
{
  ao$2(ao paramao, HashMap paramHashMap) {}
  
  public final void run()
  {
    if (!af.a().s()) {
      return;
    }
    Object localObject2 = af.a().r();
    int i;
    label42:
    int j;
    if (am.p() - ao.a(b) > ao.b(b))
    {
      i = 1;
      if (a == null) {
        break label345;
      }
      j = 1;
      label51:
      if ((ao.c(b) != null) && (j == 0) && (i == 0)) {
        break label348;
      }
      if (!af.a().h()) {
        break label350;
      }
    }
    label345:
    label348:
    label350:
    for (Object localObject1 = "https";; localObject1 = "http")
    {
      localObject1 = new StringBuilder((String)localObject1);
      ((StringBuilder)localObject1).append("://");
      ((StringBuilder)localObject1).append("dpm.demdex.net");
      ((StringBuilder)localObject1).append("/id?d_ver=2&d_orgid=");
      ((StringBuilder)localObject1).append((String)localObject2);
      if (ao.c(b) != null)
      {
        ((StringBuilder)localObject1).append("&");
        ((StringBuilder)localObject1).append("d_mid");
        ((StringBuilder)localObject1).append("=");
        ((StringBuilder)localObject1).append(ao.c(b));
      }
      if (ao.d(b) != null)
      {
        ((StringBuilder)localObject1).append("&");
        ((StringBuilder)localObject1).append("d_blob");
        ((StringBuilder)localObject1).append("=");
        ((StringBuilder)localObject1).append(ao.d(b));
      }
      if (ao.e(b) != null)
      {
        ((StringBuilder)localObject1).append("&");
        ((StringBuilder)localObject1).append("dcs_region");
        ((StringBuilder)localObject1).append("=");
        ((StringBuilder)localObject1).append(ao.e(b));
      }
      if (j == 0) {
        break label356;
      }
      localObject2 = a.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        ((StringBuilder)localObject1).append("&d_cid_ic=");
        ((StringBuilder)localObject1).append(am.a((String)localEntry.getKey()));
        ((StringBuilder)localObject1).append("%01");
        ((StringBuilder)localObject1).append(am.a((String)localEntry.getValue()));
      }
      i = 0;
      break label42;
      j = 0;
      break label51;
      break;
    }
    label356:
    localObject1 = ((StringBuilder)localObject1).toString();
    am.c("ID Service - Sending id sync call (%s)", new Object[] { localObject1 });
    localObject1 = ao.a(al.a((String)localObject1, 2000, "ID Service"));
    if ((localObject1 != null) && (((JSONObject)localObject1).has("d_mid")) && (!((JSONObject)localObject1).has("error_msg"))) {}
    for (;;)
    {
      try
      {
        ao.a(b, ((JSONObject)localObject1).getString("d_mid"));
        if (((JSONObject)localObject1).has("d_blob")) {
          ao.c(b, ((JSONObject)localObject1).getString("d_blob"));
        }
        if (((JSONObject)localObject1).has("dcs_region")) {
          ao.b(b, ((JSONObject)localObject1).getString("dcs_region"));
        }
        if (((JSONObject)localObject1).has("id_sync_ttl")) {
          ao.a(b, ((JSONObject)localObject1).getInt("id_sync_ttl"));
        }
        am.c("ID Service - Got ID Response (mid: %s, blob: %s, hint: %s, ttl: %d)", new Object[] { ao.c(b), ao.d(b), ao.e(b), Long.valueOf(ao.b(b)) });
      }
      catch (JSONException localJSONException1)
      {
        am.c("ID Service - Error parsing response (%s)", new Object[] { localJSONException1.getLocalizedMessage() });
        continue;
      }
      ao.b(b, am.p());
      ap.a(ao.c(b), ao.e(b), ao.d(b), ao.b(b), ao.a(b));
      try
      {
        localObject1 = am.r();
        ((SharedPreferences.Editor)localObject1).putString("ADBMOBILE_PERSISTED_MID", ao.c(b));
        ((SharedPreferences.Editor)localObject1).putString("ADBMOBILE_PERSISTED_MID_HINT", ao.e(b));
        ((SharedPreferences.Editor)localObject1).putString("ADBMOBILE_PERSISTED_MID_BLOB", ao.d(b));
        ((SharedPreferences.Editor)localObject1).putLong("ADBMOBILE_VISITORID_TTL", ao.b(b));
        ((SharedPreferences.Editor)localObject1).putLong("ADBMOBILE_VISITORID_SYNC", ao.a(b));
        ((SharedPreferences.Editor)localObject1).commit();
        return;
      }
      catch (am.b localb)
      {
        am.a("ID Service - Unable to persist identifiers to shared preferences(%s)", new Object[] { localb.getLocalizedMessage() });
        return;
      }
      if ((localJSONException1 != null) && (localJSONException1.has("error_msg"))) {}
      try
      {
        am.a("ID Service - Service returned error (%s)", new Object[] { localJSONException1.getString("error_msg") });
        ao.a(b, ao.f());
        ao.c(b, null);
        ao.b(b, null);
        ao.a(b, 600L);
        am.c("ID Service - Did not return an ID, generating one locally (mid: %s, ttl: %d)", new Object[] { ao.c(b), Long.valueOf(ao.b(b)) });
      }
      catch (JSONException localJSONException2)
      {
        for (;;)
        {
          am.a("ID Service - Unable to read error condition(%s)", new Object[] { localJSONException2.getLocalizedMessage() });
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.ao.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */