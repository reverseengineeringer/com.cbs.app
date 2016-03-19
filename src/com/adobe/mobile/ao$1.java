package com.adobe.mobile;

import android.content.SharedPreferences;

final class ao$1
  implements Runnable
{
  ao$1(ao paramao) {}
  
  public final void run()
  {
    try
    {
      ao.a(a, am.a().getString("ADBMOBILE_PERSISTED_MID", null));
      ao.b(a, am.a().getString("ADBMOBILE_PERSISTED_MID_HINT", null));
      ao.c(a, am.a().getString("ADBMOBILE_PERSISTED_MID_BLOB", null));
      ao.a(a, am.a().getLong("ADBMOBILE_VISITORID_TTL", 0L));
      ao.b(a, am.a().getLong("ADBMOBILE_VISITORID_SYNC", 0L));
      return;
    }
    catch (am.b localb)
    {
      ao.a(a, null);
      ao.b(a, null);
      ao.c(a, null);
      am.a("Visitor - Unable to check for stored visitor ID due to context error (%s)", new Object[] { localb.getMessage() });
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.ao.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */