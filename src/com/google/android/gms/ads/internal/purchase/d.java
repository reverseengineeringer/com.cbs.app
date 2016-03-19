package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.er.a;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gm;
import com.google.android.gms.internal.gn;
import com.google.android.gms.internal.gw;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

@fs
public final class d
  extends er.a
{
  private String a;
  private Context b;
  private String c;
  private ArrayList<String> d;
  
  public d(String paramString1, ArrayList<String> paramArrayList, Context paramContext, String paramString2)
  {
    c = paramString1;
    d = paramArrayList;
    a = paramString2;
    b = paramContext;
  }
  
  private String a(String paramString, HashMap<String, String> paramHashMap)
  {
    String str3 = b.getPackageName();
    long l1;
    long l2;
    String str2;
    try
    {
      String str1 = b.getPackageManager().getPackageInfo(str3, 0).versionName;
      l1 = o.h().c().a();
      l2 = SystemClock.elapsedRealtime();
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str4 = (String)localIterator.next();
        paramString = paramString.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] { str4 }), String.format("$1%s$2", new Object[] { paramHashMap.get(str4) }));
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        b.a(5);
        str2 = "";
      }
    }
    return paramString.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp136_133), String.format("$1%s$2", tmp150_147)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp171_168), String.format("$1%s$2", tmp185_182)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp202_199), String.format("$1%s$2", tmp216_213)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp237_234), String.format("$1%s$2", tmp251_248)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp270_267), String.format("$1%s$2", tmp284_281)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp301_298), String.format("$1%s$2", tmp315_312)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp337_334), String.format("$1%s$2", tmp351_348)).replaceAll("@@", "@");
  }
  
  private void b()
  {
    try
    {
      b.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", new Class[] { Context.class, String.class, String.class, Boolean.TYPE }).invoke(null, new Object[] { b, c, "", Boolean.valueOf(true) });
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      b.a(5);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      b.a(5);
      return;
    }
    catch (Exception localException)
    {
      b.a(5);
    }
  }
  
  public final String a()
  {
    return c;
  }
  
  public final void a(int paramInt)
  {
    if (paramInt == 1) {
      b();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("status", String.valueOf(paramInt));
    localHashMap.put("sku", c);
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      localLinkedList.add(a((String)localIterator.next(), localHashMap));
    }
    o.e();
    gw.a(b, a, localLinkedList);
  }
  
  public final void b(int paramInt)
  {
    int i = 1;
    if (paramInt == 0) {
      b();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("google_play_status", String.valueOf(paramInt));
    localHashMap.put("sku", c);
    if (paramInt == 0) {
      paramInt = i;
    }
    LinkedList localLinkedList;
    for (;;)
    {
      localHashMap.put("status", String.valueOf(paramInt));
      localLinkedList = new LinkedList();
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext()) {
        localLinkedList.add(a((String)localIterator.next(), localHashMap));
      }
      if (paramInt == 1) {
        paramInt = 2;
      } else if (paramInt == 4) {
        paramInt = 3;
      } else {
        paramInt = 0;
      }
    }
    o.e();
    gw.a(b, a, localLinkedList);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */