package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class cn
  implements ci
{
  final HashMap<String, hg<JSONObject>> a = new HashMap();
  
  public final Future<JSONObject> a(String paramString)
  {
    hg localhg = new hg();
    a.put(paramString, localhg);
    return localhg;
  }
  
  public final void a(hs paramhs, Map<String, String> paramMap)
  {
    paramhs = (String)paramMap.get("request_id");
    String str = (String)paramMap.get("fetched_ad");
    b.a(3);
    paramMap = (hg)a.get(paramhs);
    if (paramMap == null)
    {
      b.a("Could not find the ad request for the corresponding ad response.");
      return;
    }
    try
    {
      paramMap.b(new JSONObject(str));
      return;
    }
    catch (JSONException localJSONException)
    {
      b.a("Failed constructing JSON object from value passed from javascript", localJSONException);
      paramMap.b(null);
      return;
    }
    finally
    {
      a.remove(paramhs);
    }
  }
  
  public final void b(String paramString)
  {
    hg localhg = (hg)a.get(paramString);
    if (localhg == null)
    {
      b.a("Could not find the ad request for the corresponding ad response.");
      return;
    }
    if (!localhg.isDone()) {
      localhg.cancel(true);
    }
    a.remove(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */