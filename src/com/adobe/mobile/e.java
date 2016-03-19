package com.adobe.mobile;

import android.content.SharedPreferences;
import java.math.BigDecimal;

final class e
{
  private static final Object a = new Object();
  
  protected static BigDecimal a()
  {
    try
    {
      synchronized (a)
      {
        try
        {
          BigDecimal localBigDecimal1 = new BigDecimal(am.a().getString("ADB_LIFETIME_VALUE", "0"));
          return localBigDecimal1;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;)
          {
            BigDecimal localBigDecimal2 = new BigDecimal("0");
          }
        }
      }
    }
    catch (am.b localb)
    {
      for (;;)
      {
        am.a("Analytics - Error getting current lifetime value:(%s).", new Object[] { localb.getMessage() });
        Object localObject2 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */