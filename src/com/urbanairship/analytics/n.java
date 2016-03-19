package com.urbanairship.analytics;

import android.location.Location;
import com.urbanairship.j;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public final class n
  extends h
{
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private final String g;
  private final a h;
  
  public n(Location paramLocation, a parama, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    b = String.format(Locale.US, "%.6f", new Object[] { Double.valueOf(paramLocation.getLatitude()) });
    c = String.format(Locale.US, "%.6f", new Object[] { Double.valueOf(paramLocation.getLongitude()) });
    String str;
    if (com.urbanairship.d.h.a(paramLocation.getProvider()))
    {
      str = "UNKNOWN";
      a = str;
      d = String.valueOf(paramLocation.getAccuracy());
      if (paramInt1 < 0) {
        break label145;
      }
      paramLocation = String.valueOf(paramInt1);
      label96:
      e = paramLocation;
      if (paramInt2 < 0) {
        break label151;
      }
      paramLocation = String.valueOf(paramInt2);
      label112:
      f = paramLocation;
      if (!paramBoolean) {
        break label157;
      }
    }
    label145:
    label151:
    label157:
    for (paramLocation = "true";; paramLocation = "false")
    {
      g = paramLocation;
      h = parama;
      return;
      str = paramLocation.getProvider();
      break;
      paramLocation = "NONE";
      break label96;
      paramLocation = "NONE";
      break label112;
    }
  }
  
  public final String a()
  {
    return "location";
  }
  
  protected final JSONObject b()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("lat", b);
      localJSONObject.put("long", c);
      localJSONObject.put("requested_accuracy", e);
      localJSONObject.put("update_type", h.toString());
      localJSONObject.put("provider", a);
      localJSONObject.put("h_accuracy", d);
      localJSONObject.put("v_accuracy", "NONE");
      localJSONObject.put("foreground", g);
      localJSONObject.put("update_dist", f);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      j.a("LocationEvent - Error constructing JSON data.", localJSONException);
    }
    return localJSONObject;
  }
  
  public static enum a
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */