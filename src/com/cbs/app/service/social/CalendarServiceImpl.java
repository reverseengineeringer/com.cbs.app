package com.cbs.app.service.social;

import android.content.Context;
import android.content.Intent;
import com.cbs.app.view.utils.Util;

public class CalendarServiceImpl
  implements CalendarService
{
  private Context a;
  
  public final void a(String paramString, long paramLong1, long paramLong2)
  {
    a(paramString, paramLong1, paramLong2, null);
  }
  
  public final void a(String paramString1, long paramLong1, long paramLong2, String paramString2)
  {
    if (a != null)
    {
      Intent localIntent = new Intent("android.intent.action.EDIT");
      localIntent.setType("vnd.android.cursor.item/event");
      localIntent.putExtra("beginTime", paramLong1);
      localIntent.putExtra("allDay", false);
      localIntent.putExtra("endTime", paramLong2);
      localIntent.putExtra("title", paramString1);
      localIntent.putExtra("description", paramString2);
      localIntent.putExtra("eventTimezone", "GMT");
      localIntent.putExtra("rrule", "FREQ=WEEKLY");
      if (Util.a(a, localIntent)) {
        a.startActivity(localIntent);
      }
    }
  }
  
  public void setContext(Context paramContext)
  {
    a = paramContext;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.CalendarServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */