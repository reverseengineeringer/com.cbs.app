package com.adobe.adobepass.accessenabler.api;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.CookieManager;
import com.adobe.adobepass.accessenabler.a.h;
import com.adobe.adobepass.accessenabler.a.j;
import com.adobe.adobepass.accessenabler.a.k;
import com.adobe.adobepass.accessenabler.d.f;
import com.google.e.l;
import com.google.e.n;
import java.io.IOException;
import java.io.StringReader;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicNameValuePair;

public class AccessEnablerService
  extends IntentService
{
  protected static boolean a = true;
  private static Queue<b> e = new LinkedList();
  private final String b = "AccessEnablerService";
  private d c;
  private b d;
  private a[] f = { new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.a(AccessEnablerService.this, paramAnonymousBundle);
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.b(AccessEnablerService.this, paramAnonymousBundle);
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.a(AccessEnablerService.this);
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.c(AccessEnablerService.this, paramAnonymousBundle);
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      b();
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.d(AccessEnablerService.this, paramAnonymousBundle);
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.e(AccessEnablerService.this, paramAnonymousBundle);
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.f(AccessEnablerService.this, paramAnonymousBundle);
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.b(AccessEnablerService.this);
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.g(AccessEnablerService.this, paramAnonymousBundle);
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.c(AccessEnablerService.this);
    }
  }, new a()new a
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      AccessEnablerService.h(AccessEnablerService.this, paramAnonymousBundle);
    }
  }, new a()
  {
    public final void a(Bundle paramAnonymousBundle)
    {
      a();
    }
  } };
  
  public AccessEnablerService()
  {
    super("AccessEnablerService");
  }
  
  /* Error */
  private static String a(HttpResponse paramHttpResponse)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: ldc 90
    //   5: invokeinterface 96 2 0
    //   10: astore 5
    //   12: iload_3
    //   13: istore_2
    //   14: aload 5
    //   16: ifnull +59 -> 75
    //   19: iload_3
    //   20: istore_2
    //   21: aload 5
    //   23: arraylength
    //   24: ifle +51 -> 75
    //   27: aload 5
    //   29: arraylength
    //   30: istore 4
    //   32: iconst_0
    //   33: istore_1
    //   34: iload_3
    //   35: istore_2
    //   36: iload_1
    //   37: iload 4
    //   39: if_icmpge +36 -> 75
    //   42: aload 5
    //   44: iload_1
    //   45: aaload
    //   46: astore 6
    //   48: aload 6
    //   50: invokeinterface 102 1 0
    //   55: ifnull +172 -> 227
    //   58: ldc 104
    //   60: aload 6
    //   62: invokeinterface 102 1 0
    //   67: invokevirtual 110	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   70: ifeq +157 -> 227
    //   73: iconst_1
    //   74: istore_2
    //   75: aload_0
    //   76: invokeinterface 114 1 0
    //   81: invokeinterface 120 1 0
    //   86: astore 6
    //   88: aload 6
    //   90: astore 5
    //   92: iload_2
    //   93: ifeq +21 -> 114
    //   96: aload 6
    //   98: astore 7
    //   100: aload 6
    //   102: astore_0
    //   103: new 122	java/util/zip/GZIPInputStream
    //   106: dup
    //   107: aload 6
    //   109: invokespecial 125	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   112: astore 5
    //   114: aload 5
    //   116: astore 7
    //   118: aload 5
    //   120: astore_0
    //   121: new 127	java/io/ByteArrayOutputStream
    //   124: dup
    //   125: invokespecial 128	java/io/ByteArrayOutputStream:<init>	()V
    //   128: astore 6
    //   130: aload 5
    //   132: astore 7
    //   134: aload 5
    //   136: astore_0
    //   137: sipush 1024
    //   140: newarray <illegal type>
    //   142: astore 8
    //   144: aload 5
    //   146: astore 7
    //   148: aload 5
    //   150: astore_0
    //   151: aload 5
    //   153: aload 8
    //   155: invokevirtual 134	java/io/InputStream:read	([B)I
    //   158: istore_1
    //   159: iload_1
    //   160: iconst_m1
    //   161: if_icmpeq +73 -> 234
    //   164: aload 5
    //   166: astore 7
    //   168: aload 5
    //   170: astore_0
    //   171: aload 6
    //   173: aload 8
    //   175: iconst_0
    //   176: iload_1
    //   177: invokevirtual 138	java/io/ByteArrayOutputStream:write	([BII)V
    //   180: goto -36 -> 144
    //   183: astore 5
    //   185: aload 7
    //   187: astore_0
    //   188: ldc 63
    //   190: new 140	java/lang/StringBuilder
    //   193: dup
    //   194: ldc -114
    //   196: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   199: aload 5
    //   201: invokevirtual 146	java/lang/Exception:toString	()Ljava/lang/String;
    //   204: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   210: invokestatic 156	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   213: aload 7
    //   215: ifnull +8 -> 223
    //   218: aload 7
    //   220: invokevirtual 159	java/io/InputStream:close	()V
    //   223: aconst_null
    //   224: astore_0
    //   225: aload_0
    //   226: areturn
    //   227: iload_1
    //   228: iconst_1
    //   229: iadd
    //   230: istore_1
    //   231: goto -197 -> 34
    //   234: aload 5
    //   236: astore 7
    //   238: aload 5
    //   240: astore_0
    //   241: new 106	java/lang/String
    //   244: dup
    //   245: aload 6
    //   247: invokevirtual 163	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   250: invokespecial 166	java/lang/String:<init>	([B)V
    //   253: astore 6
    //   255: aload 6
    //   257: astore_0
    //   258: aload 5
    //   260: ifnull -35 -> 225
    //   263: aload 5
    //   265: invokevirtual 159	java/io/InputStream:close	()V
    //   268: aload 6
    //   270: areturn
    //   271: astore 5
    //   273: aconst_null
    //   274: astore_0
    //   275: aload_0
    //   276: ifnull +7 -> 283
    //   279: aload_0
    //   280: invokevirtual 159	java/io/InputStream:close	()V
    //   283: aload 5
    //   285: athrow
    //   286: astore 5
    //   288: goto -13 -> 275
    //   291: astore 5
    //   293: aconst_null
    //   294: astore 7
    //   296: goto -111 -> 185
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	299	0	paramHttpResponse	HttpResponse
    //   33	198	1	i	int
    //   13	80	2	j	int
    //   1	34	3	k	int
    //   30	10	4	m	int
    //   10	159	5	localObject1	Object
    //   183	81	5	localException1	Exception
    //   271	13	5	localObject2	Object
    //   286	1	5	localObject3	Object
    //   291	1	5	localException2	Exception
    //   46	223	6	localObject4	Object
    //   98	197	7	localObject5	Object
    //   142	32	8	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   103	114	183	java/lang/Exception
    //   121	130	183	java/lang/Exception
    //   137	144	183	java/lang/Exception
    //   151	159	183	java/lang/Exception
    //   171	180	183	java/lang/Exception
    //   241	255	183	java/lang/Exception
    //   75	88	271	finally
    //   103	114	286	finally
    //   121	130	286	finally
    //   137	144	286	finally
    //   151	159	286	finally
    //   171	180	286	finally
    //   188	213	286	finally
    //   241	255	286	finally
    //   75	88	291	java/lang/Exception
  }
  
  private List<String> a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    String str = c() + "/cookieDomains";
    for (;;)
    {
      int i;
      try
      {
        com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "Retrieving cookie domains from server.");
        HttpResponse localHttpResponse = new com.adobe.adobepass.accessenabler.b.a().a(str, null, a);
        if (localHttpResponse == null)
        {
          com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "No response from server: " + str);
          return localArrayList;
        }
        i = localHttpResponse.getStatusLine().getStatusCode();
        if (i == 200)
        {
          str = a(localHttpResponse);
          new n();
          paramString = n.a(new StringReader(str)).h().a(paramString);
          if (paramString != null)
          {
            int j = paramString.a();
            i = 0;
            if (i < j)
            {
              str = paramString.a(i).c();
              if (str == null) {
                break label267;
              }
              localArrayList.add(str);
              break label267;
            }
          }
        }
        else
        {
          com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "Status code not OK: " + i);
          return localArrayList;
        }
      }
      catch (IOException paramString)
      {
        com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "Error retrieving cookie domains from server: " + paramString.toString());
        return localArrayList;
      }
      catch (Exception paramString)
      {
        com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "Error parsing domain cookie list: " + paramString.toString());
      }
      return localArrayList;
      label267:
      i += 1;
    }
  }
  
  private void a(int paramInt, String paramString, Boolean paramBoolean)
  {
    d.b(false);
    switch (paramInt)
    {
    default: 
      throw new RuntimeException("Invalid AccessEnabler status code");
    case 1: 
      paramString = d.f().iterator();
      while (paramString.hasNext())
      {
        Map localMap = (Map)paramString.next();
        Bundle localBundle = new Bundle();
        Iterator localIterator = localMap.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localBundle.putString(str, (String)localMap.get(str));
        }
        new b(6, localBundle).start();
      }
      d.g();
      d.h.b(true);
      c.a(1, "");
      a(new com.adobe.adobepass.accessenabler.a.d(0), true, paramBoolean);
      return;
    }
    d.h.b(false);
    d.h.i();
    d.h.b(null);
    d.g = null;
    d.e = null;
    d.g();
    c.a(0, paramString);
    a(new com.adobe.adobepass.accessenabler.a.d(0), false, null);
  }
  
  private void a(Bundle paramBundle)
  {
    if (!d.f.a()) {
      throw new RuntimeException("The requestor is not configured.");
    }
    boolean bool = paramBundle.getBoolean("force_authn");
    d.e = paramBundle.getString("generic_data");
    d.b(true);
    paramBundle = d();
    if ((!bool) && (a == 1))
    {
      a(1, "", c);
      return;
    }
    d.c = true;
    paramBundle = d.h.c();
    if ((d.h.b()) && (paramBundle != null) && (!d.d) && (d.f.d(paramBundle)))
    {
      e();
      return;
    }
    d.d = false;
    paramBundle = d.f.d();
    if (paramBundle.size() > 0)
    {
      d locald = c;
      new ArrayList(paramBundle);
      locald.a();
      return;
    }
    com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "The list of known MVPDs is empty.");
    a(0, "Generic Authentication Error", null);
  }
  
  /* Error */
  private void a(com.adobe.adobepass.accessenabler.a.b paramb, Boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: ldc 63
    //   5: new 140	java/lang/StringBuilder
    //   8: dup
    //   9: ldc_w 399
    //   12: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   15: aload_1
    //   16: invokevirtual 403	com/adobe/adobepass/accessenabler/a/b:b	()Ljava/lang/String;
    //   19: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: invokestatic 181	com/adobe/adobepass/accessenabler/d/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   28: aload_1
    //   29: invokevirtual 404	com/adobe/adobepass/accessenabler/a/b:a	()Z
    //   32: ifne +30 -> 62
    //   35: ldc 63
    //   37: ldc_w 406
    //   40: invokestatic 156	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_0
    //   44: getfield 312	com/adobe/adobepass/accessenabler/api/AccessEnablerService:c	Lcom/adobe/adobepass/accessenabler/api/d;
    //   47: aload_1
    //   48: invokevirtual 403	com/adobe/adobepass/accessenabler/a/b:b	()Ljava/lang/String;
    //   51: ldc_w 408
    //   54: ldc_w 314
    //   57: invokeinterface 411 4 0
    //   62: new 140	java/lang/StringBuilder
    //   65: dup
    //   66: invokespecial 173	java/lang/StringBuilder:<init>	()V
    //   69: aload_0
    //   70: invokespecial 175	com/adobe/adobepass/accessenabler/api/AccessEnablerService:c	()Ljava/lang/String;
    //   73: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: ldc_w 413
    //   79: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: astore 5
    //   87: new 171	java/util/ArrayList
    //   90: dup
    //   91: invokespecial 172	java/util/ArrayList:<init>	()V
    //   94: astore 6
    //   96: aload 6
    //   98: aload_0
    //   99: getfield 249	com/adobe/adobepass/accessenabler/api/AccessEnablerService:d	Lcom/adobe/adobepass/accessenabler/api/b;
    //   102: getfield 416	com/adobe/adobepass/accessenabler/api/b:i	Lcom/adobe/adobepass/accessenabler/b/b;
    //   105: invokevirtual 421	com/adobe/adobepass/accessenabler/b/b:a	()Lorg/apache/http/message/BasicNameValuePair;
    //   108: invokeinterface 234 2 0
    //   113: pop
    //   114: new 171	java/util/ArrayList
    //   117: dup
    //   118: invokespecial 172	java/util/ArrayList:<init>	()V
    //   121: astore 7
    //   123: aload 7
    //   125: new 423	org/apache/http/message/BasicNameValuePair
    //   128: dup
    //   129: ldc_w 425
    //   132: aload_0
    //   133: getfield 249	com/adobe/adobepass/accessenabler/api/AccessEnablerService:d	Lcom/adobe/adobepass/accessenabler/api/b;
    //   136: getfield 307	com/adobe/adobepass/accessenabler/api/b:h	Lcom/adobe/adobepass/accessenabler/c/b;
    //   139: iconst_0
    //   140: invokevirtual 428	com/adobe/adobepass/accessenabler/c/b:a	(Z)Lcom/adobe/adobepass/accessenabler/a/a;
    //   143: invokevirtual 432	com/adobe/adobepass/accessenabler/a/a:e	()Ljava/lang/String;
    //   146: invokespecial 434	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   149: invokeinterface 234 2 0
    //   154: pop
    //   155: aload 7
    //   157: new 423	org/apache/http/message/BasicNameValuePair
    //   160: dup
    //   161: ldc_w 436
    //   164: ldc_w 438
    //   167: invokespecial 434	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   170: invokeinterface 234 2 0
    //   175: pop
    //   176: aload 7
    //   178: new 423	org/apache/http/message/BasicNameValuePair
    //   181: dup
    //   182: ldc_w 440
    //   185: aload_1
    //   186: invokevirtual 442	com/adobe/adobepass/accessenabler/a/b:d	()Ljava/lang/String;
    //   189: invokespecial 434	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   192: invokeinterface 234 2 0
    //   197: pop
    //   198: aload 7
    //   200: new 423	org/apache/http/message/BasicNameValuePair
    //   203: dup
    //   204: ldc_w 444
    //   207: aload_0
    //   208: getfield 249	com/adobe/adobepass/accessenabler/api/AccessEnablerService:d	Lcom/adobe/adobepass/accessenabler/api/b;
    //   211: getfield 341	com/adobe/adobepass/accessenabler/api/b:f	Lcom/adobe/adobepass/accessenabler/a/j;
    //   214: invokevirtual 445	com/adobe/adobepass/accessenabler/a/j:b	()Ljava/lang/String;
    //   217: invokespecial 434	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   220: invokeinterface 234 2 0
    //   225: pop
    //   226: aload 7
    //   228: new 423	org/apache/http/message/BasicNameValuePair
    //   231: dup
    //   232: ldc_w 447
    //   235: aload_0
    //   236: getfield 249	com/adobe/adobepass/accessenabler/api/AccessEnablerService:d	Lcom/adobe/adobepass/accessenabler/api/b;
    //   239: getfield 341	com/adobe/adobepass/accessenabler/api/b:f	Lcom/adobe/adobepass/accessenabler/a/j;
    //   242: invokevirtual 448	com/adobe/adobepass/accessenabler/a/j:c	()Ljava/lang/String;
    //   245: invokespecial 434	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   248: invokeinterface 234 2 0
    //   253: pop
    //   254: aload 7
    //   256: new 423	org/apache/http/message/BasicNameValuePair
    //   259: dup
    //   260: ldc_w 450
    //   263: aload_0
    //   264: getfield 249	com/adobe/adobepass/accessenabler/api/AccessEnablerService:d	Lcom/adobe/adobepass/accessenabler/api/b;
    //   267: getfield 307	com/adobe/adobepass/accessenabler/api/b:h	Lcom/adobe/adobepass/accessenabler/c/b;
    //   270: invokevirtual 373	com/adobe/adobepass/accessenabler/c/b:c	()Ljava/lang/String;
    //   273: invokespecial 434	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   276: invokeinterface 234 2 0
    //   281: pop
    //   282: aload 7
    //   284: new 423	org/apache/http/message/BasicNameValuePair
    //   287: dup
    //   288: ldc_w 452
    //   291: invokestatic 457	com/adobe/adobepass/accessenabler/api/a:a	()Lcom/adobe/adobepass/accessenabler/api/a;
    //   294: invokevirtual 458	com/adobe/adobepass/accessenabler/api/a:e	()Ljava/lang/String;
    //   297: invokespecial 434	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   300: invokeinterface 234 2 0
    //   305: pop
    //   306: new 183	com/adobe/adobepass/accessenabler/b/a
    //   309: dup
    //   310: invokespecial 184	com/adobe/adobepass/accessenabler/b/a:<init>	()V
    //   313: aload 5
    //   315: aload 6
    //   317: aload 7
    //   319: getstatic 53	com/adobe/adobepass/accessenabler/api/AccessEnablerService:a	Z
    //   322: invokevirtual 461	com/adobe/adobepass/accessenabler/b/a:a	(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;
    //   325: astore 5
    //   327: aload 5
    //   329: ifnonnull +46 -> 375
    //   332: ldc 63
    //   334: ldc_w 463
    //   337: invokestatic 181	com/adobe/adobepass/accessenabler/d/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   340: aload_0
    //   341: getfield 312	com/adobe/adobepass/accessenabler/api/AccessEnablerService:c	Lcom/adobe/adobepass/accessenabler/api/d;
    //   344: aload_1
    //   345: invokevirtual 403	com/adobe/adobepass/accessenabler/a/b:b	()Ljava/lang/String;
    //   348: ldc_w 408
    //   351: ldc_w 314
    //   354: invokeinterface 411 4 0
    //   359: aload_0
    //   360: new 321	com/adobe/adobepass/accessenabler/a/d
    //   363: dup
    //   364: iconst_1
    //   365: invokespecial 324	com/adobe/adobepass/accessenabler/a/d:<init>	(I)V
    //   368: iload 4
    //   370: aload_2
    //   371: invokespecial 327	com/adobe/adobepass/accessenabler/api/AccessEnablerService:a	(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V
    //   374: return
    //   375: aload 5
    //   377: invokeinterface 193 1 0
    //   382: invokeinterface 199 1 0
    //   387: istore_3
    //   388: iload_3
    //   389: sipush 200
    //   392: if_icmpne +31 -> 423
    //   395: aload 5
    //   397: invokestatic 201	com/adobe/adobepass/accessenabler/api/AccessEnablerService:a	(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    //   400: astore 5
    //   402: aload_0
    //   403: getfield 312	com/adobe/adobepass/accessenabler/api/AccessEnablerService:c	Lcom/adobe/adobepass/accessenabler/api/d;
    //   406: aload 5
    //   408: aload_1
    //   409: invokevirtual 403	com/adobe/adobepass/accessenabler/a/b:b	()Ljava/lang/String;
    //   412: invokeinterface 464 3 0
    //   417: iconst_1
    //   418: istore 4
    //   420: goto -61 -> 359
    //   423: ldc 63
    //   425: new 140	java/lang/StringBuilder
    //   428: dup
    //   429: ldc_w 466
    //   432: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   435: iload_3
    //   436: invokevirtual 239	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   439: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   442: invokestatic 156	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   445: aload_0
    //   446: getfield 312	com/adobe/adobepass/accessenabler/api/AccessEnablerService:c	Lcom/adobe/adobepass/accessenabler/api/d;
    //   449: aload_1
    //   450: invokevirtual 403	com/adobe/adobepass/accessenabler/a/b:b	()Ljava/lang/String;
    //   453: ldc_w 468
    //   456: ldc_w 314
    //   459: invokeinterface 411 4 0
    //   464: goto -105 -> 359
    //   467: astore 5
    //   469: ldc 63
    //   471: aload 5
    //   473: invokevirtual 242	java/io/IOException:toString	()Ljava/lang/String;
    //   476: invokestatic 156	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   479: aload_0
    //   480: getfield 312	com/adobe/adobepass/accessenabler/api/AccessEnablerService:c	Lcom/adobe/adobepass/accessenabler/api/d;
    //   483: aload_1
    //   484: invokevirtual 403	com/adobe/adobepass/accessenabler/a/b:b	()Ljava/lang/String;
    //   487: ldc_w 408
    //   490: ldc_w 314
    //   493: invokeinterface 411 4 0
    //   498: aload_0
    //   499: new 321	com/adobe/adobepass/accessenabler/a/d
    //   502: dup
    //   503: iconst_1
    //   504: invokespecial 324	com/adobe/adobepass/accessenabler/a/d:<init>	(I)V
    //   507: iconst_0
    //   508: aload_2
    //   509: invokespecial 327	com/adobe/adobepass/accessenabler/api/AccessEnablerService:a	(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V
    //   512: return
    //   513: astore_1
    //   514: aload_0
    //   515: new 321	com/adobe/adobepass/accessenabler/a/d
    //   518: dup
    //   519: iconst_1
    //   520: invokespecial 324	com/adobe/adobepass/accessenabler/a/d:<init>	(I)V
    //   523: iconst_0
    //   524: aload_2
    //   525: invokespecial 327	com/adobe/adobepass/accessenabler/api/AccessEnablerService:a	(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V
    //   528: aload_1
    //   529: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	530	0	this	AccessEnablerService
    //   0	530	1	paramb	com.adobe.adobepass.accessenabler.a.b
    //   0	530	2	paramBoolean	Boolean
    //   387	49	3	i	int
    //   1	418	4	bool	boolean
    //   85	322	5	localObject	Object
    //   467	5	5	localIOException	IOException
    //   94	222	6	localArrayList1	ArrayList
    //   121	197	7	localArrayList2	ArrayList
    // Exception table:
    //   from	to	target	type
    //   306	327	467	java/io/IOException
    //   332	359	467	java/io/IOException
    //   375	388	467	java/io/IOException
    //   395	417	467	java/io/IOException
    //   423	464	467	java/io/IOException
    //   306	327	513	finally
    //   332	359	513	finally
    //   375	388	513	finally
    //   395	417	513	finally
    //   423	464	513	finally
    //   469	498	513	finally
  }
  
  private void a(com.adobe.adobepass.accessenabler.a.d paramd, boolean paramBoolean, Boolean paramBoolean1)
  {
    com.adobe.adobepass.accessenabler.a.a locala1 = null;
    String str = null;
    ArrayList localArrayList = new ArrayList();
    switch (paramd.a())
    {
    default: 
      com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "Invalid event type.");
      return;
    case 2: 
      localArrayList.add(d.h.c());
    case 0: 
      for (;;)
      {
        localArrayList.add(d.h().a());
        localArrayList.add(d.h().b());
        localArrayList.add(d.h().c());
        c.a(paramd, localArrayList);
        return;
        if (paramBoolean)
        {
          locala1 = d.h.a(false);
          localArrayList.add("true");
          localArrayList.add(d.h.c());
          localArrayList.add(f.a(locala1.e(), "MD5"));
          if (paramBoolean1 == null) {}
          for (paramBoolean1 = str;; paramBoolean1 = paramBoolean1.toString())
          {
            localArrayList.add(paramBoolean1);
            break;
          }
        }
        localArrayList.add("false");
        localArrayList.add(null);
        localArrayList.add(null);
        localArrayList.add(null);
      }
    }
    com.adobe.adobepass.accessenabler.a.a locala2 = d.h.a(false);
    if ((paramBoolean) && (locala2 != null))
    {
      str = "true";
      label274:
      localArrayList.add(str);
      localArrayList.add(d.h.c());
      if (locala2 == null) {
        break label369;
      }
      str = f.a(locala2.e(), "MD5");
      label316:
      localArrayList.add(str);
      if (paramBoolean1 != null) {
        break label375;
      }
    }
    label369:
    label375:
    for (paramBoolean1 = locala1;; paramBoolean1 = paramBoolean1.toString())
    {
      localArrayList.add(paramBoolean1);
      localArrayList.add(paramd.b());
      localArrayList.add(paramd.c());
      break;
      str = "false";
      break label274;
      str = null;
      break label316;
    }
  }
  
  private void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    d.h.g();
    if (da == 0)
    {
      if (paramBoolean)
      {
        c.a(paramString1, "User Not Authenticated Error", "");
        a(new com.adobe.adobepass.accessenabler.a.d("User Not Authenticated Error"), false, null);
      }
      while (d.a(paramString1, paramString2) != 1) {
        return;
      }
      new b(2, null).start();
      return;
    }
    Object localObject = d.h.a(paramString1);
    if ((localObject != null) && (((com.adobe.adobepass.accessenabler.a.b)localObject).a()))
    {
      com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "Authorization token found and valid for resource: " + paramString1);
      a((com.adobe.adobepass.accessenabler.a.b)localObject, Boolean.TRUE);
      return;
    }
    com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "Retrieving the authZ token for resource: " + paramString1);
    String str = c() + "/authorizeDevice";
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(d.i.a());
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new BasicNameValuePair("resource_id", paramString1));
    localArrayList2.add(new BasicNameValuePair("requestor_id", d.f.b()));
    localArrayList2.add(new BasicNameValuePair("signed_requestor_id", d.f.c()));
    localArrayList2.add(new BasicNameValuePair("mso_id", d.h.c()));
    localArrayList2.add(new BasicNameValuePair("device_id", a.a().e()));
    localArrayList2.add(new BasicNameValuePair("userMeta", "1"));
    localObject = d.h.a(true);
    if (localObject != null) {}
    for (localObject = ((com.adobe.adobepass.accessenabler.a.a)localObject).k();; localObject = null)
    {
      localArrayList2.add(new BasicNameValuePair("authentication_token", (String)localObject));
      if ((paramString2 != null) && (paramString2.trim().length() > 0)) {
        localArrayList2.add(new BasicNameValuePair("generic_data", paramString2));
      }
      paramString2 = new com.adobe.adobepass.accessenabler.b.a().a(str, localArrayList1, localArrayList2, a);
      if (paramString2 != null) {
        break;
      }
      com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "No response from server.");
      c.a(paramString1, "Generic Authorization Error", "");
      a(new com.adobe.adobepass.accessenabler.a.d(1), false, null);
      return;
    }
    int i;
    try
    {
      i = paramString2.getStatusLine().getStatusCode();
      if (i == 200)
      {
        str = a(paramString2);
        try
        {
          paramString2 = new com.adobe.adobepass.accessenabler.a.b(str, true);
          localObject = k.d(str);
          d.h.a(paramString1, paramString2);
          if ((localObject != null) && (((k)localObject).b()))
          {
            d.h.a((k)localObject);
            d.g = null;
          }
          a(paramString2, Boolean.FALSE);
          return;
        }
        catch (Exception paramString2)
        {
          com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", paramString2.toString());
          localObject = "";
          paramString2 = (String)localObject;
          if (str != null)
          {
            paramString2 = (String)localObject;
            if (str.contains("<error>"))
            {
              paramString2 = (String)localObject;
              if (str.contains("</error>"))
              {
                paramString2 = (String)localObject;
                if (str.contains("<details>"))
                {
                  paramString2 = (String)localObject;
                  if (str.contains("</details>")) {
                    paramString2 = str.substring(str.indexOf("<details>") + 9, str.indexOf("</details>"));
                  }
                }
              }
            }
          }
          c.a(paramString1, "User not Authorized Error", paramString2);
          localObject = new com.adobe.adobepass.accessenabler.a.d(1);
          ((com.adobe.adobepass.accessenabler.a.d)localObject).a("User not Authorized Error");
          ((com.adobe.adobepass.accessenabler.a.d)localObject).b(paramString2);
          a((com.adobe.adobepass.accessenabler.a.d)localObject, false, null);
          return;
        }
      }
      if (i != 401) {
        break label858;
      }
    }
    catch (IOException paramString2)
    {
      com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", paramString2.toString());
      c.a(paramString1, "Generic Authorization Error", "");
      a(new com.adobe.adobepass.accessenabler.a.d(1), false, null);
      return;
    }
    com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "401 Unauthorized - from the AP server.");
    c.a(paramString1, "User not Authorized Error", "");
    a(new com.adobe.adobepass.accessenabler.a.d(1), false, null);
    return;
    label858:
    com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "Bad response from server. SC=" + i);
    c.a(paramString1, "Internal Authorization Error", "");
    a(new com.adobe.adobepass.accessenabler.a.d(1), false, null);
  }
  
  private void a(ArrayList<String> paramArrayList)
  {
    com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "Retrieving preauthorization for: " + f.a(paramArrayList, " "));
    Object localObject2 = c() + "/preauthorize";
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = d.h.a(true);
    if (localObject1 != null) {}
    for (localObject1 = ((com.adobe.adobepass.accessenabler.a.a)localObject1).k();; localObject1 = null)
    {
      localArrayList.add(new BasicNameValuePair("authentication_token", (String)localObject1));
      localArrayList.add(new BasicNameValuePair("requestor_id", d.f.b()));
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext()) {
        localArrayList.add(new BasicNameValuePair("resource_id", (String)paramArrayList.next()));
      }
    }
    paramArrayList = new com.adobe.adobepass.accessenabler.b.a().a((String)localObject2, null, localArrayList, a);
    if (paramArrayList == null)
    {
      com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "No response from server.");
      new ArrayList();
    }
    for (;;)
    {
      return;
      if (paramArrayList.getStatusLine().getStatusCode() == 200) {
        try
        {
          paramArrayList = new h(a(paramArrayList));
          localObject1 = paramArrayList.b();
          d.h.a(paramArrayList);
          paramArrayList = new ArrayList();
          localObject1 = ((List)localObject1).iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (com.adobe.adobepass.accessenabler.a.i)((Iterator)localObject1).next();
            if (((com.adobe.adobepass.accessenabler.a.i)localObject2).b()) {
              paramArrayList.add(((com.adobe.adobepass.accessenabler.a.i)localObject2).a());
            }
          }
          new ArrayList();
        }
        catch (Exception paramArrayList)
        {
          com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", paramArrayList.toString());
          new ArrayList();
          return;
        }
      }
    }
  }
  
  private String b(String paramString)
  {
    try
    {
      String str = c() + "/usermetadata";
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("requestor", d.f.b()));
      localArrayList.add(new BasicNameValuePair("authn", d.h.a(true).k()));
      localArrayList.add(new BasicNameValuePair("metadata", paramString));
      paramString = new com.adobe.adobepass.accessenabler.b.a().a(str, null, localArrayList, a);
      if (paramString == null)
      {
        com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "No response from server for encrypted metadata.");
        return null;
      }
      int i = paramString.getStatusLine().getStatusCode();
      if (i == 200) {
        return a(paramString);
      }
      com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "Bad response from server. SC=" + i);
      return null;
    }
    catch (Exception paramString)
    {
      com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", paramString.toString());
    }
    return null;
  }
  
  private String c()
  {
    com.adobe.adobepass.accessenabler.a.g localg = d.f.c(d.h.c());
    if (localg != null) {
      return localg.d();
    }
    throw new RuntimeException("Current MVPD is null. Cannot compute SP URL.");
  }
  
  private c d()
  {
    if (!d.f.a()) {
      return new c("Generic Authentication Error");
    }
    d.h.g();
    com.adobe.adobepass.accessenabler.a.a locala = d.h.a(true);
    c localc = new c();
    if ((locala != null) && (locala.a()))
    {
      if (d.f.d(locala.c()))
      {
        b = "";
        a = 1;
        c = Boolean.TRUE;
        d.h.b(locala.c());
        return localc;
      }
      com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "Unknown MVPD: " + locala.c());
      a = 0;
      b = "Generic Authentication Error";
      c = null;
      return localc;
    }
    a = 0;
    b = "User Not Authenticated Error";
    c = null;
    return localc;
  }
  
  private void e()
  {
    String str = d.h.c();
    if (str == null) {
      throw new RuntimeException("The currently selected MVPD ID is null.");
    }
    com.adobe.adobepass.accessenabler.a.g localg = d.f.c(str);
    if (localg != null)
    {
      str = a(localg, false);
      c.a(str);
      return;
    }
    com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "Unknown MVPD: " + str);
    a(0, "Generic Authentication Error", null);
  }
  
  public final String a(com.adobe.adobepass.accessenabler.a.g paramg, boolean paramBoolean)
  {
    String str = c() + "/authenticate/saml";
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("domain_name", "adobe.com"));
    localArrayList.add(new BasicNameValuePair("noflash", "true"));
    localArrayList.add(new BasicNameValuePair("no_iframe", "true"));
    localArrayList.add(new BasicNameValuePair("mso_id", paramg.a()));
    localArrayList.add(new BasicNameValuePair("requestor_id", d.f.b()));
    StringBuilder localStringBuilder;
    if (paramBoolean)
    {
      localStringBuilder = new StringBuilder();
      if (a) {
        paramg = "https://";
      }
    }
    for (paramg = URLEncoder.encode(paramg + c() + "/completePassiveAuthentication");; paramg = a.a)
    {
      localArrayList.add(new BasicNameValuePair("redirect_url", paramg));
      localArrayList.add(new BasicNameValuePair("client_type", "android"));
      localArrayList.add(new BasicNameValuePair("client_version", "1.8"));
      if (paramBoolean) {
        localArrayList.add(new BasicNameValuePair("passive", "true"));
      }
      if ((d.e != null) && (d.e.trim().length() > 0))
      {
        localArrayList.add(new BasicNameValuePair("generic_data", URLEncoder.encode(d.e)));
        d.e = null;
      }
      return f.a(str, localArrayList, a);
      paramg = "http://";
      break;
    }
  }
  
  public final void a()
  {
    if (d.a == e.a.a)
    {
      d.a = e.a.b;
      e.a(d, this).c();
    }
    while (e.size() > 0) {
      ((Thread)e.remove()).start();
    }
    c.setRequestorComplete(1);
  }
  
  public final void b()
  {
    com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "Retrieving the authN token.");
    if (!d.f.a()) {
      throw new RuntimeException("The requestor is not configured.");
    }
    Object localObject1 = c() + "/sessionDevice";
    Object localObject2 = new ArrayList();
    d.i.a(CookieManager.getInstance().getCookie(c()));
    ((List)localObject2).add(d.i.a());
    Object localObject3 = new ArrayList();
    ((List)localObject3).add(new BasicNameValuePair("_method", "GET"));
    ((List)localObject3).add(new BasicNameValuePair("requestor_id", d.f.b()));
    ((List)localObject3).add(new BasicNameValuePair("signed_requestor_id", d.f.c()));
    ((List)localObject3).add(new BasicNameValuePair("device_id", a.a().e()));
    localObject1 = new com.adobe.adobepass.accessenabler.b.a().a((String)localObject1, (List)localObject2, (List)localObject3, a);
    if (localObject1 == null)
    {
      com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "No response from server.");
      if (d.a == e.a.a)
      {
        com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "Passive authN flow failed");
        a();
        return;
      }
      a(0, "Provider not Available Error", null);
      return;
    }
    try
    {
      i = ((HttpResponse)localObject1).getStatusLine().getStatusCode();
      if (i == 200)
      {
        localObject2 = a((HttpResponse)localObject1);
        localObject1 = new com.adobe.adobepass.accessenabler.a.a((String)localObject2, true);
        localObject2 = k.d((String)localObject2);
        if (d.a == e.a.a) {}
        for (boolean bool = false;; bool = d.f.c(((com.adobe.adobepass.accessenabler.a.a)localObject1).c()).e())
        {
          if (bool)
          {
            localObject3 = a(((com.adobe.adobepass.accessenabler.a.a)localObject1).c());
            e.a(d, this).a((List)localObject3);
          }
          if (!((com.adobe.adobepass.accessenabler.a.a)localObject1).a()) {
            break;
          }
          d.h.a((com.adobe.adobepass.accessenabler.a.a)localObject1);
          if ((localObject2 != null) && (((k)localObject2).b()))
          {
            d.h.a((k)localObject2);
            d.g = null;
          }
          if (d.a != e.a.a) {
            break label577;
          }
          a();
          return;
        }
        if (d.a == e.a.a)
        {
          a();
          return;
        }
      }
    }
    catch (Exception localException)
    {
      int i;
      if (d.a == e.a.a)
      {
        a();
        return;
        a(0, "Generic Authentication Error", null);
        return;
        if (d.a == e.a.a)
        {
          a();
          return;
        }
        com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", "Bad response from server. ( " + i + " )");
        a(0, "Internal Authentication Error", null);
        return;
      }
      com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerService", localException.toString());
      a(0, "Generic Authentication Error", null);
      return;
    }
    label577:
    a(1, "", Boolean.FALSE);
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    Object localObject = a.a();
    if (localObject == null)
    {
      com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "No Access Enabler instance detected, ignoring request.");
      return;
    }
    c = ((a)localObject).c();
    d = ((a)localObject).d();
    paramIntent = paramIntent.getExtras();
    int i = paramIntent.getInt("op_code");
    switch (i)
    {
    default: 
      com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "Invalid AccessEanbler op. code: " + i);
      return;
    case 0: 
      d.f.a(false);
      localObject = paramIntent.getString("requestor_id");
      paramIntent = new Bundle();
      paramIntent.putString("requestor_id", (String)localObject);
      localObject = new ArrayList();
      ((ArrayList)localObject).add("sp.auth.adobe.com/adobe-services");
      paramIntent.putStringArrayList("sp_urls", (ArrayList)localObject);
      new b(0, paramIntent).start();
      return;
    case 1: 
      d.f.a(false);
      d.b = paramIntent.getStringArrayList("sp_urls");
      paramIntent = paramIntent.getString("requestor_id");
      localObject = new Bundle();
      ((Bundle)localObject).putString("requestor_id", paramIntent);
      ((Bundle)localObject).putStringArrayList("sp_urls", d.b);
      new b(0, (Bundle)localObject).start();
      return;
    case 2: 
      paramIntent = new b(2, null);
      if (d.f.a())
      {
        paramIntent.start();
        return;
      }
      e.add(paramIntent);
      return;
    case 3: 
      localObject = new Bundle();
      ((Bundle)localObject).putBoolean("force_authn", paramIntent.getBoolean("force_authn"));
      ((Bundle)localObject).putString("generic_data", paramIntent.getString("generic_data"));
      paramIntent = new b(3, (Bundle)localObject);
      if (d.f.a())
      {
        paramIntent.start();
        return;
      }
      e.add(paramIntent);
      return;
    case 4: 
      paramIntent = new b(4, null);
      if (d.f.a())
      {
        paramIntent.start();
        return;
      }
      e.add(paramIntent);
      return;
    case 5: 
      localObject = new Bundle();
      ((Bundle)localObject).putString("resource_id", paramIntent.getString("resource_id"));
      ((Bundle)localObject).putString("generic_data", paramIntent.getString("generic_data"));
      paramIntent = new b(5, (Bundle)localObject);
      if (d.f.a())
      {
        paramIntent.start();
        return;
      }
      e.add(paramIntent);
      return;
    case 6: 
      localObject = new Bundle();
      ((Bundle)localObject).putString("resource_id", paramIntent.getString("resource_id"));
      ((Bundle)localObject).putString("generic_data", paramIntent.getString("generic_data"));
      paramIntent = new b(6, (Bundle)localObject);
      if (d.f.a())
      {
        paramIntent.start();
        return;
      }
      e.add(paramIntent);
      return;
    case 7: 
      localObject = new Bundle();
      ((Bundle)localObject).putString("mvpd_id", paramIntent.getString("mvpd_id"));
      new b(7, (Bundle)localObject).start();
      return;
    case 8: 
      new b(8, null).start();
      return;
    case 9: 
      localObject = new Bundle();
      ((Bundle)localObject).putSerializable("metadata_key", paramIntent.getSerializable("metadata_key"));
      paramIntent = new b(9, (Bundle)localObject);
      if (d.f.a())
      {
        paramIntent.start();
        return;
      }
      e.add(paramIntent);
      return;
    case 10: 
      paramIntent = new b(10, null);
      if (d.f.a())
      {
        paramIntent.start();
        return;
      }
      e.add(paramIntent);
      return;
    case 11: 
      paramIntent = paramIntent.getStringArrayList("resource_id");
      localObject = new Bundle();
      ((Bundle)localObject).putStringArrayList("resource_id", paramIntent);
      paramIntent = new b(11, (Bundle)localObject);
      if (d.f.a())
      {
        paramIntent.start();
        return;
      }
      e.add(paramIntent);
      return;
    }
    paramIntent = new b(12, null);
    if (d.f.a())
    {
      paramIntent.start();
      return;
    }
    e.add(paramIntent);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    super.onStartCommand(paramIntent, paramInt1, paramInt2);
    return 2;
  }
  
  public static abstract interface a
  {
    public abstract void a(Bundle paramBundle);
  }
  
  private final class b
    extends Thread
  {
    private int b;
    private Bundle c;
    
    public b(int paramInt, Bundle paramBundle)
    {
      c = paramBundle;
      b = paramInt;
    }
    
    public final void run()
    {
      if (AccessEnablerService.d(AccessEnablerService.this) == null)
      {
        com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "No implementation for the IAccessEnablerDelegate was provided.");
        return;
      }
      if (AccessEnablerService.e(AccessEnablerService.this) == null)
      {
        com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "AccessEnabler context not initialized.");
        return;
      }
      try
      {
        AccessEnablerService.f(AccessEnablerService.this)[b].a(c);
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        localRuntimeException.printStackTrace();
        com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerService", "Exception in the worker thread. " + localRuntimeException.getClass().getSimpleName() + " | " + localRuntimeException.getMessage());
      }
    }
  }
  
  private final class c
  {
    public int a;
    public String b;
    public Boolean c;
    
    public c() {}
    
    public c(String paramString)
    {
      a = 0;
      b = paramString;
      c = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.api.AccessEnablerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */