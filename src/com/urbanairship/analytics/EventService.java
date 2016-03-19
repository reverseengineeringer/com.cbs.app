package com.urbanairship.analytics;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import com.urbanairship.a;
import com.urbanairship.p;
import java.util.Map;

public class EventService
  extends IntentService
{
  private static long a = 0L;
  private final i b;
  
  public EventService()
  {
    this("EventService");
  }
  
  public EventService(String paramString)
  {
    this(paramString, new i());
  }
  
  EventService(String paramString, i parami)
  {
    super(paramString);
    b = parami;
  }
  
  private static long a()
  {
    d locald = p.a().q().d();
    long l = locald.e();
    return Math.max(locald.d() + l + a - System.currentTimeMillis(), 0L);
  }
  
  private void a(long paramLong)
  {
    paramLong = System.currentTimeMillis() + paramLong;
    d locald = p.a().q().d();
    AlarmManager localAlarmManager = (AlarmManager)getApplicationContext().getSystemService("alarm");
    Intent localIntent = new Intent(getApplicationContext(), EventService.class);
    localIntent.setAction("com.urbanairship.analytics.SEND");
    long l = locald.f();
    if ((l < System.currentTimeMillis()) || (l > paramLong)) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (PendingIntent.getService(getApplicationContext(), 0, localIntent, 536870912) == null))
      {
        localAlarmManager.set(1, paramLong, PendingIntent.getService(getApplicationContext(), 0, localIntent, 134217728));
        locald.b(paramLong);
      }
      return;
    }
  }
  
  public void onCreate()
  {
    super.onCreate();
    com.urbanairship.c.a(getApplicationContext());
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if ((paramIntent == null) || (paramIntent.getAction() == null)) {}
    Object localObject1;
    int i;
    Object localObject2;
    label549:
    label594:
    label693:
    int j;
    label759:
    do
    {
      String str1;
      String str2;
      String str3;
      String str4;
      do
      {
        return;
        new StringBuilder("EventService - Received intent: ").append(paramIntent.getAction());
        localObject1 = paramIntent.getAction();
        i = -1;
        switch (((String)localObject1).hashCode())
        {
        }
        for (;;)
        {
          switch (i)
          {
          default: 
            new StringBuilder("EventService - Unrecognized intent action: ").append(paramIntent.getAction());
            return;
            if (((String)localObject1).equals("com.urbanairship.analytics.DELETE_ALL"))
            {
              i = 0;
              continue;
              if (((String)localObject1).equals("com.urbanairship.analytics.ADD"))
              {
                i = 1;
                continue;
                if (((String)localObject1).equals("com.urbanairship.analytics.SEND")) {
                  i = 2;
                }
              }
            }
            break;
          }
        }
        p.a().q().c().a("events", null, null);
        return;
        localObject1 = p.a().q().d();
        localj = p.a().q().c();
        localObject2 = paramIntent.getStringExtra("EXTRA_EVENT_TYPE");
        str1 = paramIntent.getStringExtra("EXTRA_EVENT_ID");
        str2 = paramIntent.getStringExtra("EXTRA_EVENT_DATA");
        str3 = paramIntent.getStringExtra("EXTRA_EVENT_TIME_STAMP");
        str4 = paramIntent.getStringExtra("EXTRA_EVENT_SESSION_ID");
      } while ((localObject2 == null) || (str2 == null) || (str3 == null) || (str1 == null));
      Cursor localCursor;
      if (localj.a() > ((d)localObject1).a())
      {
        localCursor = localj.a("events", new String[] { "session_id" }, null, null, "_id ASC", "0, 1");
        if (localCursor != null) {
          break label549;
        }
        com.urbanairship.j.a("EventDataManager - Unable to query database.");
        paramIntent = null;
      }
      for (;;)
      {
        if ((paramIntent != null) && (paramIntent.length() > 0))
        {
          i = localj.a("events", "session_id = ?", new String[] { paramIntent });
          if (i > 0) {
            new StringBuilder("EventDataManager - Deleted ").append(i).append(" rows with session ID ").append(paramIntent);
          }
        }
        paramIntent = new ContentValues();
        paramIntent.put("type", (String)localObject2);
        paramIntent.put("event_id", str1);
        paramIntent.put("data", str2);
        paramIntent.put("time", str3);
        paramIntent.put("session_id", str4);
        paramIntent.put("event_size", Integer.valueOf(str2.length()));
        if (localj.a("events", paramIntent) <= 0L) {
          com.urbanairship.j.a("EventService - Unable to insert event into database.");
        }
        if ((!"location".equals(localObject2)) || (p.a().q().a())) {
          break label594;
        }
        long l1 = System.currentTimeMillis();
        long l2 = ((d)localObject1).e();
        l1 = aln - (l1 - l2);
        if ((l1 <= a()) || (l1 <= 10000L)) {
          break;
        }
        new StringBuilder("LocationEvent was inserted, but may not be updated until ").append(l1).append(" ms have passed");
        a(l1);
        return;
        paramIntent = null;
        if (localCursor.moveToFirst()) {
          paramIntent = localCursor.getString(0);
        }
        localCursor.close();
      }
      a(Math.max(a(), 10000L));
      return;
      if ("region_event".equals(localObject2))
      {
        a(1000L);
        return;
      }
      a(Math.max(a(), 10000L));
      return;
      localObject1 = p.a().q().d();
      j localj = p.a().q().c();
      ((d)localObject1).a(System.currentTimeMillis());
      localObject2 = localj.a("events", new String[] { "COUNT(*) as _cnt" }, null, null, null, null);
      if (localObject2 != null) {
        break;
      }
      com.urbanairship.j.a("EventDataManager - Unable to query events database.");
      i = -1;
      if ((p.a().m().t() == null) || (i <= 0)) {
        break label891;
      }
      j = localj.a() / i;
      paramIntent = localj.a(((d)localObject1).b() / j);
      localObject2 = i.a(paramIntent.values());
      if ((localObject2 == null) || (((k)localObject2).a() != 200)) {
        break label893;
      }
      j = 1;
      if (j == 0) {
        break label898;
      }
      localj.a(paramIntent.keySet());
      a = 0L;
      if ((j == 0) || (i - paramIntent.size() > 0)) {
        a(a());
      }
    } while (localObject2 == null);
    ((d)localObject1).a(((k)localObject2).b());
    ((d)localObject1).b(((k)localObject2).c());
    ((d)localObject1).c(((k)localObject2).d());
    ((d)localObject1).d(((k)localObject2).e());
    return;
    if (((Cursor)localObject2).moveToFirst()) {}
    for (paramIntent = Integer.valueOf(((Cursor)localObject2).getInt(0));; paramIntent = null)
    {
      ((Cursor)localObject2).close();
      if (paramIntent == null)
      {
        i = -1;
        break label693;
      }
      i = paramIntent.intValue();
      break label693;
      label891:
      break;
      label893:
      j = 0;
      break label759;
      label898:
      if (a == 0L) {}
      for (a = ((d)localObject1).d();; a = Math.min(a * 2L, ((d)localObject1).c()))
      {
        new StringBuilder("Analytic events failed to send. Will retry in ").append(a).append("ms.");
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.EventService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */