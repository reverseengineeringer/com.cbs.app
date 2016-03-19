package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.google.android.gms.R.string;
import com.google.android.gms.ads.internal.o;
import java.util.Map;

@fs
public final class eb
  extends eh
{
  private final Map<String, String> a;
  private final Context b;
  private String c;
  private long d;
  private long e;
  private String f;
  private String g;
  
  public eb(hs paramhs, Map<String, String> paramMap)
  {
    super(paramhs, "createCalendarEvent");
    a = paramMap;
    b = paramhs.e();
    c = d("description");
    f = d("summary");
    d = e("start_ticks");
    e = e("end_ticks");
    g = d("location");
  }
  
  private String d(String paramString)
  {
    if (TextUtils.isEmpty((CharSequence)a.get(paramString))) {
      return "";
    }
    return (String)a.get(paramString);
  }
  
  private long e(String paramString)
  {
    paramString = (String)a.get(paramString);
    if (paramString == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return -1L;
  }
  
  public final void a()
  {
    if (b == null)
    {
      a("Activity context is not available.");
      return;
    }
    o.e();
    if (!gw.e(b).d())
    {
      a("This feature is not available on the device.");
      return;
    }
    o.e();
    AlertDialog.Builder localBuilder = gw.d(b);
    localBuilder.setTitle(o.h().a(R.string.create_calendar_title, "Create calendar event"));
    localBuilder.setMessage(o.h().a(R.string.create_calendar_message, "Allow Ad to create a calendar event?"));
    localBuilder.setPositiveButton(o.h().a(R.string.accept, "Accept"), new eb.1(this));
    localBuilder.setNegativeButton(o.h().a(R.string.decline, "Decline"), new eb.2(this));
    localBuilder.create().show();
  }
  
  final Intent b()
  {
    Intent localIntent = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
    localIntent.putExtra("title", c);
    localIntent.putExtra("eventLocation", g);
    localIntent.putExtra("description", f);
    if (d > -1L) {
      localIntent.putExtra("beginTime", d);
    }
    if (e > -1L) {
      localIntent.putExtra("endTime", e);
    }
    localIntent.setFlags(268435456);
    return localIntent;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */