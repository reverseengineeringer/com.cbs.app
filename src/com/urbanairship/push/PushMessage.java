package com.urbanairship.push;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.urbanairship.actions.ActionValue;
import com.urbanairship.d.g;
import com.urbanairship.d.h;
import com.urbanairship.j;
import com.urbanairship.json.JsonValue;
import com.urbanairship.json.a;
import com.urbanairship.json.c;
import com.urbanairship.push.iam.InAppMessage;
import com.urbanairship.push.iam.InAppMessage.a;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class PushMessage
  implements Parcelable
{
  public static final Parcelable.Creator<PushMessage> CREATOR = new PushMessage.1();
  private static final List<String> a = Arrays.asList(new String[] { "open_mc_action", "^mc", "open_mc_overlay_action", "^mco" });
  private final Bundle b;
  
  public PushMessage(Bundle paramBundle)
  {
    b = paramBundle;
  }
  
  final boolean a()
  {
    String str = b.getString("com.urbanairship.push.EXPIRATION");
    if (!h.a(str))
    {
      new StringBuilder("Notification expiration time is \"").append(str).append("\"");
      try
      {
        long l1 = Long.parseLong(str);
        long l2 = System.currentTimeMillis();
        if (l1 * 1000L < l2) {
          return true;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        new StringBuilder("Ignoring malformed expiration time: ").append(localNumberFormatException.getMessage());
      }
    }
    return false;
  }
  
  final boolean b()
  {
    return b.get("com.urbanairship.push.PING") != null;
  }
  
  public final String c()
  {
    return b.getString("com.urbanairship.push.CANONICAL_PUSH_ID");
  }
  
  public final String d()
  {
    return b.getString("_uamid");
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public final String e()
  {
    return b.getString("com.urbanairship.push.ALERT");
  }
  
  public final String f()
  {
    return b.getString("com.urbanairship.push.PUSH_ID");
  }
  
  public final Map<String, ActionValue> g()
  {
    String str = b.getString("com.urbanairship.actions");
    HashMap localHashMap = new HashMap();
    try
    {
      Object localObject = JsonValue.b(str).f();
      if (localObject != null)
      {
        localObject = ((c)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          localHashMap.put(localEntry.getKey(), new ActionValue((JsonValue)localEntry.getValue()));
        }
      }
      if (h.a(d())) {
        return localHashMap;
      }
    }
    catch (a locala)
    {
      j.a("Unable to parse action payload: " + str);
      return localHashMap;
    }
    if (Collections.disjoint(localHashMap.keySet(), a)) {
      localHashMap.put("^mc", ActionValue.a(d()));
    }
    return localHashMap;
  }
  
  public final String h()
  {
    return b.getString("com.urbanairship.interactive_actions");
  }
  
  public final String i()
  {
    return b.getString("com.urbanairship.interactive_type");
  }
  
  public final String j()
  {
    return b.getString("com.urbanairship.title");
  }
  
  public final String k()
  {
    return b.getString("com.urbanairship.summary");
  }
  
  public final String l()
  {
    return b.getString("com.urbanairship.wearable");
  }
  
  public final String m()
  {
    return b.getString("com.urbanairship.style");
  }
  
  public final boolean n()
  {
    return Boolean.parseBoolean(b.getString("com.urbanairship.local_only"));
  }
  
  public final int o()
  {
    try
    {
      int i = g.a(Integer.parseInt(b.getString("com.urbanairship.priority")), -2, 2);
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return 0;
  }
  
  public final int p()
  {
    try
    {
      int i = g.a(Integer.parseInt(b.getString("com.urbanairship.visibility")), -1, 1);
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return 1;
  }
  
  public final String q()
  {
    return b.getString("com.urbanairship.public_notification");
  }
  
  public final String r()
  {
    return b.getString("com.urbanairship.category");
  }
  
  public final InAppMessage s()
  {
    if (b.containsKey("com.urbanairship.in_app")) {
      try
      {
        Object localObject2 = InAppMessage.b(b.getString("com.urbanairship.in_app"));
        if (localObject2 == null) {
          return null;
        }
        Object localObject1 = new InAppMessage.a((InAppMessage)localObject2).a(f());
        if ((!h.a(d())) && (Collections.disjoint(((InAppMessage)localObject2).f().keySet(), a)))
        {
          localObject2 = new HashMap(((InAppMessage)localObject2).f());
          ((HashMap)localObject2).put("^mc", new ActionValue(JsonValue.a(d(), null)));
          ((InAppMessage.a)localObject1).a((Map)localObject2);
        }
        localObject1 = ((InAppMessage.a)localObject1).a();
        return (InAppMessage)localObject1;
      }
      catch (a locala)
      {
        j.a("PushMessage - unable to create in-app message from push payload", locala);
      }
    }
    return null;
  }
  
  public String toString()
  {
    return b.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(b);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.PushMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */