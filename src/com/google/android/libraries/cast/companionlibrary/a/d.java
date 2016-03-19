package com.google.android.libraries.cast.companionlibrary.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.TypedValue;
import android.widget.Toast;
import com.google.android.gms.cast.h;
import com.google.android.gms.common.images.WebImage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class d
{
  public static final boolean a;
  private static final String b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = b.a(d.class);
      return;
    }
  }
  
  public static int a(Context paramContext, float paramFloat)
  {
    return (int)TypedValue.applyDimension(1, paramFloat, paramContext.getResources().getDisplayMetrics());
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    if (paramBitmap == null) {
      return null;
    }
    Bitmap localBitmap = Bitmap.createBitmap(paramInt, paramInt, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    localCanvas.drawColor(-1);
    localCanvas.drawBitmap(paramBitmap, (paramInt - paramBitmap.getWidth()) / 2, (paramInt - paramBitmap.getHeight()) / 2, null);
    return localBitmap;
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if (paramBitmap == null) {
      return null;
    }
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    float f2 = Math.max(paramInt2 / i, paramInt1 / j);
    float f1 = i * f2;
    f2 = j * f2;
    float f3 = (paramInt2 - f1) / 2.0F;
    float f4 = (paramInt1 - f2) / 2.0F;
    RectF localRectF = new RectF(f3, f4, f1 + f3, f2 + f4);
    Bitmap localBitmap = Bitmap.createBitmap(paramInt2, paramInt1, paramBitmap.getConfig());
    new Canvas(localBitmap).drawBitmap(paramBitmap, null, localRectF, null);
    return localBitmap;
  }
  
  public static Uri a(com.google.android.gms.cast.d paramd)
  {
    paramd = paramd.d();
    if ((paramd != null) && (paramd.b().size() > 1)) {
      return ((WebImage)paramd.b().get(1)).b();
    }
    return null;
  }
  
  /* Error */
  public static com.google.android.gms.cast.d a(Bundle paramBundle)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_2
    //   5: aload_0
    //   6: ifnonnull +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 109	com/google/android/gms/cast/e
    //   14: dup
    //   15: iconst_1
    //   16: invokespecial 131	com/google/android/gms/cast/e:<init>	(I)V
    //   19: astore 6
    //   21: aload 6
    //   23: ldc -123
    //   25: aload_0
    //   26: ldc -123
    //   28: invokevirtual 139	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   31: invokevirtual 142	com/google/android/gms/cast/e:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   34: aload 6
    //   36: ldc -112
    //   38: aload_0
    //   39: ldc -112
    //   41: invokevirtual 139	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   44: invokevirtual 142	com/google/android/gms/cast/e:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   47: aload 6
    //   49: ldc -110
    //   51: aload_0
    //   52: ldc -110
    //   54: invokevirtual 139	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   57: invokevirtual 142	com/google/android/gms/cast/e:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   60: aload_0
    //   61: ldc -108
    //   63: invokevirtual 152	android/os/Bundle:getStringArrayList	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   66: astore_3
    //   67: aload_3
    //   68: ifnull +51 -> 119
    //   71: aload_3
    //   72: invokevirtual 158	java/util/ArrayList:isEmpty	()Z
    //   75: ifne +44 -> 119
    //   78: aload_3
    //   79: invokevirtual 162	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   82: astore_3
    //   83: aload_3
    //   84: invokeinterface 167 1 0
    //   89: ifeq +30 -> 119
    //   92: aload 6
    //   94: new 123	com/google/android/gms/common/images/WebImage
    //   97: dup
    //   98: aload_3
    //   99: invokeinterface 171 1 0
    //   104: checkcast 173	java/lang/String
    //   107: invokestatic 179	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   110: invokespecial 182	com/google/android/gms/common/images/WebImage:<init>	(Landroid/net/Uri;)V
    //   113: invokevirtual 185	com/google/android/gms/cast/e:a	(Lcom/google/android/gms/common/images/WebImage;)V
    //   116: goto -33 -> 83
    //   119: aload_0
    //   120: ldc -69
    //   122: invokevirtual 139	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   125: astore 5
    //   127: aload 5
    //   129: invokestatic 192	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   132: ifne +264 -> 396
    //   135: new 194	org/json/JSONObject
    //   138: dup
    //   139: aload 5
    //   141: invokespecial 197	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   144: astore_3
    //   145: aload_0
    //   146: ldc -57
    //   148: invokevirtual 139	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   151: ifnull +250 -> 401
    //   154: new 201	org/json/JSONArray
    //   157: dup
    //   158: aload_0
    //   159: ldc -57
    //   161: invokevirtual 139	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   164: invokespecial 202	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   167: astore 5
    //   169: new 154	java/util/ArrayList
    //   172: dup
    //   173: invokespecial 203	java/util/ArrayList:<init>	()V
    //   176: astore_2
    //   177: aload 5
    //   179: invokevirtual 206	org/json/JSONArray:length	()I
    //   182: ifle +219 -> 401
    //   185: iconst_0
    //   186: istore_1
    //   187: iload_1
    //   188: aload 5
    //   190: invokevirtual 206	org/json/JSONArray:length	()I
    //   193: if_icmpge +208 -> 401
    //   196: aload 5
    //   198: iload_1
    //   199: invokevirtual 207	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   202: checkcast 194	org/json/JSONObject
    //   205: astore 4
    //   207: new 209	com/google/android/gms/cast/h$a
    //   210: dup
    //   211: aload 4
    //   213: ldc -45
    //   215: invokevirtual 215	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   218: aload 4
    //   220: ldc -39
    //   222: invokevirtual 221	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   225: invokespecial 224	com/google/android/gms/cast/h$a:<init>	(JI)V
    //   228: astore 7
    //   230: aload 4
    //   232: ldc -30
    //   234: invokevirtual 230	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   237: ifeq +16 -> 253
    //   240: aload 7
    //   242: aload 4
    //   244: ldc -30
    //   246: invokevirtual 231	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   249: invokevirtual 234	com/google/android/gms/cast/h$a:b	(Ljava/lang/String;)Lcom/google/android/gms/cast/h$a;
    //   252: pop
    //   253: aload 4
    //   255: ldc -20
    //   257: invokevirtual 230	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   260: ifeq +16 -> 276
    //   263: aload 7
    //   265: aload 4
    //   267: ldc -20
    //   269: invokevirtual 221	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   272: invokevirtual 239	com/google/android/gms/cast/h$a:a	(I)Lcom/google/android/gms/cast/h$a;
    //   275: pop
    //   276: aload 4
    //   278: ldc -15
    //   280: invokevirtual 230	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   283: ifeq +16 -> 299
    //   286: aload 7
    //   288: aload 4
    //   290: ldc -15
    //   292: invokevirtual 231	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   295: invokevirtual 243	com/google/android/gms/cast/h$a:a	(Ljava/lang/String;)Lcom/google/android/gms/cast/h$a;
    //   298: pop
    //   299: aload 4
    //   301: ldc -11
    //   303: invokevirtual 230	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   306: ifeq +16 -> 322
    //   309: aload 7
    //   311: aload 4
    //   313: ldc -11
    //   315: invokevirtual 231	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   318: invokevirtual 248	com/google/android/gms/cast/h$a:c	(Ljava/lang/String;)Lcom/google/android/gms/cast/h$a;
    //   321: pop
    //   322: aload 4
    //   324: ldc -57
    //   326: invokevirtual 230	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   329: ifeq +23 -> 352
    //   332: aload 7
    //   334: new 194	org/json/JSONObject
    //   337: dup
    //   338: aload 4
    //   340: ldc -57
    //   342: invokevirtual 231	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   345: invokespecial 197	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   348: invokevirtual 251	com/google/android/gms/cast/h$a:a	(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/h$a;
    //   351: pop
    //   352: aload_2
    //   353: aload 7
    //   355: invokevirtual 254	com/google/android/gms/cast/h$a:a	()Lcom/google/android/gms/cast/h;
    //   358: invokeinterface 258 2 0
    //   363: pop
    //   364: iload_1
    //   365: iconst_1
    //   366: iadd
    //   367: istore_1
    //   368: goto -181 -> 187
    //   371: astore_3
    //   372: getstatic 25	com/google/android/libraries/cast/companionlibrary/a/d:b	Ljava/lang/String;
    //   375: new 260	java/lang/StringBuilder
    //   378: dup
    //   379: ldc_w 262
    //   382: invokespecial 263	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   385: aload 5
    //   387: invokevirtual 267	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   390: invokevirtual 271	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   393: invokestatic 272	com/google/android/libraries/cast/companionlibrary/a/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   396: aconst_null
    //   397: astore_3
    //   398: goto -253 -> 145
    //   401: new 274	com/google/android/gms/cast/d$a
    //   404: dup
    //   405: aload_0
    //   406: ldc_w 276
    //   409: invokevirtual 139	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   412: invokespecial 277	com/google/android/gms/cast/d$a:<init>	(Ljava/lang/String;)V
    //   415: aload_0
    //   416: ldc_w 279
    //   419: invokevirtual 280	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   422: invokevirtual 283	com/google/android/gms/cast/d$a:a	(I)Lcom/google/android/gms/cast/d$a;
    //   425: aload_0
    //   426: ldc_w 285
    //   429: invokevirtual 139	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   432: invokevirtual 288	com/google/android/gms/cast/d$a:a	(Ljava/lang/String;)Lcom/google/android/gms/cast/d$a;
    //   435: aload 6
    //   437: invokevirtual 291	com/google/android/gms/cast/d$a:a	(Lcom/google/android/gms/cast/e;)Lcom/google/android/gms/cast/d$a;
    //   440: aload_3
    //   441: invokevirtual 294	com/google/android/gms/cast/d$a:a	(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/d$a;
    //   444: aload_2
    //   445: invokevirtual 297	com/google/android/gms/cast/d$a:a	(Ljava/util/List;)Lcom/google/android/gms/cast/d$a;
    //   448: astore_2
    //   449: aload_0
    //   450: ldc_w 299
    //   453: invokevirtual 302	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   456: ifeq +27 -> 483
    //   459: aload_0
    //   460: ldc_w 299
    //   463: invokevirtual 303	android/os/Bundle:getLong	(Ljava/lang/String;)J
    //   466: lconst_0
    //   467: lcmp
    //   468: iflt +15 -> 483
    //   471: aload_2
    //   472: aload_0
    //   473: ldc_w 299
    //   476: invokevirtual 303	android/os/Bundle:getLong	(Ljava/lang/String;)J
    //   479: invokevirtual 306	com/google/android/gms/cast/d$a:a	(J)Lcom/google/android/gms/cast/d$a;
    //   482: pop
    //   483: aload_2
    //   484: invokevirtual 309	com/google/android/gms/cast/d$a:a	()Lcom/google/android/gms/cast/d;
    //   487: areturn
    //   488: astore 5
    //   490: aload 4
    //   492: astore_2
    //   493: aload 5
    //   495: astore 4
    //   497: getstatic 25	com/google/android/libraries/cast/companionlibrary/a/d:b	Ljava/lang/String;
    //   500: ldc_w 311
    //   503: aload 4
    //   505: invokestatic 314	com/google/android/libraries/cast/companionlibrary/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   508: goto -107 -> 401
    //   511: astore 4
    //   513: goto -16 -> 497
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	516	0	paramBundle	Bundle
    //   186	182	1	i	int
    //   4	489	2	localObject1	Object
    //   66	79	3	localObject2	Object
    //   371	1	3	localJSONException1	JSONException
    //   397	44	3	localJSONObject	JSONObject
    //   1	503	4	localObject3	Object
    //   511	1	4	localJSONException2	JSONException
    //   125	261	5	localObject4	Object
    //   488	6	5	localJSONException3	JSONException
    //   19	417	6	locale	com.google.android.gms.cast.e
    //   228	126	7	locala	com.google.android.gms.cast.h.a
    // Exception table:
    //   from	to	target	type
    //   135	145	371	org/json/JSONException
    //   154	177	488	org/json/JSONException
    //   177	185	511	org/json/JSONException
    //   187	253	511	org/json/JSONException
    //   253	276	511	org/json/JSONException
    //   276	299	511	org/json/JSONException
    //   299	322	511	org/json/JSONException
    //   322	352	511	org/json/JSONException
    //   352	364	511	org/json/JSONException
  }
  
  public static String a(int paramInt)
  {
    int i = paramInt / 1000;
    paramInt = i / 3600;
    int j = i % 3600;
    i = j / 60;
    j %= 60;
    if (paramInt > 0) {
      return String.format("%d:%02d:%02d", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(i), Integer.valueOf(j) });
    }
    return String.format("%d:%02d", new Object[] { Integer.valueOf(i), Integer.valueOf(j) });
  }
  
  public static String a(Context paramContext)
  {
    paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
    if (paramContext != null) {
      return paramContext.getSSID();
    }
    return null;
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    Toast.makeText(paramContext, paramContext.getString(paramInt), 1).show();
  }
  
  public static boolean a(Activity paramActivity)
  {
    int i = com.google.android.gms.common.e.a(paramActivity);
    switch (i)
    {
    default: 
      Dialog localDialog = com.google.android.gms.common.e.a(i, paramActivity, 0);
      localDialog.setOnCancelListener(new d.1(paramActivity));
      localDialog.show();
      return false;
    }
    return true;
  }
  
  public static Bundle b(com.google.android.gms.cast.d paramd)
  {
    if (paramd == null) {
      return null;
    }
    Object localObject2 = paramd.d();
    Bundle localBundle = new Bundle();
    localBundle.putString("com.google.android.gms.cast.metadata.TITLE", ((com.google.android.gms.cast.e)localObject2).a("com.google.android.gms.cast.metadata.TITLE"));
    localBundle.putString("com.google.android.gms.cast.metadata.SUBTITLE", ((com.google.android.gms.cast.e)localObject2).a("com.google.android.gms.cast.metadata.SUBTITLE"));
    localBundle.putString("movie-urls", paramd.a());
    localBundle.putString("com.google.android.gms.cast.metadata.STUDIO", ((com.google.android.gms.cast.e)localObject2).a("com.google.android.gms.cast.metadata.STUDIO"));
    localBundle.putString("content-type", paramd.c());
    localBundle.putInt("stream-type", paramd.b());
    localBundle.putLong("stream-duration", paramd.e());
    if (!((com.google.android.gms.cast.e)localObject2).b().isEmpty())
    {
      localObject1 = new ArrayList();
      localObject2 = ((com.google.android.gms.cast.e)localObject2).b().iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((ArrayList)localObject1).add(((WebImage)((Iterator)localObject2).next()).b().toString());
      }
      localBundle.putStringArrayList("images", (ArrayList)localObject1);
    }
    Object localObject1 = paramd.g();
    if (localObject1 != null) {
      localBundle.putString("custom-data", ((JSONObject)localObject1).toString());
    }
    if ((paramd.f() != null) && (!paramd.f().isEmpty())) {
      try
      {
        localObject1 = new JSONArray();
        paramd = paramd.f().iterator();
        while (paramd.hasNext())
        {
          localObject2 = (h)paramd.next();
          JSONObject localJSONObject = new JSONObject();
          localJSONObject.put("track-name", ((h)localObject2).d());
          localJSONObject.put("track-custom-id", ((h)localObject2).c());
          localJSONObject.put("track-id", ((h)localObject2).a());
          localJSONObject.put("track-language", ((h)localObject2).e());
          localJSONObject.put("track-type", ((h)localObject2).b());
          if (((h)localObject2).f() != -1) {
            localJSONObject.put("track-subtype", ((h)localObject2).f());
          }
          if (((h)localObject2).g() != null) {
            localJSONObject.put("track-custom-data", ((h)localObject2).g().toString());
          }
          ((JSONArray)localObject1).put(localJSONObject);
          continue;
          return localBundle;
        }
      }
      catch (JSONException paramd)
      {
        b.a(b, "mediaInfoToBundle(): Failed to convert Tracks data to json", paramd);
      }
    }
    for (;;)
    {
      localBundle.putString("track-data", ((JSONArray)localObject1).toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.cast.companionlibrary.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */