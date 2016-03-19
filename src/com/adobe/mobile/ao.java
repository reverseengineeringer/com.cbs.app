package com.adobe.mobile;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;

final class ao
{
  private static ao g = null;
  private static final Object h = new Object();
  private long a;
  private long b;
  private String c;
  private String d;
  private String e;
  private final Executor f = Executors.newSingleThreadExecutor();
  
  protected ao()
  {
    f.execute(new Runnable()
    {
      public final void run()
      {
        try
        {
          ao.a(ao.this, am.a().getString("ADBMOBILE_PERSISTED_MID", null));
          ao.b(ao.this, am.a().getString("ADBMOBILE_PERSISTED_MID_HINT", null));
          ao.c(ao.this, am.a().getString("ADBMOBILE_PERSISTED_MID_BLOB", null));
          ao.a(ao.this, am.a().getLong("ADBMOBILE_VISITORID_TTL", 0L));
          ao.b(ao.this, am.a().getLong("ADBMOBILE_VISITORID_SYNC", 0L));
          return;
        }
        catch (am.b localb)
        {
          ao.a(ao.this, null);
          ao.b(ao.this, null);
          ao.c(ao.this, null);
          am.a("Visitor - Unable to check for stored visitor ID due to context error (%s)", new Object[] { localb.getMessage() });
        }
      }
    });
    a(null);
  }
  
  public static ao a()
  {
    synchronized (h)
    {
      if (g == null) {
        g = new ao();
      }
      ao localao = g;
      return localao;
    }
  }
  
  protected static JSONObject a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    try
    {
      paramArrayOfByte = new JSONObject(new String(paramArrayOfByte, "UTF-8"));
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      am.a("ID Service - Unable to decode response(%s)", new Object[] { paramArrayOfByte.getLocalizedMessage() });
      return null;
    }
    catch (JSONException paramArrayOfByte)
    {
      am.c("ID Service - Unable to parse response(%s)", new Object[] { paramArrayOfByte.getLocalizedMessage() });
    }
    return null;
  }
  
  protected final void a(final Map<String, String> paramMap)
  {
    if (paramMap != null) {}
    for (paramMap = new HashMap(paramMap);; paramMap = null)
    {
      f.execute(new Runnable()
      {
        public final void run()
        {
          if (!af.a().s()) {
            return;
          }
          Object localObject2 = af.a().r();
          int i;
          label42:
          int j;
          if (am.p() - ao.a(ao.this) > ao.b(ao.this))
          {
            i = 1;
            if (paramMap == null) {
              break label345;
            }
            j = 1;
            label51:
            if ((ao.c(ao.this) != null) && (j == 0) && (i == 0)) {
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
            if (ao.c(ao.this) != null)
            {
              ((StringBuilder)localObject1).append("&");
              ((StringBuilder)localObject1).append("d_mid");
              ((StringBuilder)localObject1).append("=");
              ((StringBuilder)localObject1).append(ao.c(ao.this));
            }
            if (ao.d(ao.this) != null)
            {
              ((StringBuilder)localObject1).append("&");
              ((StringBuilder)localObject1).append("d_blob");
              ((StringBuilder)localObject1).append("=");
              ((StringBuilder)localObject1).append(ao.d(ao.this));
            }
            if (ao.e(ao.this) != null)
            {
              ((StringBuilder)localObject1).append("&");
              ((StringBuilder)localObject1).append("dcs_region");
              ((StringBuilder)localObject1).append("=");
              ((StringBuilder)localObject1).append(ao.e(ao.this));
            }
            if (j == 0) {
              break label356;
            }
            localObject2 = paramMap.entrySet().iterator();
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
              ao.a(ao.this, ((JSONObject)localObject1).getString("d_mid"));
              if (((JSONObject)localObject1).has("d_blob")) {
                ao.c(ao.this, ((JSONObject)localObject1).getString("d_blob"));
              }
              if (((JSONObject)localObject1).has("dcs_region")) {
                ao.b(ao.this, ((JSONObject)localObject1).getString("dcs_region"));
              }
              if (((JSONObject)localObject1).has("id_sync_ttl")) {
                ao.a(ao.this, ((JSONObject)localObject1).getInt("id_sync_ttl"));
              }
              am.c("ID Service - Got ID Response (mid: %s, blob: %s, hint: %s, ttl: %d)", new Object[] { ao.c(ao.this), ao.d(ao.this), ao.e(ao.this), Long.valueOf(ao.b(ao.this)) });
            }
            catch (JSONException localJSONException1)
            {
              am.c("ID Service - Error parsing response (%s)", new Object[] { localJSONException1.getLocalizedMessage() });
              continue;
            }
            ao.b(ao.this, am.p());
            ap.a(ao.c(ao.this), ao.e(ao.this), ao.d(ao.this), ao.b(ao.this), ao.a(ao.this));
            try
            {
              localObject1 = am.r();
              ((SharedPreferences.Editor)localObject1).putString("ADBMOBILE_PERSISTED_MID", ao.c(ao.this));
              ((SharedPreferences.Editor)localObject1).putString("ADBMOBILE_PERSISTED_MID_HINT", ao.e(ao.this));
              ((SharedPreferences.Editor)localObject1).putString("ADBMOBILE_PERSISTED_MID_BLOB", ao.d(ao.this));
              ((SharedPreferences.Editor)localObject1).putLong("ADBMOBILE_VISITORID_TTL", ao.b(ao.this));
              ((SharedPreferences.Editor)localObject1).putLong("ADBMOBILE_VISITORID_SYNC", ao.a(ao.this));
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
              ao.a(ao.this, ao.f());
              ao.c(ao.this, null);
              ao.b(ao.this, null);
              ao.a(ao.this, 600L);
              am.c("ID Service - Did not return an ID, generating one locally (mid: %s, ttl: %d)", new Object[] { ao.c(ao.this), Long.valueOf(ao.b(ao.this)) });
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
      });
      return;
    }
  }
  
  protected final String b()
  {
    Object localObject = new FutureTask(new Callable() {});
    f.execute((Runnable)localObject);
    try
    {
      localObject = (String)((FutureTask)localObject).get();
      return (String)localObject;
    }
    catch (Exception localException)
    {
      am.a("ID Service - Unable to retrieve marketing cloud id from queue(%s)", new Object[] { localException.getLocalizedMessage() });
    }
    return null;
  }
  
  protected final String c()
  {
    final StringBuilder localStringBuilder = new StringBuilder();
    FutureTask localFutureTask = new FutureTask(new Callable() {});
    f.execute(localFutureTask);
    try
    {
      localFutureTask.get();
      return localStringBuilder.toString();
    }
    catch (Exception localException)
    {
      for (;;)
      {
        am.a("ID Service - Unable to retrieve analytics id parameters from queue(%s)", new Object[] { localException.getLocalizedMessage() });
      }
    }
  }
  
  protected final Map<String, String> d()
  {
    final HashMap localHashMap = new HashMap();
    FutureTask localFutureTask = new FutureTask(new Callable() {});
    f.execute(localFutureTask);
    try
    {
      localFutureTask.get();
      return localHashMap;
    }
    catch (Exception localException)
    {
      am.a("ID Service - Unable to retrieve analytics parameters from queue(%s)", new Object[] { localException.getLocalizedMessage() });
    }
    return localHashMap;
  }
  
  protected final String e()
  {
    final StringBuilder localStringBuilder = new StringBuilder();
    FutureTask localFutureTask = new FutureTask(new Callable() {});
    f.execute(localFutureTask);
    try
    {
      localFutureTask.get();
      return localStringBuilder.toString();
    }
    catch (Exception localException)
    {
      for (;;)
      {
        am.a("ID Service - Unable to retrieve audience manager parameters from queue(%s)", new Object[] { localException.getLocalizedMessage() });
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */