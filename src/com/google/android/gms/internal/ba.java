package com.google.android.gms.internal;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.o;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

@fs
public final class ba
{
  BlockingQueue<bg> a;
  ExecutorService b;
  LinkedHashMap<String, String> c = new LinkedHashMap();
  Map<String, bd> d = new HashMap();
  String e;
  final Context f;
  final String g;
  private AtomicBoolean h;
  private File i;
  
  public ba(Context paramContext, String paramString1, String paramString2, Map<String, String> paramMap)
  {
    f = paramContext;
    g = paramString1;
    e = paramString2;
    h = new AtomicBoolean(false);
    paramContext = h;
    paramString1 = ax.I;
    paramContext.set(((Boolean)o.n().a(paramString1)).booleanValue());
    if (h.get())
    {
      paramContext = Environment.getExternalStorageDirectory();
      if (paramContext != null) {
        i = new File(paramContext, "sdk_csi_data.txt");
      }
    }
    paramContext = paramMap.entrySet().iterator();
    while (paramContext.hasNext())
    {
      paramString1 = (Map.Entry)paramContext.next();
      c.put(paramString1.getKey(), paramString1.getValue());
    }
    a = new ArrayBlockingQueue(30);
    b = Executors.newSingleThreadExecutor();
    b.execute(new ba.1(this));
    d.put("action", bd.b);
    d.put("ad_format", bd.b);
    d.put("e", bd.c);
  }
  
  public final bd a(String paramString)
  {
    paramString = (bd)d.get(paramString);
    if (paramString != null) {
      return paramString;
    }
    return bd.a;
  }
  
  final Map<String, String> a(Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    paramMap1 = new LinkedHashMap(paramMap1);
    if (paramMap2 == null) {
      return paramMap1;
    }
    paramMap2 = paramMap2.entrySet().iterator();
    while (paramMap2.hasNext())
    {
      Object localObject = (Map.Entry)paramMap2.next();
      String str1 = (String)((Map.Entry)localObject).getKey();
      localObject = (String)((Map.Entry)localObject).getValue();
      String str2 = (String)paramMap1.get(str1);
      paramMap1.put(str1, a(str1).a(str2, (String)localObject));
    }
    return paramMap1;
  }
  
  public final void a(List<String> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty())) {
      c.put("e", TextUtils.join(",", paramList));
    }
  }
  
  public final boolean a(bg parambg)
  {
    return a.offer(parambg);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */