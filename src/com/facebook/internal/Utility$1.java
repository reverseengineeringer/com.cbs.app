package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

final class Utility$1
  implements Runnable
{
  Utility$1(String paramString1, Context paramContext, String paramString2) {}
  
  public final void run()
  {
    JSONObject localJSONObject = Utility.access$000(val$applicationId);
    if (localJSONObject != null)
    {
      Utility.access$100(val$applicationId, localJSONObject);
      val$context.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).edit().putString(val$settingsKey, localJSONObject.toString()).apply();
    }
    Utility.access$200().set(false);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.Utility.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */