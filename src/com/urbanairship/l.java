package com.urbanairship;

import android.content.Context;
import android.database.Cursor;
import com.urbanairship.json.JsonValue;
import com.urbanairship.json.a;
import com.urbanairship.json.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class l
{
  Executor a = Executors.newSingleThreadExecutor();
  private final Map<String, l.a> b = new HashMap();
  private final q c;
  private final List<l.b> d = new ArrayList();
  
  l(Context paramContext)
  {
    this(new q(paramContext));
  }
  
  private l(q paramq)
  {
    c = paramq;
  }
  
  private l.a d(String paramString)
  {
    synchronized (b)
    {
      if (b.containsKey(paramString))
      {
        paramString = (l.a)b.get(paramString);
        return paramString;
      }
      l.a locala = new l.a(this, paramString, null);
      b.put(paramString, locala);
      paramString = locala;
    }
  }
  
  public final int a(String paramString, int paramInt)
  {
    paramString = d(paramString).a();
    if (paramString == null) {
      return paramInt;
    }
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return paramInt;
  }
  
  public final long a(String paramString, long paramLong)
  {
    paramString = d(paramString).a();
    if (paramString == null) {
      return paramLong;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return paramLong;
  }
  
  public final String a(String paramString)
  {
    String str = d(paramString).a();
    paramString = str;
    if (str == null) {
      paramString = null;
    }
    return paramString;
  }
  
  final void a()
  {
    Cursor localCursor = c.a(UrbanAirshipProvider.c(), null, null, null);
    if (localCursor == null) {
      return;
    }
    int i = localCursor.getColumnIndex("_id");
    int j = localCursor.getColumnIndex("value");
    while (localCursor.moveToNext())
    {
      String str1 = localCursor.getString(i);
      String str2 = localCursor.getString(j);
      b.put(str1, new l.a(this, str1, str2));
    }
    localCursor.close();
  }
  
  public final void a(l.b paramb)
  {
    synchronized (d)
    {
      d.add(paramb);
      return;
    }
  }
  
  public final void a(String paramString, JsonValue paramJsonValue)
  {
    if (paramJsonValue == null)
    {
      c(paramString);
      return;
    }
    d(paramString).a(paramJsonValue.toString());
  }
  
  public final void a(String paramString, d paramd)
  {
    if (paramd == null)
    {
      c(paramString);
      return;
    }
    a(paramString, paramd.e());
  }
  
  public final void a(String paramString1, String paramString2)
  {
    d(paramString1).a(paramString2);
  }
  
  public final boolean a(String paramString, boolean paramBoolean)
  {
    paramString = d(paramString).a();
    if (paramString == null) {
      return paramBoolean;
    }
    return Boolean.valueOf(paramString).booleanValue();
  }
  
  public final JsonValue b(String paramString)
  {
    try
    {
      paramString = JsonValue.b(d(paramString).a());
      return paramString;
    }
    catch (a paramString) {}
    return JsonValue.a;
  }
  
  public final void b(String paramString, int paramInt)
  {
    d(paramString).a(String.valueOf(paramInt));
  }
  
  public final void b(String paramString, long paramLong)
  {
    d(paramString).a(String.valueOf(paramLong));
  }
  
  public final void b(String paramString, boolean paramBoolean)
  {
    d(paramString).a(String.valueOf(paramBoolean));
  }
  
  public final boolean b(String paramString1, String paramString2)
  {
    if (paramString2 == null) {}
    for (paramString2 = null;; paramString2 = String.valueOf(paramString2)) {
      return d(paramString1).b(paramString2);
    }
  }
  
  public final void c(String paramString)
  {
    d(paramString).a(null);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */