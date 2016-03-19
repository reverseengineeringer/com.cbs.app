package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.BufferedOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class cj
  implements ci
{
  private final Context a;
  private final VersionInfoParcel b;
  
  public cj(Context paramContext, VersionInfoParcel paramVersionInfoParcel)
  {
    a = paramContext;
    b = paramVersionInfoParcel;
  }
  
  private static b a(JSONObject paramJSONObject)
  {
    String str1 = paramJSONObject.optString("http_request_id");
    Object localObject1 = paramJSONObject.optString("url");
    String str2 = paramJSONObject.optString("post_body", null);
    try
    {
      localObject1 = new URL((String)localObject1);
      localArrayList = new ArrayList();
      Object localObject2 = paramJSONObject.optJSONArray("headers");
      paramJSONObject = (JSONObject)localObject2;
      if (localObject2 == null) {
        paramJSONObject = new JSONArray();
      }
      int i = 0;
      while (i < paramJSONObject.length())
      {
        localObject2 = paramJSONObject.optJSONObject(i);
        if (localObject2 != null) {
          localArrayList.add(new a(((JSONObject)localObject2).optString("key"), ((JSONObject)localObject2).optString("value")));
        }
        i += 1;
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      ArrayList localArrayList;
      URL localURL;
      for (;;)
      {
        b.a("Error constructing http request.", localMalformedURLException);
        localURL = null;
      }
      return new b(str1, localURL, localArrayList, str2);
    }
  }
  
  private c a(b paramb)
  {
    HttpURLConnection localHttpURLConnection;
    try
    {
      localHttpURLConnection = (HttpURLConnection)paramb.b().openConnection();
      o.e().a(a, b.b, false, localHttpURLConnection);
      localObject1 = paramb.c().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (a)((Iterator)localObject1).next();
        localHttpURLConnection.addRequestProperty(((a)localObject2).a(), ((a)localObject2).b());
      }
      if (TextUtils.isEmpty(paramb.d())) {
        break label150;
      }
    }
    catch (Exception paramb)
    {
      return new c(false, null, paramb.toString());
    }
    localHttpURLConnection.setDoOutput(true);
    Object localObject1 = paramb.d().getBytes();
    localHttpURLConnection.setFixedLengthStreamingMode(localObject1.length);
    Object localObject2 = new BufferedOutputStream(localHttpURLConnection.getOutputStream());
    ((BufferedOutputStream)localObject2).write((byte[])localObject1);
    ((BufferedOutputStream)localObject2).close();
    label150:
    localObject1 = new ArrayList();
    if (localHttpURLConnection.getHeaderFields() != null)
    {
      localObject2 = localHttpURLConnection.getHeaderFields().entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        Iterator localIterator = ((List)localEntry.getValue()).iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          ((ArrayList)localObject1).add(new a((String)localEntry.getKey(), str));
        }
      }
    }
    paramb = paramb.a();
    int i = localHttpURLConnection.getResponseCode();
    o.e();
    paramb = new c(true, new d(paramb, i, (List)localObject1, gw.a(new InputStreamReader(localHttpURLConnection.getInputStream()))), null);
    return paramb;
  }
  
  private static JSONObject a(d paramd)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("http_request_id", paramd.a());
      if (paramd.d() != null) {
        localJSONObject.put("body", paramd.d());
      }
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = paramd.c().iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        localJSONArray.put(new JSONObject().put("key", locala.a()).put("value", locala.b()));
      }
      localJSONObject.put("headers", localJSONArray);
    }
    catch (JSONException paramd)
    {
      b.a("Error constructing JSON for http response.", paramd);
      return localJSONObject;
    }
    localJSONObject.put("response_code", paramd.b());
    return localJSONObject;
  }
  
  /* Error */
  public final JSONObject a(String paramString)
  {
    // Byte code:
    //   0: new 38	org/json/JSONObject
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 267	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   8: astore 4
    //   10: new 38	org/json/JSONObject
    //   13: dup
    //   14: invokespecial 239	org/json/JSONObject:<init>	()V
    //   17: astore_3
    //   18: ldc_w 269
    //   21: astore_1
    //   22: aload 4
    //   24: ldc 36
    //   26: invokevirtual 42	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   29: astore_2
    //   30: aload_2
    //   31: astore_1
    //   32: aload_0
    //   33: aload 4
    //   35: invokestatic 271	com/google/android/gms/internal/cj:a	(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/cj$b;
    //   38: invokespecial 273	com/google/android/gms/internal/cj:a	(Lcom/google/android/gms/internal/cj$b;)Lcom/google/android/gms/internal/cj$c;
    //   41: astore 4
    //   43: aload_2
    //   44: astore_1
    //   45: aload 4
    //   47: invokevirtual 275	com/google/android/gms/internal/cj$c:c	()Z
    //   50: ifeq +67 -> 117
    //   53: aload_2
    //   54: astore_1
    //   55: aload_3
    //   56: ldc_w 277
    //   59: aload 4
    //   61: invokevirtual 280	com/google/android/gms/internal/cj$c:b	()Lcom/google/android/gms/internal/cj$d;
    //   64: invokestatic 282	com/google/android/gms/internal/cj:a	(Lcom/google/android/gms/internal/cj$d;)Lorg/json/JSONObject;
    //   67: invokevirtual 244	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   70: pop
    //   71: aload_2
    //   72: astore_1
    //   73: aload_3
    //   74: ldc_w 284
    //   77: iconst_1
    //   78: invokevirtual 287	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   81: pop
    //   82: aload_3
    //   83: areturn
    //   84: astore_1
    //   85: ldc_w 289
    //   88: invokestatic 291	com/google/android/gms/ads/internal/util/client/b:a	(Ljava/lang/String;)V
    //   91: new 38	org/json/JSONObject
    //   94: dup
    //   95: invokespecial 239	org/json/JSONObject:<init>	()V
    //   98: ldc_w 284
    //   101: iconst_0
    //   102: invokevirtual 287	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   105: astore_1
    //   106: aload_1
    //   107: areturn
    //   108: astore_1
    //   109: new 38	org/json/JSONObject
    //   112: dup
    //   113: invokespecial 239	org/json/JSONObject:<init>	()V
    //   116: areturn
    //   117: aload_2
    //   118: astore_1
    //   119: aload_3
    //   120: ldc_w 277
    //   123: new 38	org/json/JSONObject
    //   126: dup
    //   127: invokespecial 239	org/json/JSONObject:<init>	()V
    //   130: ldc 36
    //   132: aload_2
    //   133: invokevirtual 244	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   136: invokevirtual 244	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   139: pop
    //   140: aload_2
    //   141: astore_1
    //   142: aload_3
    //   143: ldc_w 284
    //   146: iconst_0
    //   147: invokevirtual 287	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   150: pop
    //   151: aload_2
    //   152: astore_1
    //   153: aload_3
    //   154: ldc_w 293
    //   157: aload 4
    //   159: invokevirtual 294	com/google/android/gms/internal/cj$c:a	()Ljava/lang/String;
    //   162: invokevirtual 244	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   165: pop
    //   166: aload_3
    //   167: areturn
    //   168: astore_2
    //   169: aload_3
    //   170: ldc_w 277
    //   173: new 38	org/json/JSONObject
    //   176: dup
    //   177: invokespecial 239	org/json/JSONObject:<init>	()V
    //   180: ldc 36
    //   182: aload_1
    //   183: invokevirtual 244	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   186: invokevirtual 244	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   189: pop
    //   190: aload_3
    //   191: ldc_w 284
    //   194: iconst_0
    //   195: invokevirtual 287	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   198: pop
    //   199: aload_3
    //   200: ldc_w 293
    //   203: aload_2
    //   204: invokevirtual 151	java/lang/Exception:toString	()Ljava/lang/String;
    //   207: invokevirtual 244	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   210: pop
    //   211: aload_3
    //   212: areturn
    //   213: astore_1
    //   214: aload_3
    //   215: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	216	0	this	cj
    //   0	216	1	paramString	String
    //   29	123	2	str	String
    //   168	36	2	localException	Exception
    //   17	198	3	localJSONObject	JSONObject
    //   8	150	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	10	84	org/json/JSONException
    //   91	106	108	org/json/JSONException
    //   22	30	168	java/lang/Exception
    //   32	43	168	java/lang/Exception
    //   45	53	168	java/lang/Exception
    //   55	71	168	java/lang/Exception
    //   73	82	168	java/lang/Exception
    //   119	140	168	java/lang/Exception
    //   142	151	168	java/lang/Exception
    //   153	166	168	java/lang/Exception
    //   169	211	213	org/json/JSONException
  }
  
  public final void a(hs paramhs, Map<String, String> paramMap)
  {
    gv.a(new cj.1(this, paramMap, paramhs));
  }
  
  @fs
  static final class a
  {
    private final String a;
    private final String b;
    
    public a(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
    
    public final String a()
    {
      return a;
    }
    
    public final String b()
    {
      return b;
    }
  }
  
  @fs
  static final class b
  {
    private final String a;
    private final URL b;
    private final ArrayList<cj.a> c;
    private final String d;
    
    public b(String paramString1, URL paramURL, ArrayList<cj.a> paramArrayList, String paramString2)
    {
      a = paramString1;
      b = paramURL;
      c = paramArrayList;
      d = paramString2;
    }
    
    public final String a()
    {
      return a;
    }
    
    public final URL b()
    {
      return b;
    }
    
    public final ArrayList<cj.a> c()
    {
      return c;
    }
    
    public final String d()
    {
      return d;
    }
  }
  
  @fs
  final class c
  {
    private final cj.d b;
    private final boolean c;
    private final String d;
    
    public c(boolean paramBoolean, cj.d paramd, String paramString)
    {
      c = paramBoolean;
      b = paramd;
      d = paramString;
    }
    
    public final String a()
    {
      return d;
    }
    
    public final cj.d b()
    {
      return b;
    }
    
    public final boolean c()
    {
      return c;
    }
  }
  
  @fs
  static final class d
  {
    private final String a;
    private final int b;
    private final List<cj.a> c;
    private final String d;
    
    public d(String paramString1, int paramInt, List<cj.a> paramList, String paramString2)
    {
      a = paramString1;
      b = paramInt;
      c = paramList;
      d = paramString2;
    }
    
    public final String a()
    {
      return a;
    }
    
    public final int b()
    {
      return b;
    }
    
    public final Iterable<cj.a> c()
    {
      return c;
    }
    
    public final String d()
    {
      return d;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */