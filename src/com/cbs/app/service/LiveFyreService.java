package com.cbs.app.service;

import android.app.Activity;
import android.content.Context;
import android.net.Uri.Builder;
import android.util.Log;
import android.widget.Toast;
import com.b.a.a.b;
import com.b.a.a.c;
import com.b.a.a.d;
import com.c.a.a.e;
import com.c.a.a.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class LiveFyreService
{
  private static final String n = LiveFyreService.class.getSimpleName();
  private static Comparator<JSONObject> o = new Comparator()
  {
    private static int a(JSONObject paramAnonymousJSONObject1, JSONObject paramAnonymousJSONObject2)
    {
      localLong2 = Long.valueOf(0L);
      localLong1 = Long.valueOf(0L);
      try
      {
        l = paramAnonymousJSONObject1.getJSONObject("content").getLong("createdAt");
        paramAnonymousJSONObject1 = Long.valueOf(l);
      }
      catch (JSONException paramAnonymousJSONObject1)
      {
        for (;;)
        {
          long l;
          label46:
          Log.e(LiveFyreService.b(), "comparator content");
          paramAnonymousJSONObject1 = localLong2;
        }
      }
      try
      {
        l = paramAnonymousJSONObject2.getJSONObject("content").getLong("createdAt");
        paramAnonymousJSONObject2 = Long.valueOf(l);
      }
      catch (JSONException paramAnonymousJSONObject2)
      {
        Log.e(LiveFyreService.b(), "comparator content");
        paramAnonymousJSONObject2 = localLong1;
        break label46;
      }
      return paramAnonymousJSONObject2.compareTo(paramAnonymousJSONObject1);
    }
  };
  private static Comparator<JSONObject> p = new Comparator()
  {
    private static int a(JSONObject paramAnonymousJSONObject1, JSONObject paramAnonymousJSONObject2)
    {
      localLong2 = Long.valueOf(0L);
      localLong1 = Long.valueOf(0L);
      try
      {
        l = paramAnonymousJSONObject1.getJSONObject("content").getLong("createdAt");
        paramAnonymousJSONObject1 = Long.valueOf(l);
      }
      catch (JSONException paramAnonymousJSONObject1)
      {
        for (;;)
        {
          long l;
          label46:
          Log.e(LiveFyreService.b(), "comparator content");
          paramAnonymousJSONObject1 = localLong2;
        }
      }
      try
      {
        l = paramAnonymousJSONObject2.getJSONObject("content").getLong("createdAt");
        paramAnonymousJSONObject2 = Long.valueOf(l);
      }
      catch (JSONException paramAnonymousJSONObject2)
      {
        Log.e(LiveFyreService.b(), "comparator content");
        paramAnonymousJSONObject2 = localLong1;
        break label46;
      }
      return paramAnonymousJSONObject1.compareTo(paramAnonymousJSONObject2);
    }
  };
  private static Comparator<JSONObject> q = new Comparator()
  {
    private static int a(JSONObject paramAnonymousJSONObject1, JSONObject paramAnonymousJSONObject2)
    {
      int k = 0;
      try
      {
        i = paramAnonymousJSONObject1.getInt("replies");
      }
      catch (JSONException localJSONException3)
      {
        try
        {
          j = paramAnonymousJSONObject1.getInt("likes");
          m = i + j;
        }
        catch (JSONException localJSONException3)
        {
          try
          {
            i = paramAnonymousJSONObject2.getInt("replies");
          }
          catch (JSONException localJSONException3)
          {
            try
            {
              for (;;)
              {
                j = paramAnonymousJSONObject2.getInt("likes");
                i += j;
                try
                {
                  l = paramAnonymousJSONObject1.getJSONObject("content").getLong("createdAt");
                  paramAnonymousJSONObject1 = Long.valueOf(l);
                }
                catch (JSONException paramAnonymousJSONObject1)
                {
                  for (;;)
                  {
                    long l;
                    label78:
                    Log.e(LiveFyreService.b(), "content not found");
                    paramAnonymousJSONObject1 = Long.valueOf(0L);
                  }
                }
                try
                {
                  l = paramAnonymousJSONObject2.getJSONObject("content").getLong("createdAt");
                  paramAnonymousJSONObject2 = Long.valueOf(l);
                }
                catch (JSONException paramAnonymousJSONObject2)
                {
                  Log.e(LiveFyreService.b(), "content not found");
                  paramAnonymousJSONObject2 = Long.valueOf(0L);
                  break label78;
                  if (m >= i) {
                    break label267;
                  }
                  i = 1;
                  break label145;
                  i = -1;
                  break label145;
                }
                LiveFyreService.b();
                new StringBuilder("h 1: ").append(m).append("h 2:").append(i);
                LiveFyreService.b();
                new StringBuilder("c 1: ").append(paramAnonymousJSONObject1).append(" c 2:").append(paramAnonymousJSONObject2);
                if (m != i) {
                  break label256;
                }
                i = paramAnonymousJSONObject2.compareTo(paramAnonymousJSONObject1);
                label145:
                LiveFyreService.b();
                LiveFyreService.b();
                return i;
                localJSONException1 = localJSONException1;
                Log.e(LiveFyreService.b(), "replies not found");
                i = 0;
                continue;
                localJSONException2 = localJSONException2;
                Log.e(LiveFyreService.b(), "likes not found");
                j = 0;
                continue;
                localJSONException3 = localJSONException3;
                Log.e(LiveFyreService.b(), "replies not found");
                i = 0;
              }
            }
            catch (JSONException localJSONException4)
            {
              for (;;)
              {
                Log.e(LiveFyreService.b(), "likes not found");
                int j = k;
              }
            }
          }
        }
      }
    }
  };
  private Context A = null;
  private ArrayList<ServiceChangListener> B = new ArrayList();
  public boolean a = false;
  public JSONObject b;
  public JSONObject c;
  public JSONObject d;
  public int e = 0;
  public int f = 0;
  public JSONArray g = new JSONArray();
  public JSONArray h = new JSONArray();
  public boolean i = true;
  public boolean j = false;
  ServiceChangListener k = new ServiceChangListener()
  {
    public final void a()
    {
      LiveFyreService.b();
      j = true;
      a = false;
    }
    
    public final void b()
    {
      LiveFyreService.b();
      a = false;
    }
  };
  int l = 0;
  e m = new e()
  {
    public final void a(Throwable paramAnonymousThrowable, JSONObject paramAnonymousJSONObject)
    {
      LiveFyreService.b();
      new StringBuilder("onFailure: ").append(paramAnonymousThrowable.getLocalizedMessage()).append(" data: ").append(paramAnonymousJSONObject);
      LiveFyreService.b(LiveFyreService.this);
    }
    
    public final void a(JSONObject paramAnonymousJSONObject)
    {
      int j = 1;
      k = 0;
      LiveFyreService.b();
      new StringBuilder("onSuccess3: ").append(paramAnonymousJSONObject);
      b = paramAnonymousJSONObject;
      LiveFyreService.b();
      new StringBuilder("data:").append(paramAnonymousJSONObject.toString());
      for (;;)
      {
        try
        {
          d = paramAnonymousJSONObject.getJSONObject("collectionSettings");
          if (d == null) {
            continue;
          }
          LiveFyreService.a(LiveFyreService.this, d.getString("collectionId"));
          if (LiveFyreService.a(LiveFyreService.this) != null)
          {
            LiveFyreService.b();
            new StringBuilder("collectionId: ").append(LiveFyreService.a(LiveFyreService.this));
            c = d.getJSONObject("archiveInfo");
            paramAnonymousJSONObject = c;
            if (paramAnonymousJSONObject == null) {
              continue;
            }
          }
        }
        catch (JSONException paramAnonymousJSONObject)
        {
          Log.e(LiveFyreService.b(), "collectionSettings not found");
          int i = k;
          continue;
          LiveFyreService.b();
          i = k;
          continue;
          LiveFyreService.b();
          getPageContent();
          return;
          i = 0;
          continue;
          i = 0;
          continue;
        }
        try
        {
          f = c.getInt("nPages");
          LiveFyreService.b();
          new StringBuilder("nPages: ").append(f);
          i = 1;
          LiveFyreService.b(LiveFyreService.this, d.getString("event"));
          if (i == 0) {
            continue;
          }
          paramAnonymousJSONObject = LiveFyreService.a(LiveFyreService.this);
          if (paramAnonymousJSONObject == null) {
            continue;
          }
          i = j;
          LiveFyreService.b();
          if (i != 0) {
            continue;
          }
          LiveFyreService.b();
          LiveFyreService.b(LiveFyreService.this);
          return;
        }
        catch (JSONException paramAnonymousJSONObject)
        {
          Log.e(LiveFyreService.b(), "nPages not found");
        }
        LiveFyreService.b();
      }
    }
  };
  private final Object r = new Object();
  private final Object s = new Object();
  private int t = 1;
  private String u = null;
  private String v = null;
  private String w = null;
  private String x = null;
  private String y = null;
  private String z = null;
  
  public LiveFyreService(Context paramContext, String paramString1, String paramString2, String paramString3, ServiceChangListener paramServiceChangListener)
  {
    A = paramContext;
    v = paramString2;
    new StringBuilder("userToken: ").append(v);
    x = paramString3;
    B.add(k);
    B.add(paramServiceChangListener);
    u = "cbs.fyre.co";
    w = "333388";
    paramContext = m;
    try
    {
      new StringBuilder("articleId: ").append(x);
      paramString1 = b.a(x);
      paramString2 = new StringBuilder(com.b.a.a.a.a).append(com.b.a.a.a.c).append(".").append(u).append("/bs3/");
      paramString2.append(u).append("/").append(w).append("/").append(paramString1).append("/init");
      paramString1 = paramString2.toString();
      c.a.a();
      c.a.a(paramString1, paramContext);
      return;
    }
    catch (Exception paramString1)
    {
      paramContext.a(paramString1, null);
    }
  }
  
  private static JSONArray b(JSONArray paramJSONArray, int paramInt)
  {
    int i2 = 0;
    ArrayList localArrayList = new ArrayList();
    int i1 = 0;
    for (;;)
    {
      if (i1 < paramJSONArray.length()) {
        try
        {
          localArrayList.add(paramJSONArray.getJSONObject(i1));
          i1 += 1;
        }
        catch (JSONException localJSONException2)
        {
          for (;;)
          {
            Log.e(n, "problem adding");
          }
        }
      }
    }
    paramJSONArray = localArrayList.iterator();
    while (paramJSONArray.hasNext())
    {
      JSONObject localJSONObject1 = (JSONObject)paramJSONArray.next();
      try
      {
        localJSONObject1.getJSONObject("content");
      }
      catch (JSONException localJSONException3)
      {
        Log.e(n, "content not found");
      }
    }
    switch (paramInt)
    {
    default: 
      Collections.sort(localArrayList, o);
    }
    for (;;)
    {
      paramJSONArray = localArrayList.iterator();
      while (paramJSONArray.hasNext())
      {
        JSONObject localJSONObject2 = (JSONObject)paramJSONArray.next();
        try
        {
          localJSONObject2 = localJSONObject2.getJSONObject("content");
          new StringBuilder("after: ").append(localJSONObject2.getString("id")).append(" ").append(localJSONObject2.getLong("createdAt"));
        }
        catch (JSONException localJSONException4)
        {
          Log.e(n, "content not found");
        }
      }
      Collections.sort(localArrayList, p);
      continue;
      Collections.sort(localArrayList, q);
    }
    paramJSONArray = new JSONArray(localArrayList);
    paramInt = i2;
    for (;;)
    {
      if (paramInt < paramJSONArray.length()) {
        try
        {
          paramJSONArray.getJSONObject(paramInt).getJSONObject("content");
          paramInt += 1;
        }
        catch (JSONException localJSONException1)
        {
          for (;;)
          {
            Log.e(n, "content not found");
          }
        }
      }
    }
    return paramJSONArray;
  }
  
  private void c()
  {
    Iterator localIterator = B.iterator();
    while (localIterator.hasNext()) {
      ((ServiceChangListener)localIterator.next()).a();
    }
  }
  
  public final JSONObject a(String paramString)
  {
    Object localObject3 = null;
    Object localObject1 = null;
    Object localObject2 = localObject3;
    if (paramString != null)
    {
      localObject2 = localObject3;
      if (h != null)
      {
        localObject2 = localObject3;
        if (h.length() > 0)
        {
          int i1 = 0;
          for (;;)
          {
            localObject2 = localObject1;
            if (i1 >= h.length()) {
              break label109;
            }
            try
            {
              localObject2 = h.getJSONObject(i1);
              boolean bool = ((JSONObject)localObject2).getString("id").equals(paramString);
              if (!bool) {
                break;
              }
              localObject1 = localObject2;
            }
            catch (JSONException localJSONException)
            {
              for (;;)
              {
                Log.e(n, "id not found");
              }
            }
            i1 += 1;
          }
        }
      }
    }
    label109:
    return localJSONException;
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 111	com/cbs/app/service/LiveFyreService:i	Z
    //   6: ifeq +148 -> 154
    //   9: aload_0
    //   10: getfield 96	com/cbs/app/service/LiveFyreService:s	Ljava/lang/Object;
    //   13: astore_1
    //   14: aload_1
    //   15: monitorenter
    //   16: aload_0
    //   17: getfield 98	com/cbs/app/service/LiveFyreService:a	Z
    //   20: ifne +132 -> 152
    //   23: aload_0
    //   24: iconst_1
    //   25: putfield 98	com/cbs/app/service/LiveFyreService:a	Z
    //   28: aload_0
    //   29: aload_0
    //   30: getfield 120	com/cbs/app/service/LiveFyreService:l	I
    //   33: iconst_1
    //   34: iadd
    //   35: putfield 120	com/cbs/app/service/LiveFyreService:l	I
    //   38: new 146	java/lang/StringBuilder
    //   41: dup
    //   42: ldc_w 293
    //   45: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: aload_0
    //   49: getfield 120	com/cbs/app/service/LiveFyreService:l	I
    //   52: invokevirtual 296	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   55: pop
    //   56: new 25	com/cbs/app/service/LiveFyreService$a
    //   59: dup
    //   60: aload_0
    //   61: invokespecial 297	com/cbs/app/service/LiveFyreService$a:<init>	(Lcom/cbs/app/service/LiveFyreService;)V
    //   64: astore_2
    //   65: aload_0
    //   66: getfield 113	com/cbs/app/service/LiveFyreService:j	Z
    //   69: ifeq +83 -> 152
    //   72: aload_0
    //   73: getfield 134	com/cbs/app/service/LiveFyreService:z	Ljava/lang/String;
    //   76: ifnonnull +10 -> 86
    //   79: aload_0
    //   80: ldc_w 299
    //   83: putfield 134	com/cbs/app/service/LiveFyreService:z	Ljava/lang/String;
    //   86: new 146	java/lang/StringBuilder
    //   89: dup
    //   90: getstatic 174	com/b/a/a/a:a	Ljava/lang/String;
    //   93: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   96: ldc_w 301
    //   99: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: aload_0
    //   103: getfield 124	com/cbs/app/service/LiveFyreService:u	Ljava/lang/String;
    //   106: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: ldc_w 303
    //   112: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: aload_0
    //   116: getfield 132	com/cbs/app/service/LiveFyreService:y	Ljava/lang/String;
    //   119: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: ldc -74
    //   124: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: aload_0
    //   128: getfield 134	com/cbs/app/service/LiveFyreService:z	Ljava/lang/String;
    //   131: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 187	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: astore_3
    //   138: getstatic 192	com/b/a/a/c:a	Lcom/c/a/a/a;
    //   141: invokevirtual 196	com/c/a/a/a:a	()V
    //   144: getstatic 192	com/b/a/a/c:a	Lcom/c/a/a/a;
    //   147: aload_3
    //   148: aload_2
    //   149: invokevirtual 199	com/c/a/a/a:a	(Ljava/lang/String;Lcom/c/a/a/c;)V
    //   152: aload_1
    //   153: monitorexit
    //   154: aload_0
    //   155: monitorexit
    //   156: return
    //   157: astore_2
    //   158: aload_2
    //   159: invokevirtual 306	java/lang/Exception:printStackTrace	()V
    //   162: goto -10 -> 152
    //   165: astore_2
    //   166: aload_1
    //   167: monitorexit
    //   168: aload_2
    //   169: athrow
    //   170: astore_1
    //   171: aload_0
    //   172: monitorexit
    //   173: aload_1
    //   174: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	175	0	this	LiveFyreService
    //   170	4	1	localObject2	Object
    //   64	85	2	locala	a
    //   157	2	2	localException	Exception
    //   165	4	2	localObject3	Object
    //   137	11	3	str	String
    // Exception table:
    //   from	to	target	type
    //   144	152	157	java/lang/Exception
    //   16	86	165	finally
    //   86	144	165	finally
    //   144	152	165	finally
    //   152	154	165	finally
    //   158	162	165	finally
    //   166	168	165	finally
    //   2	16	170	finally
    //   168	170	170	finally
  }
  
  public final void a(int paramInt)
  {
    t = paramInt;
    synchronized (r)
    {
      g = b(g, paramInt);
      return;
    }
  }
  
  public final void a(String paramString, e parame)
  {
    int i1 = 0;
    for (;;)
    {
      if ((!j) && (i1 < 5)) {
        try
        {
          Thread.sleep(1000L);
          i1 += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            Log.e(n, "thread interrupted");
          }
        }
      }
    }
    if (j)
    {
      if ((y != null) && (paramString != null) && (v != null)) {
        new StringBuilder("contentId: ").append(paramString).append("collectionId: ").append(y);
      }
      try
      {
        d.a(u, y, paramString, v, parame);
        return;
      }
      catch (IOException paramString)
      {
        parame.a(paramString, null);
        return;
      }
    }
    Toast.makeText(A, "Unable to like comment", 1).show();
  }
  
  public final void a(String paramString1, String paramString2, e parame)
  {
    int i1 = 0;
    for (;;)
    {
      if ((!j) && (i1 < 5)) {
        try
        {
          Thread.sleep(1000L);
          i1 += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            Log.e(n, "thread interrupted");
          }
        }
      }
    }
    if (j)
    {
      if ((y != null) && (paramString2 != null) && (!paramString2.equals("")) && (v != null))
      {
        new StringBuilder("posting: ").append(paramString2).append(" collectionId:").append(y).append(" networkDomain:").append(u).append(" userToken:").append(v);
        Object localObject1 = u;
        Object localObject2 = y;
        String str = v;
        Uri.Builder localBuilder = new Uri.Builder();
        localBuilder.appendQueryParameter("lftoken", str);
        localObject1 = new StringBuilder(com.b.a.a.a.a).append(com.b.a.a.a.d).append(".").append(com.b.a.a.a.a((String)localObject1)).append("/api/v3.0/collection/").append((String)localObject2).append("/post/").append(localBuilder.toString());
        localObject2 = new f();
        ((f)localObject2).a("body", paramString2);
        if ((paramString1 != null) && (paramString1.length() != 0)) {
          ((f)localObject2).a("parent_id", paramString1);
        }
        c.a.a(((StringBuilder)localObject1).toString(), (f)localObject2, parame);
      }
      return;
    }
    Toast.makeText(A, "Unable to post comment", 1).show();
  }
  
  public final void a(JSONArray paramJSONArray)
  {
    if (paramJSONArray != null)
    {
      JSONArray localJSONArray1;
      int i1;
      int i2;
      JSONArray localJSONArray3;
      try
      {
        do
        {
          synchronized (r)
          {
            localJSONArray1 = g;
            JSONArray localJSONArray2 = new JSONArray();
            i1 = 0;
            continue;
            while (i2 < localJSONArray3.length())
            {
              localJSONArray2.put(localJSONArray3.get(i2));
              i2 += 1;
            }
            g = localJSONArray2;
            return;
          }
        } while (i1 >= 2);
      }
      catch (JSONException paramJSONArray)
      {
        Log.e(n, "problem appending");
        return;
      }
      for (;;)
      {
        localJSONArray3 = new JSONArray[] { localJSONArray1, paramJSONArray }[i1];
        i2 = 0;
        break;
        i1 += 1;
      }
    }
  }
  
  public final void a(JSONObject paramJSONObject)
  {
    Iterator localIterator;
    if (paramJSONObject != null)
    {
      new StringBuilder("authors: ").append(paramJSONObject.toString());
      localIterator = paramJSONObject.keys();
    }
    label96:
    label99:
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localObject1 = localIterator.next();
        if ((localObject1 == null) || (!(localObject1 instanceof String))) {
          break label96;
        }
      }
      Object localObject2;
      for (Object localObject1 = (String)localObject1;; localObject2 = null)
      {
        if (localObject1 == null) {
          break label99;
        }
        try
        {
          localObject1 = paramJSONObject.getJSONObject((String)localObject1);
          h.put(localObject1);
        }
        catch (JSONException localJSONException)
        {
          Log.e(n, "key not found");
        }
        break;
        return;
      }
    }
  }
  
  /* Error */
  public final boolean a(JSONArray paramJSONArray, JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aload_2
    //   4: ldc -12
    //   6: invokevirtual 247	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   9: astore 6
    //   11: aload 6
    //   13: ifnull +237 -> 250
    //   16: aload 6
    //   18: ldc_w 259
    //   21: invokevirtual 262	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   24: astore 7
    //   26: aload 6
    //   28: ifnull +240 -> 268
    //   31: aload 6
    //   33: ldc_w 407
    //   36: invokevirtual 262	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   39: astore 8
    //   41: aload 7
    //   43: ifnull +35 -> 78
    //   46: aload 8
    //   48: ifnull +30 -> 78
    //   51: new 146	java/lang/StringBuilder
    //   54: dup
    //   55: ldc_w 409
    //   58: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   61: aload 7
    //   63: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: ldc_w 411
    //   69: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: aload 8
    //   74: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: pop
    //   78: iload 5
    //   80: istore 4
    //   82: aload 6
    //   84: ifnull +134 -> 218
    //   87: iload 5
    //   89: istore 4
    //   91: aload_1
    //   92: ifnull +126 -> 218
    //   95: iload 5
    //   97: istore 4
    //   99: aload 7
    //   101: ifnull +117 -> 218
    //   104: iconst_0
    //   105: istore_3
    //   106: iload 5
    //   108: istore 4
    //   110: iload_3
    //   111: aload_1
    //   112: invokevirtual 215	org/json/JSONArray:length	()I
    //   115: if_icmpge +103 -> 218
    //   118: aload_1
    //   119: iload_3
    //   120: invokevirtual 219	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   123: astore 10
    //   125: aload 10
    //   127: ldc -12
    //   129: invokevirtual 247	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   132: astore 11
    //   134: aload 11
    //   136: ldc_w 259
    //   139: invokevirtual 262	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   142: astore 9
    //   144: aload 11
    //   146: ldc_w 413
    //   149: invokevirtual 262	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   152: pop
    //   153: aload 9
    //   155: aload 7
    //   157: invokevirtual 289	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   160: ifeq +114 -> 274
    //   163: aload 11
    //   165: ldc_w 413
    //   168: invokevirtual 417	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   171: pop
    //   172: aload 11
    //   174: ldc_w 419
    //   177: invokevirtual 417	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   180: pop
    //   181: aload 11
    //   183: ldc_w 413
    //   186: aload 6
    //   188: ldc_w 413
    //   191: invokevirtual 262	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   194: invokevirtual 422	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   197: pop
    //   198: aload 11
    //   200: ldc_w 419
    //   203: aload 6
    //   205: ldc_w 419
    //   208: invokevirtual 262	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   211: invokevirtual 422	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   214: pop
    //   215: iconst_1
    //   216: istore 4
    //   218: iload 4
    //   220: ireturn
    //   221: astore 6
    //   223: getstatic 76	com/cbs/app/service/LiveFyreService:n	Ljava/lang/String;
    //   226: ldc -7
    //   228: invokestatic 226	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   231: pop
    //   232: aconst_null
    //   233: astore 6
    //   235: goto -224 -> 11
    //   238: astore 7
    //   240: getstatic 76	com/cbs/app/service/LiveFyreService:n	Ljava/lang/String;
    //   243: ldc_w 291
    //   246: invokestatic 226	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   249: pop
    //   250: aconst_null
    //   251: astore 7
    //   253: goto -227 -> 26
    //   256: astore 8
    //   258: getstatic 76	com/cbs/app/service/LiveFyreService:n	Ljava/lang/String;
    //   261: ldc_w 424
    //   264: invokestatic 226	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   267: pop
    //   268: aconst_null
    //   269: astore 8
    //   271: goto -230 -> 41
    //   274: aload 10
    //   276: ldc_w 426
    //   279: invokevirtual 430	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   282: astore 10
    //   284: aload 10
    //   286: ifnull +51 -> 337
    //   289: aload_0
    //   290: aload 10
    //   292: aload_2
    //   293: invokevirtual 432	com/cbs/app/service/LiveFyreService:a	(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z
    //   296: ifeq +5 -> 301
    //   299: iconst_1
    //   300: ireturn
    //   301: aload 8
    //   303: ifnull +34 -> 337
    //   306: aload 8
    //   308: aload 9
    //   310: invokevirtual 289	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   313: ifeq +24 -> 337
    //   316: aload 10
    //   318: aload_2
    //   319: invokevirtual 393	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   322: pop
    //   323: iconst_1
    //   324: ireturn
    //   325: astore 9
    //   327: getstatic 76	com/cbs/app/service/LiveFyreService:n	Ljava/lang/String;
    //   330: ldc_w 434
    //   333: invokestatic 226	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   336: pop
    //   337: iload_3
    //   338: iconst_1
    //   339: iadd
    //   340: istore_3
    //   341: goto -235 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	344	0	this	LiveFyreService
    //   0	344	1	paramJSONArray	JSONArray
    //   0	344	2	paramJSONObject	JSONObject
    //   105	236	3	i1	int
    //   80	139	4	bool1	boolean
    //   1	106	5	bool2	boolean
    //   9	195	6	localJSONObject1	JSONObject
    //   221	1	6	localJSONException1	JSONException
    //   233	1	6	localObject1	Object
    //   24	132	7	str1	String
    //   238	1	7	localJSONException2	JSONException
    //   251	1	7	localObject2	Object
    //   39	34	8	str2	String
    //   256	1	8	localJSONException3	JSONException
    //   269	38	8	localObject3	Object
    //   142	167	9	str3	String
    //   325	1	9	localJSONException4	JSONException
    //   123	194	10	localObject4	Object
    //   132	67	11	localJSONObject2	JSONObject
    // Exception table:
    //   from	to	target	type
    //   3	11	221	org/json/JSONException
    //   16	26	238	org/json/JSONException
    //   31	41	256	org/json/JSONException
    //   118	215	325	org/json/JSONException
    //   274	284	325	org/json/JSONException
    //   289	299	325	org/json/JSONException
    //   306	323	325	org/json/JSONException
  }
  
  public final void b(JSONObject paramJSONObject)
  {
    new StringBuilder("inserting: ").append(paramJSONObject);
    synchronized (r)
    {
      if (!a(g, paramJSONObject)) {
        g.put(paramJSONObject);
      }
      return;
    }
  }
  
  public JSONArray getComments()
  {
    synchronized (r)
    {
      JSONArray localJSONArray = g;
      return localJSONArray;
    }
  }
  
  public String getLiveFyreToken()
  {
    new StringBuilder("getLiveFyreToken: ").append(v);
    return v;
  }
  
  public void getPageContent()
  {
    e local6;
    if (i)
    {
      if (f > 2) {
        f = 2;
      }
      local6 = new e()
      {
        public final void a(Throwable paramAnonymousThrowable, JSONObject paramAnonymousJSONObject)
        {
          LiveFyreService.b();
          new StringBuilder("onFailure: ").append(paramAnonymousThrowable.getLocalizedMessage()).append(" data: ").append(paramAnonymousJSONObject);
          LiveFyreService.b(LiveFyreService.this);
        }
        
        public final void a(JSONObject paramAnonymousJSONObject)
        {
          LiveFyreService.b();
          try
          {
            localObject = paramAnonymousJSONObject.getJSONObject("authors");
            LiveFyreService.this.a((JSONObject)localObject);
          }
          catch (JSONException localJSONException1)
          {
            try
            {
              for (;;)
              {
                Object localObject = paramAnonymousJSONObject.getJSONArray("content");
                a((JSONArray)localObject);
                try
                {
                  paramAnonymousJSONObject = paramAnonymousJSONObject.getJSONObject("meta");
                  if (paramAnonymousJSONObject != null)
                  {
                    long l = paramAnonymousJSONObject.getLong("last");
                    LiveFyreService.b(LiveFyreService.this, Long.valueOf(l).toString());
                  }
                }
                catch (JSONException paramAnonymousJSONObject)
                {
                  for (;;)
                  {
                    Log.e(LiveFyreService.b(), "meta or last not found");
                  }
                }
                paramAnonymousJSONObject = LiveFyreService.this;
                e += 1;
                LiveFyreService.b();
                new StringBuilder("parsedPageCount: ").append(e);
                LiveFyreService.b();
                new StringBuilder("pages: ").append(f);
                if (e == f)
                {
                  LiveFyreService.b();
                  new StringBuilder("pageContentLength2:").append(g.length());
                  g = LiveFyreService.a(g, LiveFyreService.c(LiveFyreService.this));
                  LiveFyreService.b();
                  new StringBuilder("pageContentLength3:").append(g.length());
                  LiveFyreService.d(LiveFyreService.this);
                  ((Activity)LiveFyreService.e(LiveFyreService.this)).runOnUiThread(new Runnable()
                  {
                    public final void run()
                    {
                      synchronized (LiveFyreService.f(LiveFyreService.this))
                      {
                        a();
                        return;
                      }
                    }
                  });
                }
                return;
                localJSONException1 = localJSONException1;
                Log.e(LiveFyreService.b(), "authors not found");
              }
            }
            catch (JSONException localJSONException2)
            {
              for (;;)
              {
                Log.e(LiveFyreService.b(), "content not found");
              }
            }
          }
        }
      };
      if (f == 0)
      {
        new StringBuilder("pageContentLength4:").append(g.length());
        g = b(g, t);
        new StringBuilder("pageContentLength5:").append(g.length());
        c();
        ((Activity)A).runOnUiThread(new Runnable()
        {
          public final void run()
          {
            synchronized (LiveFyreService.f(LiveFyreService.this))
            {
              a();
              return;
            }
          }
        });
      }
    }
    else
    {
      return;
    }
    int i1 = 0;
    while (i1 < f)
    {
      if (c != null) {}
      try
      {
        i2 = c.getInt("nPages");
        if (i1 < 0)
        {
          i3 = i1 + i2;
          if ((i3 >= 0) && (i3 < i2)) {
            localObject = null;
          }
        }
      }
      catch (JSONException localJSONException2)
      {
        for (;;)
        {
          try
          {
            String str = c.getString("pathBase");
            localObject = str;
            if (localObject != null)
            {
              localObject = com.b.a.a.a.a + com.b.a.a.a.c + "." + u + "/bs3" + (String)localObject + i3 + ".json";
              c.a.a();
            }
          }
          catch (JSONException localJSONException2)
          {
            try
            {
              Object localObject;
              c.a.a((String)localObject, local6);
              i1 += 1;
              break;
              localJSONException1 = localJSONException1;
              Log.e(n, "nPages not found");
              int i2 = 0;
              continue;
              localJSONException2 = localJSONException2;
              Log.e(n, "pathBase not found");
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
              continue;
            }
          }
          int i3 = i1;
        }
      }
    }
  }
  
  public int getSize()
  {
    int i1 = 0;
    synchronized (r)
    {
      if (g != null) {
        i1 = g.length();
      }
      return i1;
    }
  }
  
  public void setLiveFyreToken(String paramString)
  {
    v = paramString;
    new StringBuilder("setLiveFyreToken: ").append(v);
  }
  
  public static abstract interface ServiceChangListener
  {
    public abstract void a();
    
    public abstract void b();
  }
  
  final class a
    extends e
  {
    public a() {}
    
    public final void a(Throwable paramThrowable, String paramString)
    {
      LiveFyreService.b();
      new StringBuilder("onFailure3: ").append(paramThrowable.getLocalizedMessage()).append(" s:").append(paramString);
      a = false;
    }
    
    public final void a(Throwable paramThrowable, JSONArray paramJSONArray)
    {
      LiveFyreService.b();
      new StringBuilder("onFailure2:").append(paramThrowable).append(" obj:").append(paramJSONArray);
      a = false;
    }
    
    public final void a(Throwable paramThrowable, JSONObject paramJSONObject)
    {
      LiveFyreService.b();
      new StringBuilder("onFailure5: ").append(paramThrowable.getLocalizedMessage()).append(" data: ").append(paramJSONObject);
      a = false;
    }
    
    public final void a(JSONObject arg1)
    {
      LiveFyreService.b();
      new StringBuilder("streamer onSuccess: ").append(???);
      int i;
      JSONObject localJSONObject2;
      try
      {
        ??? = ???.getJSONObject("data");
        if (??? != null)
        {
          LiveFyreService.b();
          new StringBuilder("data: ").append(???.toString());
        }
      }
      catch (JSONException localJSONException1)
      {
        try
        {
          localJSONObject1 = ???.getJSONObject("states");
          if (localJSONObject1 != null)
          {
            LiveFyreService.b();
            new StringBuilder("states: ").append(localJSONObject1.toString());
            Iterator localIterator = localJSONObject1.keys();
            i = 0;
            if (localIterator.hasNext())
            {
              ??? = (String)localIterator.next();
              LiveFyreService.b();
            }
          }
        }
        catch (JSONException localJSONException1)
        {
          try
          {
            for (;;)
            {
              JSONObject localJSONObject1;
              ??? = localJSONObject1.get((String)???);
              if ((??? != null) && ((??? instanceof JSONObject)))
              {
                JSONObject localJSONObject3 = (JSONObject)???;
                LiveFyreService.b();
                new StringBuilder("comment222: ").append(localJSONObject3.toString());
                synchronized (LiveFyreService.g(LiveFyreService.this))
                {
                  boolean bool = a(g, localJSONObject3);
                  i = 1;
                  if (!bool)
                  {
                    LiveFyreService.b();
                    g.put(localJSONObject3);
                  }
                }
                ??? = ???;
                Log.e(LiveFyreService.b(), "data not found");
                ??? = null;
              }
            }
            localJSONException1 = localJSONException1;
            Log.e(LiveFyreService.b(), "states not found");
            localJSONObject2 = null;
          }
          catch (JSONException localJSONException4)
          {
            for (;;)
            {
              Log.e(LiveFyreService.b(), "key not found");
              Object localObject3 = null;
            }
          }
        }
      }
      for (;;)
      {
        try
        {
          localJSONObject2 = ???.getJSONObject("authors");
          LiveFyreService.this.a(localJSONObject2);
        }
        catch (JSONException ???)
        {
          try
          {
            long l = ???.getLong("maxEventId");
            LiveFyreService.b(LiveFyreService.this, Long.valueOf(l).toString());
            LiveFyreService.b();
            new StringBuilder("-----------> lastEventId: ").append(LiveFyreService.h(LiveFyreService.this));
            if (i == 0) {
              break label496;
            }
            LiveFyreService.b();
          }
          catch (JSONException ???)
          {
            synchronized (LiveFyreService.g(LiveFyreService.this))
            {
              LiveFyreService.b();
              g = LiveFyreService.a(g, LiveFyreService.c(LiveFyreService.this));
              i = 0;
              int j = g.length();
              if (i < j) {
                try
                {
                  g.getJSONObject(i).getJSONObject("content");
                  i += 1;
                  continue;
                  localJSONException2 = localJSONException2;
                  Log.e(LiveFyreService.b(), "authors not found");
                  continue;
                  ??? = ???;
                  Log.e(LiveFyreService.b(), "maxEventId not found");
                }
                catch (JSONException localJSONException3)
                {
                  Log.e(LiveFyreService.b(), "content not found");
                  continue;
                }
              }
            }
          }
        }
        LiveFyreService.d(LiveFyreService.this);
        label496:
        a = false;
        return;
        i = 0;
        continue;
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.LiveFyreService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */