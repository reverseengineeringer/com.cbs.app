package com.urbanairship.richpush;

import android.content.Context;
import android.content.Intent;
import com.urbanairship.BaseIntentService.a;
import com.urbanairship.json.JsonValue;
import com.urbanairship.l;
import com.urbanairship.p;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class a
  extends BaseIntentService.a
{
  private final p a;
  private final e b;
  private final d c;
  private final String d;
  private final com.urbanairship.b.b e;
  
  public a(Context paramContext, l paraml)
  {
    this(paramContext, paraml, new com.urbanairship.b.b(), new d(paramContext), p.a());
  }
  
  private a(Context paramContext, l paraml, com.urbanairship.b.b paramb, d paramd, p paramp)
  {
    super(paramContext, paraml);
    e = paramb;
    c = paramd;
    a = paramp;
    b = paramp.n().b();
    d = le;
  }
  
  private JSONObject a(String paramString, Set<String> paramSet)
  {
    JSONObject localJSONObject;
    try
    {
      localJSONObject = new JSONObject();
      localJSONObject.put(paramString, new JSONArray());
      String str1 = b.b();
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str2 = (String)paramSet.next();
        localJSONObject.accumulate(paramString, d + String.format("api/user/%s/messages/message/%s/", new Object[] { str1, str2 }));
      }
      localJSONObject.toString();
    }
    catch (JSONException paramString)
    {
      paramString.getMessage();
      return null;
    }
    return localJSONObject;
  }
  
  private void a(com.urbanairship.json.b paramb)
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    paramb = paramb.iterator();
    while (paramb.hasNext())
    {
      JsonValue localJsonValue = (JsonValue)paramb.next();
      if (!localJsonValue.l())
      {
        com.urbanairship.j.a("InboxServiceDelegate - Invalid message payload: " + localJsonValue);
      }
      else
      {
        String str = localJsonValue.f().c("message_id").a();
        if (str == null)
        {
          com.urbanairship.j.a("InboxServiceDelegate - Invalid message payload, missing message ID: " + localJsonValue);
        }
        else
        {
          localHashSet.add(str);
          if (c.a(str, localJsonValue) != 1) {
            localArrayList.add(localJsonValue);
          }
        }
      }
    }
    if (localArrayList.size() > 0) {
      c.a(localArrayList);
    }
    paramb = c.b();
    paramb.removeAll(localHashSet);
    c.c(paramb);
    a.n().c().a();
  }
  
  private boolean c()
  {
    Object localObject = RichPushUpdateService.a("api/user/%s/messages/", new Object[] { b.b() });
    if (localObject == null) {
      return false;
    }
    com.urbanairship.b.c localc = com.urbanairship.b.b.a("GET", (URL)localObject).a(b.b(), b.c()).c("Accept", "application/vnd.urbanairship+json; version=3;").c("X-UA-Channel-ID", a.m().t()).a(b().a("com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME", 0L)).b();
    new StringBuilder("InboxServiceDelegate - Fetch inbox messages response: ").append(localc);
    if (localc == null) {}
    for (int i = -1; i == 304; i = localc.a()) {
      return true;
    }
    if (i == 200)
    {
      localObject = null;
      for (;;)
      {
        try
        {
          com.urbanairship.json.c localc1 = JsonValue.b(localc.b()).f();
          if (localc1 != null) {
            localObject = localc1.b("messages").e();
          }
          if ((localObject == null) || (((com.urbanairship.json.b)localObject).a() == 0)) {
            return true;
          }
        }
        catch (com.urbanairship.json.a locala)
        {
          com.urbanairship.j.a("Failed to update inbox. Unable to parse response body: " + localc.b());
          return false;
        }
        new StringBuilder("Received ").append(locala.a()).append(" inbox messages.");
        a(locala);
        b().b("com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME", localc.c());
      }
    }
    return false;
  }
  
  protected final void a(Intent paramIntent)
  {
    Object localObject = paramIntent.getAction();
    int i = -1;
    switch (((String)localObject).hashCode())
    {
    default: 
      switch (i)
      {
      }
      break;
    }
    do
    {
      JSONObject localJSONObject;
      do
      {
        do
        {
          do
          {
            return;
            if (!((String)localObject).equals("com.urbanairship.richpush.MESSAGES_UPDATE")) {
              break;
            }
            i = 0;
            break;
            if (!((String)localObject).equals("com.urbanairship.richpush.SYNC_MESSAGE_STATE")) {
              break;
            }
            i = 1;
            break;
            if (!e.a())
            {
              RichPushUpdateService.a(paramIntent, false);
              return;
            }
            RichPushUpdateService.a(paramIntent, c());
            paramIntent = c.c();
            if (paramIntent.size() != 0)
            {
              localObject = RichPushUpdateService.a("api/user/%s/messages/unread/", new Object[] { b.b() });
              if (localObject != null)
              {
                new StringBuilder("InboxServiceDelegate - Found ").append(paramIntent.size()).append(" messages to mark read.");
                localJSONObject = a("mark_as_read", paramIntent);
                if (localJSONObject != null)
                {
                  new StringBuilder("InboxServiceDelegate - Marking inbox messages read request with payload: ").append(localJSONObject);
                  localObject = com.urbanairship.b.b.a("POST", (URL)localObject).a(b.b(), b.c()).b(localJSONObject.toString(), "application/json").c("X-UA-Channel-ID", a.m().t()).c("Accept", "application/vnd.urbanairship+json; version=3;").b();
                  new StringBuilder("InboxServiceDelegate - Mark inbox messages read response: ").append(localObject);
                  if ((localObject != null) && (((com.urbanairship.b.c)localObject).a() == 200)) {
                    c.b(paramIntent);
                  }
                }
              }
            }
            paramIntent = c.d();
          } while (paramIntent.size() == 0);
          localObject = RichPushUpdateService.a("api/user/%s/messages/delete/", new Object[] { b.b() });
        } while (localObject == null);
        new StringBuilder("InboxServiceDelegate - Found ").append(paramIntent.size()).append(" messages to delete.");
        localJSONObject = a("delete", paramIntent);
      } while (localJSONObject == null);
      new StringBuilder("InboxServiceDelegate - Deleting inbox messages with payload: ").append(localJSONObject);
      localObject = com.urbanairship.b.b.a("POST", (URL)localObject).a(b.b(), b.c()).b(localJSONObject.toString(), "application/json").c("X-UA-Channel-ID", a.m().t()).c("Accept", "application/vnd.urbanairship+json; version=3;").b();
      new StringBuilder("InboxServiceDelegate - Delete inbox messages response: ").append(localObject);
    } while ((localObject == null) || (((com.urbanairship.b.c)localObject).a() != 200));
    c.c(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */