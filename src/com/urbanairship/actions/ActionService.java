package com.urbanairship.actions;

import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import com.urbanairship.d.h;
import com.urbanairship.j;
import com.urbanairship.json.JsonValue;
import com.urbanairship.json.a;
import com.urbanairship.push.PushMessage;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ActionService
  extends Service
{
  private int a = 0;
  private int b = 0;
  private final g c;
  
  public ActionService()
  {
    this(new g());
  }
  
  ActionService(g paramg)
  {
    c = paramg;
  }
  
  private static Bundle a(String paramString)
  {
    localBundle = new Bundle();
    if (h.a(paramString)) {
      return localBundle;
    }
    try
    {
      Object localObject = JsonValue.b(paramString).f();
      if (localObject != null)
      {
        localObject = ((com.urbanairship.json.c)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          localBundle.putParcelable((String)localEntry.getKey(), new ActionValue((JsonValue)localEntry.getValue()));
        }
      }
      return localBundle;
    }
    catch (a locala)
    {
      j.a("Unable to parse action payload: " + paramString);
    }
  }
  
  public static void a(Context paramContext, String paramString, p paramp, Bundle paramBundle)
  {
    paramString = a(paramString);
    if (paramString.isEmpty()) {
      return;
    }
    Intent localIntent = new Intent("com.urbanairship.actionservice.ACTION_RUN_ACTIONS").setClass(paramContext, ActionService.class).putExtra("com.urbanairship.actionservice.EXTRA_ACTIONS", paramString);
    paramString = paramp;
    if (paramp == null) {
      paramString = p.a;
    }
    paramString = localIntent.putExtra("com.urbanairship.actionservice.EXTRA_SITUATION", paramString);
    if (paramBundle != null) {
      paramString.putExtra("com.urbanairship.actionservice.EXTRA_METADATA", paramBundle);
    }
    paramContext.startService(paramString);
  }
  
  public static void a(Context paramContext, Map<String, ActionValue> paramMap, p paramp, Bundle paramBundle)
  {
    if (paramMap.isEmpty()) {
      return;
    }
    Object localObject = new Bundle();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      ((Bundle)localObject).putParcelable((String)localEntry.getKey(), (Parcelable)localEntry.getValue());
    }
    localObject = new Intent("com.urbanairship.actionservice.ACTION_RUN_ACTIONS").setClass(paramContext, ActionService.class).putExtra("com.urbanairship.actionservice.EXTRA_ACTIONS", (Bundle)localObject);
    paramMap = paramp;
    if (paramp == null) {
      paramMap = p.a;
    }
    paramMap = ((Intent)localObject).putExtra("com.urbanairship.actionservice.EXTRA_SITUATION", paramMap);
    paramMap.putExtra("com.urbanairship.actionservice.EXTRA_METADATA", paramBundle);
    paramContext.startService(paramMap);
  }
  
  private void a(Intent paramIntent)
  {
    Bundle localBundle1 = paramIntent.getBundleExtra("com.urbanairship.actionservice.EXTRA_ACTIONS");
    if (localBundle1 == null) {
      localBundle1 = new Bundle();
    }
    for (;;)
    {
      p localp = (p)paramIntent.getSerializableExtra("com.urbanairship.actionservice.EXTRA_SITUATION");
      Bundle localBundle2 = paramIntent.getBundleExtra("com.urbanairship.actionservice.EXTRA_METADATA");
      if (localBundle2 == null) {
        localBundle2 = new Bundle();
      }
      for (;;)
      {
        localBundle1.putAll(a(paramIntent.getStringExtra("com.urbanairship.actionservice.EXTRA_ACTIONS_PAYLOAD")));
        paramIntent = (Bundle)paramIntent.getParcelableExtra("com.urbanairship.actionservice.EXTRA_PUSH_BUNDLE");
        if (paramIntent != null) {
          localBundle2.putParcelable("com.urbanairship.PUSH_MESSAGE", new PushMessage(paramIntent));
        }
        if (localBundle1.isEmpty()) {}
        for (;;)
        {
          return;
          paramIntent = localBundle1.keySet().iterator();
          while (paramIntent.hasNext())
          {
            String str = (String)paramIntent.next();
            b += 1;
            f.a(str).a(localBundle2).a((ActionValue)localBundle1.getParcelable(str)).a(localp).a(new c()
            {
              public final void a(b paramAnonymousb, e paramAnonymouse)
              {
                ActionService.a(ActionService.this);
                if (ActionService.b(ActionService.this) == 0) {
                  stopSelf(ActionService.c(ActionService.this));
                }
              }
            });
          }
        }
      }
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    com.urbanairship.c.a(getApplicationContext());
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    com.urbanairship.c.a((Application)getApplicationContext());
    a = paramInt2;
    if ((paramIntent != null) && ("com.urbanairship.actionservice.ACTION_RUN_ACTIONS".equals(paramIntent.getAction())))
    {
      new StringBuilder("ActionService - Received intent: ").append(paramIntent.getAction()).append(" startId: ").append(paramInt2);
      a(paramIntent);
    }
    if (b == 0) {
      stopSelf(paramInt2);
    }
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */