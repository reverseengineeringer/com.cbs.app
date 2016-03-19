package com.adobe.mobile;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

final class am
{
  private static final Object A;
  private static String B;
  private static final Object C;
  private static String D;
  private static final Object E;
  private static String F;
  private static final Object G;
  private static ExecutorService H;
  private static final Object I;
  private static ExecutorService J;
  private static final Object K;
  private static ExecutorService L;
  private static final Object M;
  private static ExecutorService N;
  private static final Object O;
  private static ExecutorService P;
  private static final Object Q;
  private static ExecutorService R;
  private static final Object S;
  private static ExecutorService T;
  private static final Object U;
  private static String V;
  private static boolean W;
  private static final Object X;
  private static Context Y = null;
  private static WeakReference<Activity> Z = null;
  static final Map<String, String> a;
  private static final Object aa = new Object();
  private static final char[] ab = "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF".toCharArray();
  static int b;
  private static final String[] c = { "%00", "%01", "%02", "%03", "%04", "%05", "%06", "%07", "%08", "%09", "%0A", "%0B", "%0C", "%0D", "%0E", "%0F", "%10", "%11", "%12", "%13", "%14", "%15", "%16", "%17", "%18", "%19", "%1A", "%1B", "%1C", "%1D", "%1E", "%1F", "%20", "%21", "%22", "%23", "%24", "%25", "%26", "%27", "%28", "%29", "*", "%2B", "%2C", "-", ".", "%2F", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "%3A", "%3B", "%3C", "%3D", "%3E", "%3F", "%40", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "%5B", "%5C", "%5D", "%5E", "_", "%60", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "%7B", "%7C", "%7D", "%7E", "%7F", "%80", "%81", "%82", "%83", "%84", "%85", "%86", "%87", "%88", "%89", "%8A", "%8B", "%8C", "%8D", "%8E", "%8F", "%90", "%91", "%92", "%93", "%94", "%95", "%96", "%97", "%98", "%99", "%9A", "%9B", "%9C", "%9D", "%9E", "%9F", "%A0", "%A1", "%A2", "%A3", "%A4", "%A5", "%A6", "%A7", "%A8", "%A9", "%AA", "%AB", "%AC", "%AD", "%AE", "%AF", "%B0", "%B1", "%B2", "%B3", "%B4", "%B5", "%B6", "%B7", "%B8", "%B9", "%BA", "%BB", "%BC", "%BD", "%BE", "%BF", "%C0", "%C1", "%C2", "%C3", "%C4", "%C5", "%C6", "%C7", "%C8", "%C9", "%CA", "%CB", "%CC", "%CD", "%CE", "%CF", "%D0", "%D1", "%D2", "%D3", "%D4", "%D5", "%D6", "%D7", "%D8", "%D9", "%DA", "%DB", "%DC", "%DD", "%DE", "%DF", "%E0", "%E1", "%E2", "%E3", "%E4", "%E5", "%E6", "%E7", "%E8", "%E9", "%EA", "%EB", "%EC", "%ED", "%EE", "%EF", "%F0", "%F1", "%F2", "%F3", "%F4", "%F5", "%F6", "%F7", "%F8", "%F9", "%FA", "%FB", "%FC", "%FD", "%FE", "%FF" };
  private static final boolean[] d = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  private static final boolean[] e = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  private static boolean f;
  private static j.a g = j.a.a;
  private static boolean h = false;
  private static SharedPreferences i = null;
  private static final Object j = new Object();
  private static String k = null;
  private static final Object l = new Object();
  private static String m = null;
  private static final Object n = new Object();
  private static String o = null;
  private static final Object p = new Object();
  private static int q = -1;
  private static final Object r = new Object();
  private static String s = null;
  private static final Object t = new Object();
  private static final Object u = new Object();
  private static String v = null;
  private static final Object w = new Object();
  private static HashMap<String, Object> x = null;
  private static final Object y = new Object();
  private static String z = null;
  
  static
  {
    A = new Object();
    B = null;
    C = new Object();
    D = null;
    E = new Object();
    F = null;
    G = new Object();
    H = null;
    I = new Object();
    J = null;
    K = new Object();
    L = null;
    M = new Object();
    N = null;
    O = new Object();
    P = null;
    Q = new Object();
    R = null;
    S = new Object();
    T = null;
    U = new Object();
    V = null;
    W = false;
    X = new Object();
    a = new HashMap(256);
    b = 0;
  }
  
  private static String A()
  {
    Object localObject4 = new StringBuilder(64);
    Object localObject1;
    boolean bool;
    if (af.a().h())
    {
      localObject1 = "https";
      ((StringBuilder)localObject4).append((String)localObject1);
      ((StringBuilder)localObject4).append("://");
      ((StringBuilder)localObject4).append(af.a().f());
      ((StringBuilder)localObject4).append("/id");
      bool = af.a().s();
      if (bool) {
        ((StringBuilder)localObject4).append(ao.a().c());
      }
      localObject1 = al.a(((StringBuilder)localObject4).toString(), 500, "Analytics ID");
      if (localObject1 == null) {
        break label196;
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = new JSONObject(new String((byte[])localObject1, "UTF-8")).getString("id");
        if (localObject1 != null)
        {
          localObject4 = localObject1;
          if (((String)localObject1).length() == 33) {}
        }
        else
        {
          if (!bool) {
            break label201;
          }
          localObject4 = null;
        }
        return (String)localObject4;
        localObject1 = "http";
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        a("Analytics ID - Unable to decode /id response(%s)", new Object[] { localUnsupportedEncodingException.getLocalizedMessage() });
        Object localObject2 = null;
        continue;
      }
      catch (JSONException localJSONException)
      {
        if (!bool) {
          a("Analytics ID - Unable to parse /id response(%s)", new Object[] { localJSONException.getLocalizedMessage() });
        }
      }
      label196:
      localObject3 = null;
    }
    label201:
    localObject4 = UUID.randomUUID().toString().replace("-", "").toUpperCase(Locale.US);
    Object localObject3 = Pattern.compile("^[89A-F]");
    Object localObject5 = Pattern.compile("^[4-9A-F]");
    localObject3 = ((Pattern)localObject3).matcher(((String)localObject4).substring(0, 16));
    localObject4 = ((Pattern)localObject5).matcher(((String)localObject4).substring(16, 32));
    localObject5 = new SecureRandom();
    localObject3 = ((Matcher)localObject3).replaceAll(String.valueOf(((SecureRandom)localObject5).nextInt(7)));
    localObject4 = ((Matcher)localObject4).replaceAll(String.valueOf(((SecureRandom)localObject5).nextInt(3)));
    return (String)localObject3 + "-" + (String)localObject4;
  }
  
  protected static SharedPreferences a()
  {
    synchronized (j)
    {
      if (i == null)
      {
        SharedPreferences localSharedPreferences1 = s().getSharedPreferences("APP_MEASUREMENT_CACHE", 0);
        i = localSharedPreferences1;
        if (localSharedPreferences1 == null) {
          b("Config - No SharedPreferences available", new Object[0]);
        }
      }
      if (i == null) {
        throw new b("Config - No SharedPreferences available");
      }
    }
    SharedPreferences localSharedPreferences2 = i;
    return localSharedPreferences2;
  }
  
  protected static k a(Map<String, Object> paramMap)
  {
    k localk = new k();
    paramMap = b(paramMap).entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      String str = (String)localEntry.getKey();
      ArrayList localArrayList = new ArrayList();
      int i2;
      for (int i1 = 0;; i1 = i2 + 1)
      {
        i2 = str.indexOf('.', i1);
        if (i2 < 0) {
          break;
        }
        localArrayList.add(str.substring(i1, i2));
      }
      localArrayList.add(str.substring(i1, str.length()));
      a(localEntry.getValue(), localk, localArrayList, 0);
    }
    return localk;
  }
  
  protected static String a(String paramString)
  {
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      try
      {
        byte[] arrayOfByte = paramString.getBytes("UTF-8");
        int i3 = arrayOfByte.length;
        int i1 = 0;
        while ((i1 < i3) && (d[(arrayOfByte[i1] & 0xFF)] != 0)) {
          i1 += 1;
        }
        if (i1 != i3)
        {
          paramString = new StringBuilder(arrayOfByte.length << 1);
          int i2 = i1;
          if (i1 > 0)
          {
            paramString.append(new String(arrayOfByte, 0, i1, "UTF-8"));
            i2 = i1;
          }
          while (i2 < i3)
          {
            paramString.append(c[(arrayOfByte[i2] & 0xFF)]);
            i2 += 1;
          }
          paramString = paramString.toString();
          return paramString;
        }
      }
      catch (UnsupportedEncodingException paramString)
      {
        b("UnsupportedEncodingException : " + paramString.getMessage(), new Object[0]);
      }
    }
    return null;
  }
  
  protected static String a(String paramString, Map<String, String> paramMap)
  {
    try
    {
      localIterator = paramMap.entrySet().iterator();
    }
    catch (Exception paramMap)
    {
      try
      {
        Iterator localIterator;
        while (localIterator.hasNext())
        {
          paramMap = (Map.Entry)localIterator.next();
          paramMap = paramString.replace((CharSequence)paramMap.getKey(), (CharSequence)paramMap.getValue());
          paramString = paramMap;
        }
        return paramString;
      }
      catch (Exception paramMap)
      {
        for (;;) {}
      }
      paramMap = paramMap;
    }
    c("Unable to expand tokens (%s)", new Object[] { paramMap.toString() });
    return paramString;
  }
  
  protected static HashMap<String, Object> a(JSONObject paramJSONObject)
  {
    Iterator localIterator = paramJSONObject.keys();
    HashMap localHashMap = new HashMap();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        localHashMap.put(str, paramJSONObject.getString(str));
      }
      catch (JSONException localJSONException)
      {
        b("Problem parsing json data (%s)", new Object[] { localJSONException.getLocalizedMessage() });
      }
    }
    return localHashMap;
  }
  
  protected static void a(Activity paramActivity)
  {
    synchronized (aa)
    {
      Z = new WeakReference(paramActivity);
      return;
    }
  }
  
  protected static void a(Context paramContext)
  {
    if (paramContext != null)
    {
      if ((paramContext instanceof Activity)) {
        Y = paramContext.getApplicationContext();
      }
    }
    else {
      return;
    }
    Y = paramContext;
  }
  
  protected static void a(j.a parama)
  {
    g = parama;
    if (parama == j.a.b) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      return;
    }
  }
  
  protected static void a(Long paramLong)
  {
    Object localObject = af.a();
    if (localObject == null) {
      a("Config - Lost config instance", new Object[0]);
    }
    while (!((af)localObject).i()) {
      return;
    }
    try
    {
      localObject = r();
      ((SharedPreferences.Editor)localObject).putLong("ADBLastKnownTimestampKey", paramLong.longValue());
      ((SharedPreferences.Editor)localObject).commit();
      return;
    }
    catch (b paramLong)
    {
      a("Config - Error while updating last known timestamp. (%s)", new Object[] { paramLong.getMessage() });
    }
  }
  
  private static void a(Object paramObject, k paramk, List<String> paramList, int paramInt)
  {
    for (k localk = paramk;; localk = paramk)
    {
      if (localk == null) {}
      String str;
      for (;;)
      {
        return;
        int i1 = paramList.size();
        if (paramInt < i1) {}
        for (str = (String)paramList.get(paramInt); str != null; str = null)
        {
          paramk = new k();
          if (localk.a(str)) {
            paramk = localk.b(str);
          }
          if (i1 - 1 != paramInt) {
            break label94;
          }
          a = paramObject;
          localk.a(str, paramk);
          return;
        }
      }
      label94:
      localk.a(str, paramk);
      paramInt += 1;
    }
  }
  
  private static void a(String paramString, Object paramObject, StringBuilder paramStringBuilder)
  {
    if ((paramString == null) || (paramObject == null) || ((paramObject instanceof k)) || (paramString.length() <= 0)) {
      return;
    }
    paramStringBuilder.append("&");
    paramStringBuilder.append(paramString);
    paramStringBuilder.append("=");
    if ((paramObject instanceof List))
    {
      paramObject = (List)paramObject;
      paramString = new StringBuilder();
      paramObject = ((Iterable)paramObject).iterator();
      while (((Iterator)paramObject).hasNext())
      {
        paramString.append(((Iterator)paramObject).next());
        if (!((Iterator)paramObject).hasNext()) {
          break;
        }
        paramString.append(",");
      }
      paramStringBuilder.append(a(paramString.toString()));
      return;
    }
    paramStringBuilder.append(a(paramObject.toString()));
  }
  
  protected static void a(String paramString, Object... paramVarArgs)
  {
    if (paramVarArgs.length > 0)
    {
      Log.e("ADBMobile", String.format("ADBMobile Error : " + paramString, paramVarArgs));
      return;
    }
    Log.e("ADBMobile", "ADBMobile Error : " + paramString);
  }
  
  protected static void a(Map<String, Object> paramMap, StringBuilder paramStringBuilder)
  {
    if (paramMap == null) {}
    for (;;)
    {
      return;
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject = (Map.Entry)paramMap.next();
        String str = a((String)((Map.Entry)localObject).getKey());
        if (str != null)
        {
          localObject = ((Map.Entry)localObject).getValue();
          if ((localObject instanceof k))
          {
            localObject = (k)localObject;
            if (a != null) {
              a(str, a, paramStringBuilder);
            }
            if ((b != null) && (b.size() > 0))
            {
              paramStringBuilder.append("&");
              paramStringBuilder.append(str);
              paramStringBuilder.append(".");
              a(b, paramStringBuilder);
              paramStringBuilder.append("&.");
              paramStringBuilder.append(str);
            }
          }
          else
          {
            a(str, localObject, paramStringBuilder);
          }
        }
      }
    }
  }
  
  protected static String b()
  {
    for (;;)
    {
      synchronized (l)
      {
        String str1;
        if (k == null)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          if (w() != null)
          {
            str1 = w();
            localStringBuilder = localStringBuilder.append(str1);
            if ((c() == null) || (c().length() <= 0)) {
              break label143;
            }
            str1 = " " + c() + " ";
            localStringBuilder = localStringBuilder.append(str1);
            if (x() == 0) {
              break label150;
            }
            str1 = String.format(Locale.US, "(%d)", new Object[] { Integer.valueOf(x()) });
            k = str1;
          }
        }
        else
        {
          str1 = k;
          return str1;
        }
      }
      String str2 = "";
      continue;
      label143:
      str2 = "";
      continue;
      label150:
      str2 = "";
    }
  }
  
  protected static String b(String paramString)
  {
    int i2 = 0;
    if ((paramString == null) || (paramString.length() <= 0)) {
      return null;
    }
    try
    {
      paramString = paramString.getBytes("UTF-8");
      int i3 = paramString.length;
      char[] arrayOfChar = new char[i3 << 1];
      int i1 = 0;
      while (i1 < i3)
      {
        int i4 = (paramString[i1] & 0xFF) << 1;
        int i5 = i2 + 1;
        arrayOfChar[i2] = ab[i4];
        i2 = i5 + 1;
        arrayOfChar[i5] = ab[(i4 + 1)];
        i1 += 1;
      }
      return new String(arrayOfChar);
    }
    catch (UnsupportedEncodingException paramString)
    {
      c("Failed to get hex from string (%s)", new Object[] { paramString.getMessage() });
      return null;
    }
  }
  
  protected static Map<String, Object> b(Map<String, Object> paramMap)
  {
    if (paramMap == null) {
      return new HashMap();
    }
    HashMap localHashMap = new HashMap();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      String str = d((String)localEntry.getKey());
      if (str != null) {
        localHashMap.put(str, localEntry.getValue());
      }
    }
    return localHashMap;
  }
  
  protected static void b(String paramString, Object... paramVarArgs)
  {
    if ((f) && (paramVarArgs.length > 0)) {
      String.format("ADBMobile Warning : " + paramString, paramVarArgs);
    }
  }
  
  protected static String c()
  {
    synchronized (p)
    {
      if (o == null) {
        o = "";
      }
      for (;;)
      {
        try
        {
          localObject1 = s().getPackageManager();
          if (localObject1 == null) {
            continue;
          }
          localObject1 = ((PackageManager)localObject1).getPackageInfo(s().getPackageName(), 0);
          if (localObject1 == null) {
            continue;
          }
          if (versionName == null) {
            continue;
          }
          localObject1 = versionName;
          o = (String)localObject1;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          Object localObject1;
          b("Analytics - PackageManager couldn't find application version (%s)", new Object[] { localNameNotFoundException.toString() });
          o = "";
          continue;
          localObject2 = finally;
          throw ((Throwable)localObject2);
          b("Analytics - PackageManager was null", new Object[0]);
          o = "";
          continue;
        }
        catch (b localb)
        {
          a("Config - Unable to get package to pull application version. (%s)", new Object[] { localb.getMessage() });
          o = "";
          continue;
        }
        localObject1 = o;
        return (String)localObject1;
        localObject1 = "";
      }
      b("Analytics - PackageInfo was null", new Object[0]);
      o = "";
    }
  }
  
  protected static String c(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0) || (paramString.length() % 2 != 0)) {
      return null;
    }
    int i2 = paramString.length();
    byte[] arrayOfByte = new byte[i2 / 2];
    int i1 = 0;
    while (i1 < i2)
    {
      arrayOfByte[(i1 / 2)] = ((byte)((Character.digit(paramString.charAt(i1), 16) << 4) + Character.digit(paramString.charAt(i1 + 1), 16)));
      i1 += 2;
    }
    try
    {
      paramString = new String(arrayOfByte, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      c("Failed to get string from hex (%s)", new Object[] { paramString.getMessage() });
    }
    return null;
  }
  
  protected static void c(String paramString, Object... paramVarArgs)
  {
    if ((f) && (paramVarArgs.length > 0)) {
      String.format("ADBMobile Debug : " + paramString, paramVarArgs);
    }
  }
  
  protected static String d()
  {
    synchronized (t)
    {
      String str = s;
      if (str == null) {}
      try
      {
        s = a().getString("APP_MEASUREMENT_VISITOR_ID", null);
        str = s;
        return str;
      }
      catch (b localb)
      {
        for (;;)
        {
          a("Config - Unable to pull visitorID from shared preferences. (%s)", new Object[] { localb.getMessage() });
        }
      }
    }
  }
  
  private static String d(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Object localObject2;
    synchronized (a)
    {
      localObject2 = (String)a.get(paramString);
      if (localObject2 != null) {
        return (String)localObject2;
      }
    }
    int i7;
    int i2;
    int i3;
    try
    {
      ??? = paramString.getBytes("UTF-8");
      localObject2 = new byte[???.length];
      i7 = ???.length;
      i4 = 0;
      i2 = 0;
      i3 = 0;
    }
    catch (UnsupportedEncodingException paramString)
    {
      a("Analytics - Unable to clean context data key (%s)", new Object[] { paramString.getLocalizedMessage() });
      return null;
    }
    int i5 = i2;
    int i6 = i3;
    int i1;
    if (e[(i1 & 0xFF)] != 0)
    {
      localObject2[i2] = i1;
      i5 = i2 + 1;
      i6 = i1;
      break label244;
      localObject2 = new String((byte[])localObject2, i3, i2, "UTF-8");
      synchronized (a)
      {
        if (b > 250)
        {
          a.clear();
          b = 0;
        }
        a.put(paramString, localObject2);
        b += 1;
        return (String)localObject2;
      }
    }
    for (;;)
    {
      if (i4 >= i7) {
        break label259;
      }
      i1 = ???[i4];
      if (i1 != 46) {
        break;
      }
      i5 = i2;
      i6 = i3;
      if (i3 != 46) {
        break;
      }
      label244:
      i4 += 1;
      i2 = i5;
      i3 = i6;
    }
    label259:
    if (i2 == 0) {
      return null;
    }
    if (localObject2[0] == 46)
    {
      i3 = 1;
      label276:
      if (localObject2[(i2 - 1)] != 46) {
        break label308;
      }
    }
    label308:
    for (int i4 = 1;; i4 = 0)
    {
      i2 = i2 - i4 - i3;
      if (i2 > 0) {
        break;
      }
      return null;
      i3 = 0;
      break label276;
    }
  }
  
  protected static String e()
  {
    synchronized (w)
    {
      if (v == null) {
        v = "Mozilla/5.0 (Linux; U; Android " + Build.VERSION.RELEASE + "; " + q() + "; " + Build.MODEL + " Build/" + Build.ID + ")";
      }
      String str = v;
      return str;
    }
  }
  
  protected static HashMap<String, Object> f()
  {
    for (;;)
    {
      synchronized (y)
      {
        Object localObject1;
        if (x == null)
        {
          localObject1 = new HashMap();
          x = (HashMap)localObject1;
          ((HashMap)localObject1).put("a.DeviceName", Build.MODEL);
          x.put("a.Resolution", y());
          x.put("a.OSVersion", g());
          x.put("a.CarrierName", z());
          x.put("a.AppID", b());
          HashMap localHashMap = x;
          if (h)
          {
            localObject1 = "Extension";
            localHashMap.put("a.RunMode", localObject1);
          }
        }
        else
        {
          localObject1 = x;
          return (HashMap<String, Object>)localObject1;
        }
      }
      String str = "Application";
    }
  }
  
  protected static String g()
  {
    synchronized (E)
    {
      if (D == null) {
        D = "Android " + Build.VERSION.RELEASE;
      }
      String str = D;
      return str;
    }
  }
  
  protected static String h()
  {
    synchronized (G)
    {
      if (F == null)
      {
        Object localObject4 = new Date();
        localObject2 = Calendar.getInstance();
        ((Calendar)localObject2).setTime((Date)localObject4);
        localObject4 = new StringBuilder("00/00/0000 00:00:00 0 ");
        TimeZone localTimeZone = ((Calendar)localObject2).getTimeZone();
        int i1 = ((Calendar)localObject2).get(1);
        int i2 = ((Calendar)localObject2).get(2);
        int i3 = ((Calendar)localObject2).get(5);
        int i4 = ((Calendar)localObject2).get(7);
        int i5 = ((Calendar)localObject2).get(11);
        int i6 = ((Calendar)localObject2).get(12);
        int i7 = ((Calendar)localObject2).get(13);
        F = localTimeZone.getOffset(1, i1, i2, i3, i4, ((Calendar)localObject2).get(14) + ((i5 * 60 + i6) * 60 + i7) * 1000) / 60000 * -1;
      }
      Object localObject2 = F;
      return (String)localObject2;
    }
  }
  
  protected static File i()
  {
    try
    {
      File localFile = s().getCacheDir();
      return localFile;
    }
    catch (b localb)
    {
      a("Config - Error getting cache directory. (%s)", new Object[] { localb.getMessage() });
    }
    return null;
  }
  
  protected static ExecutorService j()
  {
    synchronized (O)
    {
      if (N == null) {
        N = Executors.newSingleThreadExecutor();
      }
      ExecutorService localExecutorService = N;
      return localExecutorService;
    }
  }
  
  protected static ExecutorService k()
  {
    synchronized (Q)
    {
      if (P == null) {
        P = Executors.newSingleThreadExecutor();
      }
      ExecutorService localExecutorService = P;
      return localExecutorService;
    }
  }
  
  protected static ExecutorService l()
  {
    synchronized (S)
    {
      if (R == null) {
        R = Executors.newSingleThreadExecutor();
      }
      ExecutorService localExecutorService = R;
      return localExecutorService;
    }
  }
  
  protected static ExecutorService m()
  {
    synchronized (U)
    {
      if (T == null) {
        T = Executors.newSingleThreadExecutor();
      }
      ExecutorService localExecutorService = T;
      return localExecutorService;
    }
  }
  
  /* Error */
  protected static String n()
  {
    // Byte code:
    //   0: getstatic 644	com/adobe/mobile/am:X	Ljava/lang/Object;
    //   3: astore_1
    //   4: aload_1
    //   5: monitorenter
    //   6: getstatic 642	com/adobe/mobile/am:W	Z
    //   9: ifne +163 -> 172
    //   12: iconst_1
    //   13: putstatic 642	com/adobe/mobile/am:W	Z
    //   16: invokestatic 1089	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   19: ldc_w 1203
    //   22: iconst_0
    //   23: invokeinterface 1207 3 0
    //   28: istore_0
    //   29: invokestatic 1089	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   32: ldc_w 1209
    //   35: aconst_null
    //   36: invokeinterface 1096 3 0
    //   41: putstatic 640	com/adobe/mobile/am:V	Ljava/lang/String;
    //   44: iload_0
    //   45: ifne +127 -> 172
    //   48: getstatic 640	com/adobe/mobile/am:V	Ljava/lang/String;
    //   51: ifnonnull +121 -> 172
    //   54: invokestatic 1211	com/adobe/mobile/am:A	()Ljava/lang/String;
    //   57: putstatic 640	com/adobe/mobile/am:V	Ljava/lang/String;
    //   60: invokestatic 936	com/adobe/mobile/am:r	()Landroid/content/SharedPreferences$Editor;
    //   63: astore_2
    //   64: getstatic 640	com/adobe/mobile/am:V	Ljava/lang/String;
    //   67: ifnull +111 -> 178
    //   70: aload_2
    //   71: ldc_w 1209
    //   74: getstatic 640	com/adobe/mobile/am:V	Ljava/lang/String;
    //   77: invokeinterface 1215 3 0
    //   82: pop
    //   83: aload_2
    //   84: invokeinterface 953 1 0
    //   89: pop
    //   90: getstatic 640	com/adobe/mobile/am:V	Ljava/lang/String;
    //   93: astore_2
    //   94: aload_2
    //   95: ifnull +77 -> 172
    //   98: invokestatic 681	com/adobe/mobile/af:a	()Lcom/adobe/mobile/af;
    //   101: invokevirtual 698	com/adobe/mobile/af:s	()Z
    //   104: istore_0
    //   105: iload_0
    //   106: ifeq +66 -> 172
    //   109: invokestatic 1089	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   112: ldc_w 1217
    //   115: iconst_0
    //   116: invokeinterface 1207 3 0
    //   121: istore_0
    //   122: iload_0
    //   123: ifne +49 -> 172
    //   126: new 646	java/util/HashMap
    //   129: dup
    //   130: invokespecial 906	java/util/HashMap:<init>	()V
    //   133: astore_3
    //   134: aload_3
    //   135: ldc_w 1219
    //   138: aload_2
    //   139: invokevirtual 910	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   142: pop
    //   143: invokestatic 703	com/adobe/mobile/ao:a	()Lcom/adobe/mobile/ao;
    //   146: aload_3
    //   147: invokevirtual 1222	com/adobe/mobile/ao:a	(Ljava/util/Map;)V
    //   150: invokestatic 936	com/adobe/mobile/am:r	()Landroid/content/SharedPreferences$Editor;
    //   153: astore_2
    //   154: aload_2
    //   155: ldc_w 1217
    //   158: iconst_1
    //   159: invokeinterface 1226 3 0
    //   164: pop
    //   165: aload_2
    //   166: invokeinterface 953 1 0
    //   171: pop
    //   172: aload_1
    //   173: monitorexit
    //   174: getstatic 640	com/adobe/mobile/am:V	Ljava/lang/String;
    //   177: areturn
    //   178: aload_2
    //   179: ldc_w 1203
    //   182: iconst_1
    //   183: invokeinterface 1226 3 0
    //   188: pop
    //   189: goto -106 -> 83
    //   192: astore_2
    //   193: ldc_w 1228
    //   196: iconst_1
    //   197: anewarray 4	java/lang/Object
    //   200: dup
    //   201: iconst_0
    //   202: aload_2
    //   203: invokevirtual 956	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   206: aastore
    //   207: invokestatic 745	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   210: goto -38 -> 172
    //   213: astore_2
    //   214: aload_1
    //   215: monitorexit
    //   216: aload_2
    //   217: athrow
    //   218: astore_3
    //   219: ldc_w 1230
    //   222: iconst_1
    //   223: anewarray 4	java/lang/Object
    //   226: dup
    //   227: iconst_0
    //   228: aload_3
    //   229: invokevirtual 1231	com/adobe/mobile/am$b:getLocalizedMessage	()Ljava/lang/String;
    //   232: aastore
    //   233: invokestatic 822	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   236: iconst_0
    //   237: istore_0
    //   238: goto -116 -> 122
    //   241: astore_2
    //   242: ldc_w 1233
    //   245: iconst_1
    //   246: anewarray 4	java/lang/Object
    //   249: dup
    //   250: iconst_0
    //   251: aload_2
    //   252: invokevirtual 1231	com/adobe/mobile/am$b:getLocalizedMessage	()Ljava/lang/String;
    //   255: aastore
    //   256: invokestatic 822	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   259: goto -87 -> 172
    // Local variable table:
    //   start	length	slot	name	signature
    //   28	210	0	bool	boolean
    //   3	212	1	localObject1	Object
    //   63	116	2	localObject2	Object
    //   192	11	2	localb1	b
    //   213	4	2	localObject3	Object
    //   241	11	2	localb2	b
    //   133	14	3	localHashMap	HashMap
    //   218	11	3	localb3	b
    // Exception table:
    //   from	to	target	type
    //   16	44	192	com/adobe/mobile/am$b
    //   48	83	192	com/adobe/mobile/am$b
    //   83	94	192	com/adobe/mobile/am$b
    //   98	105	192	com/adobe/mobile/am$b
    //   126	150	192	com/adobe/mobile/am$b
    //   178	189	192	com/adobe/mobile/am$b
    //   219	236	192	com/adobe/mobile/am$b
    //   242	259	192	com/adobe/mobile/am$b
    //   6	16	213	finally
    //   16	44	213	finally
    //   48	83	213	finally
    //   83	94	213	finally
    //   98	105	213	finally
    //   109	122	213	finally
    //   126	150	213	finally
    //   150	172	213	finally
    //   172	174	213	finally
    //   178	189	213	finally
    //   193	210	213	finally
    //   214	216	213	finally
    //   219	236	213	finally
    //   242	259	213	finally
    //   109	122	218	com/adobe/mobile/am$b
    //   150	172	241	com/adobe/mobile/am$b
  }
  
  protected static boolean o()
  {
    return h;
  }
  
  protected static long p()
  {
    return System.currentTimeMillis() / 1000L;
  }
  
  protected static String q()
  {
    Object localObject;
    do
    {
      do
      {
        try
        {
          Resources localResources = s().getResources();
          if (localResources == null) {
            return null;
          }
        }
        catch (b localb)
        {
          a("Config - Error getting application resources for default accepted language. (%s)", new Object[] { localb.getMessage() });
          return null;
        }
        localObject = localb.getConfiguration();
      } while (localObject == null);
      localObject = locale;
    } while (localObject == null);
    return ((Locale)localObject).toString().replace('_', '-');
  }
  
  protected static SharedPreferences.Editor r()
  {
    SharedPreferences.Editor localEditor = a().edit();
    if (localEditor == null) {
      throw new b("Config - Unable to create an instance of a SharedPreferences Editor");
    }
    return localEditor;
  }
  
  protected static Context s()
  {
    if (Y == null) {
      throw new b("Config - No Application Context (Application context must be set prior to calling any library functions.)");
    }
    return Y;
  }
  
  protected static long t()
  {
    long l1 = l.a;
    l1 = System.currentTimeMillis() / 1000L - l1;
    if (l1 < 604800L) {
      return l1;
    }
    return 0L;
  }
  
  protected static Activity u()
  {
    Activity localActivity;
    synchronized (aa)
    {
      if ((Z == null) || (Z.get() == null)) {
        throw new a("Message - No Current Activity (Messages must have a reference to the current activity to work properly)");
      }
    }
    return localActivity;
  }
  
  protected static int v()
  {
    try
    {
      int i1 = ugetResourcesgetConfigurationorientation;
      return i1;
    }
    catch (a locala) {}
    return -1;
  }
  
  private static String w()
  {
    synchronized (n)
    {
      if (m == null) {
        m = "";
      }
      for (;;)
      {
        try
        {
          localObject1 = s().getPackageManager();
          if (localObject1 == null) {
            continue;
          }
          ApplicationInfo localApplicationInfo = ((PackageManager)localObject1).getApplicationInfo(s().getPackageName(), 0);
          if (localApplicationInfo == null) {
            continue;
          }
          if (((PackageManager)localObject1).getApplicationLabel(localApplicationInfo) == null) {
            continue;
          }
          localObject1 = (String)((PackageManager)localObject1).getApplicationLabel(localApplicationInfo);
          m = (String)localObject1;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          Object localObject1;
          b("Analytics - PackageManager couldn't find application name (%s)", new Object[] { localNameNotFoundException.toString() });
          m = "";
          continue;
          localObject2 = finally;
          throw ((Throwable)localObject2);
          b("Analytics - PackageManager was null", new Object[0]);
          m = "";
          continue;
        }
        catch (b localb)
        {
          a("Config - Unable to get package to pull application name. (%s)", new Object[] { localb.getMessage() });
          m = "";
          continue;
        }
        localObject1 = m;
        return (String)localObject1;
        localObject1 = "";
      }
      b("Analytics - ApplicationInfo was null", new Object[0]);
      m = "";
    }
  }
  
  private static int x()
  {
    int i1 = 0;
    synchronized (r)
    {
      int i2 = q;
      if (i2 == -1) {}
      try
      {
        Object localObject2 = s().getPackageManager();
        if (localObject2 == null) {
          break label115;
        }
        localObject2 = ((PackageManager)localObject2).getPackageInfo(s().getPackageName(), 0);
        if (localObject2 == null) {
          break label68;
        }
        if (versionCode > 0) {
          i1 = versionCode;
        }
        q = i1;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          b("Analytics - PackageManager couldn't find application version code (%s)", new Object[] { localNameNotFoundException.toString() });
          q = 0;
          continue;
          localObject3 = finally;
          throw ((Throwable)localObject3);
          b("Analytics - PackageManager was null", new Object[0]);
          q = 0;
        }
      }
      catch (b localb)
      {
        for (;;)
        {
          a("Config - Unable to get package to pull application version code. (%s)", new Object[] { localb.getMessage() });
          q = 0;
        }
      }
      i1 = q;
      return i1;
      label68:
      b("Analytics - PackageInfo was null", new Object[0]);
      q = 0;
    }
  }
  
  private static String y()
  {
    synchronized (A)
    {
      Object localObject2 = z;
      if (localObject2 == null) {}
      try
      {
        localObject2 = s().getResources().getDisplayMetrics();
        z = widthPixels + "x" + heightPixels;
        localObject2 = z;
        return (String)localObject2;
      }
      catch (b localb)
      {
        for (;;)
        {
          a("Config - Error getting device resolution. (%s)", new Object[] { localb.getMessage() });
        }
      }
    }
  }
  
  private static String z()
  {
    synchronized (C)
    {
      String str = B;
      if (str == null) {}
      try
      {
        B = ((TelephonyManager)s().getSystemService("phone")).getNetworkOperatorName();
        str = B;
        return str;
      }
      catch (b localb)
      {
        for (;;)
        {
          a("Config - Error getting device carrier. (%s)", new Object[] { localb.getMessage() });
        }
      }
    }
  }
  
  protected static final class a
    extends Exception
  {
    public a(String paramString)
    {
      super();
    }
  }
  
  protected static final class b
    extends Exception
  {
    public b(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */