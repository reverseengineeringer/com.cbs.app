package com.adobe.a.b;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;

abstract class f
{
  private static final HashMap<String, String> O = new HashMap() {};
  private static final HashMap<String, String> P = new HashMap() {};
  private static final HashSet<String> Q = new HashSet() {};
  private static final HashSet<String> R = new HashSet() {};
  private static final String[] S = { "%00", "%01", "%02", "%03", "%04", "%05", "%06", "%07", "%08", "%09", "%0A", "%0B", "%0C", "%0D", "%0E", "%0F", "%10", "%11", "%12", "%13", "%14", "%15", "%16", "%17", "%18", "%19", "%1A", "%1B", "%1C", "%1D", "%1E", "%1F", "%20", "%21", "%22", "%23", "%24", "%25", "%26", "%27", "%28", "%29", "*", "%2B", "%2C", "-", ".", "%2F", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "%3A", "%3B", "%3C", "%3D", "%3E", "%3F", "%40", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "%5B", "%5C", "%5D", "%5E", "_", "%60", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "%7B", "%7C", "%7D", "%7E", "%7F", "%80", "%81", "%82", "%83", "%84", "%85", "%86", "%87", "%88", "%89", "%8A", "%8B", "%8C", "%8D", "%8E", "%8F", "%90", "%91", "%92", "%93", "%94", "%95", "%96", "%97", "%98", "%99", "%9A", "%9B", "%9C", "%9D", "%9E", "%9F", "%A0", "%A1", "%A2", "%A3", "%A4", "%A5", "%A6", "%A7", "%A8", "%A9", "%AA", "%AB", "%AC", "%AD", "%AE", "%AF", "%B0", "%B1", "%B2", "%B3", "%B4", "%B5", "%B6", "%B7", "%B8", "%B9", "%BA", "%BB", "%BC", "%BD", "%BE", "%BF", "%C0", "%C1", "%C2", "%C3", "%C4", "%C5", "%C6", "%C7", "%C8", "%C9", "%CA", "%CB", "%CC", "%CD", "%CE", "%CF", "%D0", "%D1", "%D2", "%D3", "%D4", "%D5", "%D6", "%D7", "%D8", "%D9", "%DA", "%DB", "%DC", "%DD", "%DE", "%DF", "%E0", "%E1", "%E2", "%E3", "%E4", "%E5", "%E6", "%E7", "%E8", "%E9", "%EA", "%EB", "%EC", "%ED", "%EE", "%EF", "%F0", "%F1", "%F2", "%F3", "%F4", "%F5", "%F6", "%F7", "%F8", "%F9", "%FA", "%FB", "%FC", "%FD", "%FE", "%FF" };
  private String A = null;
  private String B = null;
  private String C = null;
  private String D = null;
  private String E = null;
  private String F = null;
  private String G = null;
  private String H = null;
  private String I = null;
  private String J = null;
  private String K = null;
  private String L = null;
  private int M = 0;
  private int N = 0;
  private SecureRandom T = null;
  private String a = null;
  private String b = null;
  private String c = null;
  protected String d = "JAVA-3.2.6-AN";
  protected String e = null;
  protected String f = null;
  protected boolean g = false;
  protected boolean h = false;
  protected boolean i = true;
  protected int j = 1000;
  protected Hashtable<String, Object> k = null;
  protected Hashtable<String, String> l = new Hashtable();
  protected Hashtable<String, String> m = new Hashtable();
  protected Hashtable<String, String> n = new Hashtable();
  protected Hashtable<String, String> o = new Hashtable();
  protected Hashtable<String, String> p = new Hashtable();
  protected String q = null;
  protected String r = null;
  protected long s = 0L;
  protected boolean t = false;
  private String u = null;
  private String v = null;
  private String w = null;
  private String x = null;
  private String y = null;
  private String z = null;
  
  protected f()
  {
    try
    {
      T = SecureRandom.getInstance("SHA1PRNG");
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      T = null;
      new StringBuilder("Unable to create secure random number generator : ").append(localNoSuchAlgorithmException.getMessage());
    }
  }
  
  private c a(Hashtable<String, Object> paramHashtable, ArrayList<String> paramArrayList)
  {
    c localc = new c();
    Enumeration localEnumeration = paramHashtable.keys();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      if ((paramArrayList == null) || (paramArrayList.contains("contextdata." + str.toLowerCase())))
      {
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
        a(paramHashtable.get(str), localc, localArrayList, 0);
      }
    }
    return localc;
  }
  
  private static String a(Iterable<?> paramIterable, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      localStringBuilder.append(paramIterable.next());
      if (!paramIterable.hasNext()) {
        break;
      }
      localStringBuilder.append(paramString);
    }
    return localStringBuilder.toString();
  }
  
  private static ArrayList<String> a(ArrayList<String> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      String str = ((String)paramArrayList.next()).toLowerCase();
      if (str.equals("contextdata")) {
        return null;
      }
      if (str.contains("contextdata")) {
        localArrayList.add(str);
      }
    }
    if (localArrayList.size() > 0)
    {
      localArrayList.add("contextdata.a.CarrierName");
      localArrayList.add("contextdata.a.OSVersion");
      localArrayList.add("contextdata.a.DeviceName");
      localArrayList.add("contextdata.a.Resolution");
    }
    for (;;)
    {
      return localArrayList;
      localArrayList.add("   ");
    }
  }
  
  private void a()
  {
    I = null;
    J = null;
    K = null;
    L = null;
    M = 0;
    N = 0;
    p.clear();
  }
  
  private final void a(Object paramObject, c paramc, List<String> paramList, int paramInt)
  {
    for (c localc = paramc;; localc = paramc)
    {
      int i1 = paramList.size();
      if (paramInt < i1) {}
      for (String str = (String)paramList.get(paramInt); str == null; str = null) {
        return;
      }
      paramc = new c();
      if (localc.a(str)) {
        paramc = localc.b(str);
      }
      if (i1 - 1 == paramInt)
      {
        a = paramObject;
        localc.a(str, paramc);
        return;
      }
      localc.a(str, paramc);
      paramInt += 1;
    }
  }
  
  private void a(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2)
  {
    paramArrayList2 = paramArrayList2.iterator();
    while (paramArrayList2.hasNext()) {
      paramArrayList1.add(h((String)paramArrayList2.next()));
    }
  }
  
  private void a(Hashtable<String, Object> paramHashtable, String paramString, Object paramObject)
  {
    a(paramHashtable, paramString, paramObject, false);
  }
  
  private void a(Hashtable<String, Object> paramHashtable, String paramString, Object paramObject, boolean paramBoolean)
  {
    if (!a(paramObject)) {
      paramHashtable.remove(paramString);
    }
    while ((!g(paramString)) || (!a(paramObject)) || (((paramObject instanceof ArrayList)) && (((ArrayList)paramObject).size() == 0)) || (((paramObject instanceof Hashtable)) && (((Hashtable)paramObject).size() == 0))) {
      return;
    }
    paramHashtable.put(paramString, paramObject);
  }
  
  private static void a(Hashtable<String, String> paramHashtable, String paramString1, String paramString2)
  {
    if (!g(paramString2))
    {
      paramHashtable.remove(paramString1);
      return;
    }
    paramHashtable.put(paramString1, paramString2);
  }
  
  private void a(Hashtable<String, Object> paramHashtable1, Hashtable<String, Object> paramHashtable2)
  {
    for (;;)
    {
      try
      {
        if (!g(a)) {
          return;
        }
        if (paramHashtable1 == null) {
          break label1451;
        }
        paramHashtable1 = (Hashtable)paramHashtable1.clone();
        if (paramHashtable2 == null) {
          break label1446;
        }
        paramHashtable2 = (Hashtable)paramHashtable2.clone();
        if (!g(a))
        {
          paramHashtable1 = null;
          a(paramHashtable1);
          a();
          return;
        }
      }
      finally {}
      Object localObject1 = new Hashtable();
      k.put("a.Resolution", d());
      k.put("a.DeviceName", e());
      k.put("a.OSVersion", f());
      k.put("a.CarrierName", g());
      Object localObject2;
      if (g(L))
      {
        localObject2 = new Hashtable();
        a((Hashtable)localObject2, "ce", c);
        a((Hashtable)localObject2, "mtp", L);
        a((Hashtable)localObject2, "mtss", Integer.valueOf(M));
        a((Hashtable)localObject2, "mti", Integer.valueOf(N));
        c((Hashtable)localObject2, l);
        c((Hashtable)localObject2, m);
        b((Hashtable)localObject1, (Hashtable)localObject2);
        a((Hashtable)localObject1, paramHashtable1, paramHashtable2);
        if (!((Hashtable)localObject1).containsKey("ce")) {
          a((Hashtable)localObject1, "ce", h());
        }
        paramHashtable1 = new Date();
        if ((s != 0L) || (!i)) {
          break label1374;
        }
        a((Hashtable)localObject1, "ts", Math.floor(Calendar.getInstance().getTime().getTime() / 1000.0D));
        label338:
        paramHashtable2 = Calendar.getInstance();
        paramHashtable2.setTime(paramHashtable1);
        paramHashtable1 = new StringBuilder().append(paramHashtable2.get(5)).append("/").append(paramHashtable2.get(2)).append("/").append(paramHashtable2.get(1)).append(" ").append(paramHashtable2.get(11)).append(":").append(paramHashtable2.get(12)).append(":").append(paramHashtable2.get(13)).append(" ").append(paramHashtable2.get(7) - 1).append(" ");
        localObject2 = paramHashtable2.getTimeZone();
        i1 = paramHashtable2.get(1);
        int i2 = paramHashtable2.get(2);
        int i3 = paramHashtable2.get(5);
        int i4 = paramHashtable2.get(7);
        int i5 = paramHashtable2.get(11);
        int i6 = paramHashtable2.get(12);
        int i7 = paramHashtable2.get(13);
        a((Hashtable)localObject1, "t", ((TimeZone)localObject2).getOffset(1, i1, i2, i3, i4, paramHashtable2.get(14) + ((i5 * 60 + i6) * 60 + i7) * 1000) / 60000 * -1);
        new StringBuilder("Hit Parameters : ").append(((Hashtable)localObject1).toString());
        if (T == null) {
          break label1441;
        }
      }
      label767:
      label1374:
      label1434:
      label1441:
      for (int i1 = T.nextInt(100000000) + 1;; i1 = 0)
      {
        paramHashtable2 = "s" + i1;
        localObject1 = b((Hashtable)localObject1);
        if (!g(b))
        {
          paramHashtable1 = "";
          localObject2 = new ArrayList(Arrays.asList(a.split("[,]")));
          if (((ArrayList)localObject2).size() > 0) {
            paramHashtable1 = (String)((ArrayList)localObject2).get(0);
          }
          paramHashtable1 = paramHashtable1.replace(".", "-").replace("_", "-");
          if (g(r))
          {
            r = r.toLowerCase();
            if ((r.equals("dc2")) || (r.equals("122"))) {
              r = "122";
            }
            b = (paramHashtable1 + "." + r + ".2o7.net");
          }
        }
        else
        {
          localObject2 = b;
          if (!g) {
            break label1434;
          }
        }
        for (paramHashtable1 = "https";; paramHashtable1 = "http")
        {
          paramHashtable1 = paramHashtable1 + "://" + (String)localObject2 + "/b/ss/" + j(a) + "/0/" + d + "/" + paramHashtable2 + "?AQB=1&ndh=1" + (String)localObject1 + "&AQE=1";
          break;
          if ((g(K)) && ((g(I)) || (g(J))))
          {
            K = K.toLowerCase();
            if ((!K.equalsIgnoreCase("d")) && (!K.equalsIgnoreCase("e"))) {
              K = "o";
            }
            a((Hashtable)localObject1, "pe", "lnk_" + K);
            a((Hashtable)localObject1, "pev1", I);
            a((Hashtable)localObject1, "pev2", J);
          }
          localObject2 = new Hashtable();
          if (f != null) {
            a((Hashtable)localObject2, "vid", f);
          }
          for (;;)
          {
            a((Hashtable)localObject2, "ce", c);
            a((Hashtable)localObject2, "pageName", x);
            a((Hashtable)localObject2, "cc", u);
            a((Hashtable)localObject2, "purchaseID", v);
            a((Hashtable)localObject2, "xact", w);
            a((Hashtable)localObject2, "ch", y);
            a((Hashtable)localObject2, "server", z);
            a((Hashtable)localObject2, "v0", A);
            a((Hashtable)localObject2, "zip", D);
            a((Hashtable)localObject2, "state", E);
            a((Hashtable)localObject2, "products", B);
            c((Hashtable)localObject2, m);
            c((Hashtable)localObject2, l);
            c((Hashtable)localObject2, n);
            c((Hashtable)localObject2, o);
            c((Hashtable)localObject2, p);
            b((Hashtable)localObject1, (Hashtable)localObject2);
            b((Hashtable)localObject1, paramHashtable1, paramHashtable2);
            if (!((Hashtable)localObject1).containsKey("vid")) {
              a((Hashtable)localObject1, "vid", e);
            }
            if (!((Hashtable)localObject1).containsKey("ce")) {
              a((Hashtable)localObject1, "ce", h());
            }
            if ((((Hashtable)localObject1).containsKey("pageName")) || (((Hashtable)localObject1).containsKey("g"))) {
              break;
            }
            a((Hashtable)localObject1, "pageName", c());
            break;
            a((Hashtable)localObject2, "vid", e);
          }
          if (s == 0L) {
            break label338;
          }
          paramHashtable1 = new Date(s);
          a((Hashtable)localObject1, "ts", s);
          break label338;
          r = "112";
          break label767;
        }
      }
      label1446:
      paramHashtable2 = null;
      continue;
      label1451:
      paramHashtable1 = null;
    }
  }
  
  private void a(Hashtable<String, Object> paramHashtable1, Hashtable<String, Object> paramHashtable2, ArrayList<String> paramArrayList)
  {
    Hashtable localHashtable = new Hashtable();
    localHashtable.putAll(k);
    if (paramHashtable2 != null)
    {
      Enumeration localEnumeration = paramHashtable2.keys();
      while (localEnumeration.hasMoreElements())
      {
        String str = (String)localEnumeration.nextElement();
        Object localObject = paramHashtable2.get(str);
        localHashtable.put(i(str), localObject);
      }
    }
    a(paramHashtable1, "c", a(localHashtable, paramArrayList));
  }
  
  private void a(Hashtable<String, Object> paramHashtable1, Hashtable<String, Object> paramHashtable2, Hashtable<String, Object> paramHashtable3)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    if (g(F)) {
      localArrayList2.addAll(Arrays.asList(F.split("[,]")));
    }
    Object localObject = new Hashtable();
    if (paramHashtable3 != null)
    {
      Enumeration localEnumeration = paramHashtable3.keys();
      while (localEnumeration.hasMoreElements())
      {
        String str1 = (String)localEnumeration.nextElement();
        if (str1.equalsIgnoreCase("lightTrackVars"))
        {
          str2 = k((String)paramHashtable3.get("lightTrackVars"));
          if (g(str2))
          {
            localArrayList2.clear();
            localArrayList2.addAll(Arrays.asList(str2.split("[,]")));
          }
        }
        String str2 = h(str1);
        if (R.contains(str2)) {
          ((Hashtable)localObject).put(str2, paramHashtable3.get(str1));
        }
      }
    }
    a(localArrayList1, localArrayList2);
    b(paramHashtable1, (Hashtable)localObject);
    paramHashtable3 = null;
    if (localArrayList1.size() > 0)
    {
      localArrayList1.addAll(d.b);
      paramHashtable3 = paramHashtable1.keys();
      while (paramHashtable3.hasMoreElements())
      {
        localObject = (String)paramHashtable3.nextElement();
        if (!localArrayList1.contains(localObject)) {
          paramHashtable1.remove(localObject);
        }
      }
      paramHashtable3 = a(localArrayList2);
    }
    a(paramHashtable1, paramHashtable2, paramHashtable3);
  }
  
  private static boolean a(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (b(paramObject)) {
        return g((String)paramObject);
      }
      if (!c(paramObject)) {
        break;
      }
    } while (((Integer)paramObject).intValue() == 0);
    return true;
    if (d(paramObject)) {
      return ((Boolean)paramObject).booleanValue();
    }
    return true;
  }
  
  private String b(Hashtable<String, Object> paramHashtable)
  {
    StringBuilder localStringBuilder = new StringBuilder(1024);
    paramHashtable = paramHashtable.entrySet().iterator();
    while (paramHashtable.hasNext())
    {
      Object localObject = (Map.Entry)paramHashtable.next();
      String str1 = j((String)((Map.Entry)localObject).getKey());
      localObject = ((Map.Entry)localObject).getValue();
      if (((localObject instanceof String)) && (g((String)localObject)))
      {
        localObject = (String)localObject;
        localStringBuilder.append("&");
        localStringBuilder.append(str1);
        localStringBuilder.append("=");
        localStringBuilder.append(j((String)localObject));
      }
      else if ((localObject instanceof c))
      {
        int i2 = 0;
        localObject = (c)localObject;
        int i1 = i2;
        if ((a instanceof String))
        {
          i1 = i2;
          if (g((String)a))
          {
            i1 = 1;
            localStringBuilder.append("&");
            localStringBuilder.append(str1);
            localStringBuilder.append("=");
            localStringBuilder.append(j((String)a));
          }
        }
        if (b.size() > 0)
        {
          localStringBuilder.append("&");
          localStringBuilder.append(str1);
          localStringBuilder.append(".");
          localStringBuilder.append(b(b));
          localStringBuilder.append("&.");
          localStringBuilder.append(str1);
        }
        else if ((a(a)) && (i1 == 0))
        {
          localStringBuilder.append("&");
          localStringBuilder.append(str1);
          localStringBuilder.append("=");
          localStringBuilder.append(j(a.toString()));
        }
      }
      else if ((localObject instanceof ArrayList))
      {
        localObject = (ArrayList)localObject;
        if (((ArrayList)localObject).size() > 0)
        {
          localObject = a((Iterable)localObject, ",");
          localStringBuilder.append("&");
          localStringBuilder.append(str1);
          localStringBuilder.append("=");
          localStringBuilder.append(j(((String)localObject).toString()));
        }
      }
      else
      {
        String str2 = localObject.toString();
        new StringBuilder("Object for parameter \"").append(str1).append("\" is of class ").append(localObject.getClass().getSimpleName()).append(".");
        new StringBuilder("We recommend using strings where possible, but we are sending this parameter with a value of ").append(str2).append(".");
        localStringBuilder.append("&");
        localStringBuilder.append(str1);
        localStringBuilder.append("=");
        localStringBuilder.append(j(str2));
      }
    }
    return localStringBuilder.toString();
  }
  
  private void b(Hashtable<String, Object> paramHashtable1, Hashtable<String, Object> paramHashtable2)
  {
    Enumeration localEnumeration = paramHashtable2.keys();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      a(paramHashtable1, str, paramHashtable2.get(str), false);
    }
  }
  
  private void b(Hashtable<String, Object> paramHashtable1, Hashtable<String, Object> paramHashtable2, Hashtable<String, Object> paramHashtable3)
  {
    Object localObject4 = null;
    Object localObject3 = null;
    ArrayList localArrayList3 = new ArrayList();
    ArrayList localArrayList4 = new ArrayList();
    if (g(G)) {
      localArrayList4.addAll(Arrays.asList(G.split("[,]")));
    }
    ArrayList localArrayList1 = new ArrayList();
    if (g(H)) {
      localArrayList1.addAll(Arrays.asList(H.split("[,]")));
    }
    ArrayList localArrayList2 = new ArrayList();
    if (g(C)) {
      localArrayList2.addAll(Arrays.asList(C.split("[,]")));
    }
    Object localObject1 = new Hashtable();
    Object localObject2;
    if (paramHashtable3 != null)
    {
      localObject2 = paramHashtable3.keys();
      while (((Enumeration)localObject2).hasMoreElements())
      {
        String str1 = (String)((Enumeration)localObject2).nextElement();
        if (str1.equalsIgnoreCase("linkTrackEvents"))
        {
          str1 = k((String)paramHashtable3.get("linkTrackEvents"));
          if (g(str1))
          {
            localArrayList1.clear();
            localArrayList1.addAll(Arrays.asList(str1.split("[,]")));
          }
        }
        else if (str1.equalsIgnoreCase("events"))
        {
          str1 = k((String)paramHashtable3.get("events"));
          if (g(str1))
          {
            localArrayList2.clear();
            localArrayList2.addAll(Arrays.asList(str1.split("[,]")));
          }
        }
        else if (str1.equalsIgnoreCase("linkTrackVars"))
        {
          str1 = k((String)paramHashtable3.get("linkTrackVars"));
          if (g(str1))
          {
            localArrayList4.clear();
            localArrayList4.addAll(Arrays.asList(str1.split("[,]")));
          }
        }
        else
        {
          String str2 = h(str1);
          if (Q.contains(str2)) {
            ((Hashtable)localObject1).put(str2, paramHashtable3.get(str1));
          }
        }
      }
    }
    a(localArrayList3, localArrayList4);
    b(paramHashtable1, (Hashtable)localObject1);
    if (paramHashtable1.containsKey("pe")) {}
    for (localObject1 = (String)paramHashtable1.get("pe");; localObject1 = null)
    {
      localObject2 = localObject1;
      if (paramHashtable3 != null)
      {
        localObject2 = localObject1;
        if (paramHashtable3.containsKey("pe")) {
          localObject2 = (String)paramHashtable3.get("pe");
        }
      }
      if (!g((String)localObject2))
      {
        localObject1 = localObject4;
        if (!g(K)) {}
      }
      else
      {
        paramHashtable3 = (Hashtable<String, Object>)localObject3;
        if (localArrayList3.size() > 0)
        {
          localArrayList3.addAll(d.a);
          paramHashtable3 = paramHashtable1.keys();
          while (paramHashtable3.hasMoreElements())
          {
            localObject1 = (String)paramHashtable3.nextElement();
            if (!localArrayList3.contains(localObject1)) {
              paramHashtable1.remove(localObject1);
            }
          }
          paramHashtable3 = a(localArrayList4);
        }
        localObject1 = paramHashtable3;
        if (localArrayList1.size() > 0)
        {
          localObject1 = new ArrayList();
          ((ArrayList)localObject1).addAll(localArrayList2);
          localObject2 = ((ArrayList)localObject1).iterator();
          for (;;)
          {
            localObject1 = paramHashtable3;
            if (!((Iterator)localObject2).hasNext()) {
              break;
            }
            localObject1 = (String)((Iterator)localObject2).next();
            if (!localArrayList1.contains(localObject1)) {
              localArrayList2.remove(localObject1);
            }
          }
        }
      }
      a(paramHashtable1, paramHashtable2, (ArrayList)localObject1);
      a(paramHashtable1, "events", localArrayList2);
      return;
    }
  }
  
  private static boolean b(Object paramObject)
  {
    boolean bool = false;
    try
    {
      paramObject = (String)paramObject;
      if (paramObject != null) {
        bool = true;
      }
      return bool;
    }
    catch (Exception paramObject) {}
    return false;
  }
  
  private void c(Hashtable<String, Object> paramHashtable, Hashtable<String, String> paramHashtable1)
  {
    Enumeration localEnumeration = paramHashtable1.keys();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      a(paramHashtable, str, paramHashtable1.get(str));
    }
  }
  
  private static boolean c(Object paramObject)
  {
    boolean bool = false;
    try
    {
      paramObject = (Integer)paramObject;
      if (paramObject != null) {
        bool = true;
      }
      return bool;
    }
    catch (Exception paramObject) {}
    return false;
  }
  
  private static boolean d(Object paramObject)
  {
    boolean bool = false;
    try
    {
      paramObject = (Boolean)paramObject;
      if (paramObject != null) {
        bool = true;
      }
      return bool;
    }
    catch (Exception paramObject) {}
    return false;
  }
  
  protected static boolean g(String paramString)
  {
    if (paramString == null) {}
    while (paramString.length() == 0) {
      return false;
    }
    return true;
  }
  
  private static String h(String paramString)
  {
    Object localObject = O.keySet().iterator();
    String str1;
    String str2;
    while (((Iterator)localObject).hasNext())
    {
      str1 = (String)((Iterator)localObject).next();
      if (paramString.toLowerCase().startsWith(str1)) {
        str2 = paramString.substring(str1.length());
      }
    }
    do
    {
      try
      {
        if (Integer.parseInt(str2) <= 0) {
          break;
        }
        localObject = (String)O.get(str1) + str2;
        paramString = (String)localObject;
        return paramString;
      }
      catch (NumberFormatException localNumberFormatException) {}
      localObject = paramString.toLowerCase();
    } while (!P.containsKey(localObject));
    return (String)P.get(localObject);
    return paramString;
  }
  
  private static String i(String paramString)
  {
    return paramString.replaceAll("[^a-zA-Z0-9.]", "");
  }
  
  private static String j(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = paramString.getBytes("UTF-8");
      int i2 = paramString.length;
      StringBuilder localStringBuilder = new StringBuilder(i2 << 1);
      int i1 = 0;
      while (i1 < i2)
      {
        localStringBuilder.append(S[(paramString[i1] & 0xFF)]);
        i1 += 1;
      }
      paramString = localStringBuilder.toString();
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      new StringBuilder("UnsupportedEncodingException : ").append(paramString.getMessage());
    }
    return null;
  }
  
  private static String k(String paramString)
  {
    if (!g(paramString)) {
      return paramString;
    }
    return paramString.replaceAll(" ", "");
  }
  
  public final void a(int paramInt, String paramString)
  {
    if (d.a(paramInt))
    {
      String str = "v" + paramInt;
      a(l, str, paramString);
    }
  }
  
  protected abstract void a(String paramString);
  
  public final void a(String paramString1, String paramString2)
  {
    c(paramString1);
    b = paramString2;
  }
  
  public final void a(String paramString1, String paramString2, Hashtable<String, Object> paramHashtable1, Hashtable<String, Object> paramHashtable2)
  {
    I = null;
    K = paramString1;
    J = paramString2;
    a(paramHashtable1, paramHashtable2);
  }
  
  public final void a(String paramString, Hashtable<String, Object> paramHashtable)
  {
    Hashtable localHashtable = new Hashtable();
    localHashtable.put("pageName", paramString);
    a(paramHashtable, localHashtable);
  }
  
  public final void a(Hashtable<String, Object> paramHashtable)
  {
    if (k == null) {
      k = new Hashtable();
    }
    k.clear();
    Enumeration localEnumeration = paramHashtable.keys();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      Object localObject = paramHashtable.get(str);
      k.put(i(str), localObject);
    }
  }
  
  public final void b(int paramInt, String paramString)
  {
    if (d.b(paramInt))
    {
      String str = "c" + paramInt;
      a(m, str, paramString);
    }
  }
  
  public final void b(String paramString)
  {
    b(paramString, null);
  }
  
  public final void b(String paramString, Hashtable<String, Object> paramHashtable)
  {
    Hashtable localHashtable = new Hashtable();
    localHashtable.put("events", paramString);
    a("o", c() + " Event", paramHashtable, localHashtable);
  }
  
  protected abstract String c();
  
  public final void c(String paramString)
  {
    try
    {
      a = k(paramString);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public Object clone()
  {
    throw new CloneNotSupportedException();
  }
  
  protected abstract String d();
  
  public final void d(String paramString)
  {
    x = paramString;
  }
  
  protected abstract String e();
  
  public final void e(String paramString)
  {
    A = paramString;
  }
  
  protected abstract String f();
  
  public final void f(String paramString)
  {
    C = k(paramString);
  }
  
  protected abstract String g();
  
  protected abstract String h();
  
  public final void j()
  {
    a(null, null);
  }
  
  public final void k()
  {
    a();
    v = null;
    w = null;
    x = null;
    y = null;
    z = null;
    A = null;
    C = null;
    B = null;
    D = null;
    E = null;
    F = null;
    G = null;
    H = null;
    l.clear();
    m.clear();
    n.clear();
    o.clear();
    k.clear();
  }
  
  public final String l()
  {
    return d;
  }
  
  public final void m()
  {
    g = false;
  }
  
  public final String n()
  {
    return x;
  }
}

/* Location:
 * Qualified Name:     com.adobe.a.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */