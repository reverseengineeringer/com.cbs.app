package com.google.android.gms.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.security.KeyPair;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public final class d
{
  static String a = null;
  static int b = 0;
  static int c = 0;
  static int d = 0;
  Context e;
  Map<String, Object> f = new HashMap();
  Messenger g;
  Messenger h;
  MessengerCompat i;
  PendingIntent j;
  long k;
  long l;
  int m;
  int n;
  long o;
  
  public d(Context paramContext)
  {
    e = paramContext;
  }
  
  public static String a()
  {
    try
    {
      int i1 = d;
      d = i1 + 1;
      String str = Integer.toString(i1);
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static String a(Context paramContext)
  {
    if (a != null) {
      return a;
    }
    b = Process.myUid();
    paramContext = paramContext.getPackageManager();
    Object localObject1 = paramContext.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (ResolveInfo)((Iterator)localObject1).next();
      if (paramContext.checkPermission("com.google.android.c2dm.permission.RECEIVE", serviceInfo.packageName) == 0) {
        try
        {
          ApplicationInfo localApplicationInfo = paramContext.getApplicationInfo(serviceInfo.packageName, 0);
          new StringBuilder("Found ").append(uid);
          c = uid;
          localObject2 = serviceInfo.packageName;
          a = (String)localObject2;
          return (String)localObject2;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException2) {}
      } else {
        new StringBuilder("Possible malicious package ").append(serviceInfo.packageName).append(" declares com.google.android.c2dm.intent.REGISTER without permission");
      }
    }
    try
    {
      localObject1 = paramContext.getApplicationInfo("com.google.android.gms", 0);
      a = packageName;
      c = uid;
      localObject1 = a;
      return (String)localObject1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      try
      {
        paramContext = paramContext.getApplicationInfo("com.google.android.gsf", 0);
        a = packageName;
        c = uid;
        paramContext = a;
        return paramContext;
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
    return null;
  }
  
  static String a(Intent paramIntent)
  {
    if (paramIntent == null) {
      throw new IOException("SERVICE_NOT_AVAILABLE");
    }
    String str2 = paramIntent.getStringExtra("registration_id");
    String str1 = str2;
    if (str2 == null) {
      str1 = paramIntent.getStringExtra("unregistered");
    }
    paramIntent.getLongExtra("Retry-After", 0L);
    if (str1 == null)
    {
      str1 = paramIntent.getStringExtra("error");
      if (str1 != null) {
        throw new IOException(str1);
      }
      new StringBuilder("Unexpected response from GCM ").append(paramIntent.getExtras());
      new Throwable();
      throw new IOException("SERVICE_NOT_AVAILABLE");
    }
    return str1;
  }
  
  /* Error */
  private static String a(KeyPair paramKeyPair, String... paramVarArgs)
  {
    // Byte code:
    //   0: ldc -67
    //   2: aload_1
    //   3: invokestatic 195	android/text/TextUtils:join	(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    //   6: ldc -59
    //   8: invokevirtual 203	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   11: astore_1
    //   12: aload_0
    //   13: invokevirtual 209	java/security/KeyPair:getPrivate	()Ljava/security/PrivateKey;
    //   16: astore_2
    //   17: aload_2
    //   18: instanceof 211
    //   21: ifeq +43 -> 64
    //   24: ldc -43
    //   26: astore_0
    //   27: aload_0
    //   28: invokestatic 219	java/security/Signature:getInstance	(Ljava/lang/String;)Ljava/security/Signature;
    //   31: astore_0
    //   32: aload_0
    //   33: aload_2
    //   34: invokevirtual 223	java/security/Signature:initSign	(Ljava/security/PrivateKey;)V
    //   37: aload_0
    //   38: aload_1
    //   39: invokevirtual 227	java/security/Signature:update	([B)V
    //   42: aload_0
    //   43: invokevirtual 231	java/security/Signature:sign	()[B
    //   46: invokestatic 236	com/google/android/gms/iid/a:a	([B)Ljava/lang/String;
    //   49: astore_0
    //   50: aload_0
    //   51: areturn
    //   52: astore_0
    //   53: ldc -18
    //   55: ldc -16
    //   57: aload_0
    //   58: invokestatic 245	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   61: pop
    //   62: aconst_null
    //   63: areturn
    //   64: ldc -9
    //   66: astore_0
    //   67: goto -40 -> 27
    //   70: astore_0
    //   71: ldc -18
    //   73: ldc -7
    //   75: aload_0
    //   76: invokestatic 245	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   79: pop
    //   80: aconst_null
    //   81: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	82	0	paramKeyPair	KeyPair
    //   0	82	1	paramVarArgs	String[]
    //   16	18	2	localPrivateKey	java.security.PrivateKey
    // Exception table:
    //   from	to	target	type
    //   0	12	52	java/io/UnsupportedEncodingException
    //   12	24	70	java/security/GeneralSecurityException
    //   27	50	70	java/security/GeneralSecurityException
  }
  
  private void a(Object paramObject)
  {
    synchronized (getClass())
    {
      Iterator localIterator = f.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = f.get(str);
        f.put(str, paramObject);
        a(localObject, paramObject);
      }
    }
  }
  
  private static void a(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 instanceof ConditionVariable)) {
      ((ConditionVariable)paramObject1).open();
    }
    Message localMessage;
    if ((paramObject1 instanceof Messenger))
    {
      paramObject1 = (Messenger)paramObject1;
      localMessage = Message.obtain();
      obj = paramObject2;
    }
    try
    {
      ((Messenger)paramObject1).send(localMessage);
      return;
    }
    catch (RemoteException paramObject1)
    {
      new StringBuilder("Failed to send response ").append(paramObject1);
    }
  }
  
  private void a(String paramString, Object paramObject)
  {
    synchronized (getClass())
    {
      Object localObject = f.get(paramString);
      f.put(paramString, paramObject);
      a(localObject, paramObject);
      return;
    }
  }
  
  /* Error */
  private Intent b(Bundle arg1, KeyPair paramKeyPair)
  {
    // Byte code:
    //   0: new 278	android/os/ConditionVariable
    //   3: dup
    //   4: invokespecial 302	android/os/ConditionVariable:<init>	()V
    //   7: astore 7
    //   9: invokestatic 304	com/google/android/gms/iid/d:a	()Ljava/lang/String;
    //   12: astore 6
    //   14: aload_0
    //   15: invokevirtual 254	java/lang/Object:getClass	()Ljava/lang/Class;
    //   18: astore 8
    //   20: aload 8
    //   22: monitorenter
    //   23: aload_0
    //   24: getfield 48	com/google/android/gms/iid/d:f	Ljava/util/Map;
    //   27: aload 6
    //   29: aload 7
    //   31: invokeinterface 271 3 0
    //   36: pop
    //   37: aload 8
    //   39: monitorexit
    //   40: invokestatic 310	android/os/SystemClock:elapsedRealtime	()J
    //   43: lstore_3
    //   44: aload_0
    //   45: getfield 312	com/google/android/gms/iid/d:o	J
    //   48: lconst_0
    //   49: lcmp
    //   50: ifeq +62 -> 112
    //   53: lload_3
    //   54: aload_0
    //   55: getfield 312	com/google/android/gms/iid/d:o	J
    //   58: lcmp
    //   59: ifgt +53 -> 112
    //   62: new 124	java/lang/StringBuilder
    //   65: dup
    //   66: ldc_w 314
    //   69: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   72: aload_0
    //   73: getfield 312	com/google/android/gms/iid/d:o	J
    //   76: lload_3
    //   77: lsub
    //   78: invokevirtual 317	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   81: ldc_w 319
    //   84: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_0
    //   88: getfield 321	com/google/android/gms/iid/d:n	I
    //   91: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   94: pop
    //   95: new 151	java/io/IOException
    //   98: dup
    //   99: ldc_w 323
    //   102: invokespecial 154	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   105: athrow
    //   106: astore_1
    //   107: aload 8
    //   109: monitorexit
    //   110: aload_1
    //   111: athrow
    //   112: aload_0
    //   113: getfield 325	com/google/android/gms/iid/d:g	Landroid/os/Messenger;
    //   116: ifnonnull +33 -> 149
    //   119: aload_0
    //   120: getfield 50	com/google/android/gms/iid/d:e	Landroid/content/Context;
    //   123: invokestatic 327	com/google/android/gms/iid/d:a	(Landroid/content/Context;)Ljava/lang/String;
    //   126: pop
    //   127: aload_0
    //   128: new 283	android/os/Messenger
    //   131: dup
    //   132: new 329	com/google/android/gms/iid/d$1
    //   135: dup
    //   136: aload_0
    //   137: invokestatic 335	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   140: invokespecial 338	com/google/android/gms/iid/d$1:<init>	(Lcom/google/android/gms/iid/d;Landroid/os/Looper;)V
    //   143: invokespecial 341	android/os/Messenger:<init>	(Landroid/os/Handler;)V
    //   146: putfield 325	com/google/android/gms/iid/d:g	Landroid/os/Messenger;
    //   149: getstatic 32	com/google/android/gms/iid/d:a	Ljava/lang/String;
    //   152: ifnonnull +14 -> 166
    //   155: new 151	java/io/IOException
    //   158: dup
    //   159: ldc_w 343
    //   162: invokespecial 154	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   165: athrow
    //   166: aload_0
    //   167: invokestatic 310	android/os/SystemClock:elapsedRealtime	()J
    //   170: putfield 345	com/google/android/gms/iid/d:k	J
    //   173: new 74	android/content/Intent
    //   176: dup
    //   177: ldc 76
    //   179: invokespecial 79	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   182: astore 8
    //   184: aload 8
    //   186: getstatic 32	com/google/android/gms/iid/d:a	Ljava/lang/String;
    //   189: invokevirtual 349	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   192: pop
    //   193: aload_1
    //   194: ldc_w 351
    //   197: aload_0
    //   198: getfield 50	com/google/android/gms/iid/d:e	Landroid/content/Context;
    //   201: invokestatic 356	com/google/android/gms/gcm/a:b	(Landroid/content/Context;)I
    //   204: invokestatic 57	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   207: invokevirtual 362	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   210: aload_1
    //   211: ldc_w 364
    //   214: getstatic 369	android/os/Build$VERSION:SDK_INT	I
    //   217: invokestatic 57	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   220: invokevirtual 362	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   223: aload_1
    //   224: ldc_w 371
    //   227: aload_0
    //   228: getfield 50	com/google/android/gms/iid/d:e	Landroid/content/Context;
    //   231: invokestatic 373	com/google/android/gms/iid/a:a	(Landroid/content/Context;)I
    //   234: invokestatic 57	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   237: invokevirtual 362	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   240: aload_1
    //   241: ldc_w 375
    //   244: ldc_w 377
    //   247: invokevirtual 362	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   250: aload_1
    //   251: ldc_w 379
    //   254: aload_2
    //   255: invokestatic 382	com/google/android/gms/iid/a:a	(Ljava/security/KeyPair;)Ljava/lang/String;
    //   258: invokevirtual 362	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   261: aload_2
    //   262: invokevirtual 386	java/security/KeyPair:getPublic	()Ljava/security/PublicKey;
    //   265: invokeinterface 391 1 0
    //   270: invokestatic 236	com/google/android/gms/iid/a:a	([B)Ljava/lang/String;
    //   273: astore 9
    //   275: aload_1
    //   276: ldc_w 393
    //   279: aload 9
    //   281: invokevirtual 362	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   284: aload_1
    //   285: ldc_w 395
    //   288: aload_2
    //   289: iconst_2
    //   290: anewarray 199	java/lang/String
    //   293: dup
    //   294: iconst_0
    //   295: aload_0
    //   296: getfield 50	com/google/android/gms/iid/d:e	Landroid/content/Context;
    //   299: invokevirtual 398	android/content/Context:getPackageName	()Ljava/lang/String;
    //   302: aastore
    //   303: dup
    //   304: iconst_1
    //   305: aload 9
    //   307: aastore
    //   308: invokestatic 400	com/google/android/gms/iid/d:a	(Ljava/security/KeyPair;[Ljava/lang/String;)Ljava/lang/String;
    //   311: invokevirtual 362	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   314: aload 8
    //   316: aload_1
    //   317: invokevirtual 404	android/content/Intent:putExtras	(Landroid/os/Bundle;)Landroid/content/Intent;
    //   320: pop
    //   321: aload_0
    //   322: aload 8
    //   324: invokespecial 407	com/google/android/gms/iid/d:c	(Landroid/content/Intent;)V
    //   327: aload_0
    //   328: invokestatic 310	android/os/SystemClock:elapsedRealtime	()J
    //   331: putfield 345	com/google/android/gms/iid/d:k	J
    //   334: aload 8
    //   336: ldc_w 409
    //   339: new 124	java/lang/StringBuilder
    //   342: dup
    //   343: ldc_w 411
    //   346: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   349: aload 6
    //   351: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: ldc_w 413
    //   357: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: invokevirtual 415	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: invokevirtual 419	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   366: pop
    //   367: aload 8
    //   369: ldc_w 421
    //   372: new 124	java/lang/StringBuilder
    //   375: dup
    //   376: ldc_w 411
    //   379: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   382: aload 6
    //   384: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: ldc_w 413
    //   390: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: invokevirtual 415	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   396: invokevirtual 419	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   399: pop
    //   400: ldc -108
    //   402: getstatic 32	com/google/android/gms/iid/d:a	Ljava/lang/String;
    //   405: invokevirtual 425	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   408: istore 5
    //   410: aload 8
    //   412: ldc_w 427
    //   415: invokevirtual 160	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   418: astore_1
    //   419: aload_1
    //   420: ifnull +12 -> 432
    //   423: ldc_w 377
    //   426: aload_1
    //   427: invokevirtual 425	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   430: istore 5
    //   432: ldc -18
    //   434: iconst_3
    //   435: invokestatic 431	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   438: ifeq +22 -> 460
    //   441: new 124	java/lang/StringBuilder
    //   444: dup
    //   445: ldc_w 433
    //   448: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   451: aload 8
    //   453: invokevirtual 176	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   456: invokevirtual 179	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   459: pop
    //   460: aload_0
    //   461: getfield 435	com/google/android/gms/iid/d:h	Landroid/os/Messenger;
    //   464: ifnull +86 -> 550
    //   467: aload 8
    //   469: ldc_w 437
    //   472: aload_0
    //   473: getfield 325	com/google/android/gms/iid/d:g	Landroid/os/Messenger;
    //   476: invokevirtual 440	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   479: pop
    //   480: invokestatic 289	android/os/Message:obtain	()Landroid/os/Message;
    //   483: astore_1
    //   484: aload_1
    //   485: aload 8
    //   487: putfield 293	android/os/Message:obj	Ljava/lang/Object;
    //   490: aload_0
    //   491: getfield 435	com/google/android/gms/iid/d:h	Landroid/os/Messenger;
    //   494: aload_1
    //   495: invokevirtual 297	android/os/Messenger:send	(Landroid/os/Message;)V
    //   498: aload 7
    //   500: ldc2_w 441
    //   503: invokevirtual 446	android/os/ConditionVariable:block	(J)Z
    //   506: pop
    //   507: aload_0
    //   508: invokevirtual 254	java/lang/Object:getClass	()Ljava/lang/Class;
    //   511: astore_1
    //   512: aload_1
    //   513: monitorenter
    //   514: aload_0
    //   515: getfield 48	com/google/android/gms/iid/d:f	Ljava/util/Map;
    //   518: aload 6
    //   520: invokeinterface 449 2 0
    //   525: astore_2
    //   526: aload_2
    //   527: instanceof 74
    //   530: ifeq +169 -> 699
    //   533: aload_2
    //   534: checkcast 74	android/content/Intent
    //   537: astore_2
    //   538: aload_1
    //   539: monitorexit
    //   540: aload_2
    //   541: areturn
    //   542: astore_1
    //   543: ldc -18
    //   545: iconst_3
    //   546: invokestatic 431	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   549: pop
    //   550: iload 5
    //   552: ifeq +48 -> 600
    //   555: new 74	android/content/Intent
    //   558: dup
    //   559: ldc_w 451
    //   562: invokespecial 79	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   565: astore_1
    //   566: aload_1
    //   567: aload_0
    //   568: getfield 50	com/google/android/gms/iid/d:e	Landroid/content/Context;
    //   571: invokevirtual 398	android/content/Context:getPackageName	()Ljava/lang/String;
    //   574: invokevirtual 349	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   577: pop
    //   578: aload_1
    //   579: ldc_w 453
    //   582: aload 8
    //   584: invokevirtual 440	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   587: pop
    //   588: aload_0
    //   589: getfield 50	com/google/android/gms/iid/d:e	Landroid/content/Context;
    //   592: aload_1
    //   593: invokevirtual 457	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   596: pop
    //   597: goto -99 -> 498
    //   600: aload 8
    //   602: ldc_w 437
    //   605: aload_0
    //   606: getfield 325	com/google/android/gms/iid/d:g	Landroid/os/Messenger;
    //   609: invokevirtual 440	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   612: pop
    //   613: aload 8
    //   615: ldc_w 459
    //   618: ldc_w 377
    //   621: invokevirtual 419	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   624: pop
    //   625: aload_0
    //   626: getfield 461	com/google/android/gms/iid/d:i	Lcom/google/android/gms/iid/MessengerCompat;
    //   629: ifnull +44 -> 673
    //   632: invokestatic 289	android/os/Message:obtain	()Landroid/os/Message;
    //   635: astore_1
    //   636: aload_1
    //   637: aload 8
    //   639: putfield 293	android/os/Message:obj	Ljava/lang/Object;
    //   642: aload_0
    //   643: getfield 461	com/google/android/gms/iid/d:i	Lcom/google/android/gms/iid/MessengerCompat;
    //   646: astore_2
    //   647: aload_2
    //   648: getfield 465	com/google/android/gms/iid/MessengerCompat:a	Landroid/os/Messenger;
    //   651: ifnull +35 -> 686
    //   654: aload_2
    //   655: getfield 465	com/google/android/gms/iid/MessengerCompat:a	Landroid/os/Messenger;
    //   658: aload_1
    //   659: invokevirtual 297	android/os/Messenger:send	(Landroid/os/Message;)V
    //   662: goto -164 -> 498
    //   665: astore_1
    //   666: ldc -18
    //   668: iconst_3
    //   669: invokestatic 431	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   672: pop
    //   673: aload_0
    //   674: getfield 50	com/google/android/gms/iid/d:e	Landroid/content/Context;
    //   677: aload 8
    //   679: invokevirtual 457	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   682: pop
    //   683: goto -185 -> 498
    //   686: aload_2
    //   687: getfield 468	com/google/android/gms/iid/MessengerCompat:b	Lcom/google/android/gms/iid/c;
    //   690: aload_1
    //   691: invokeinterface 472 2 0
    //   696: goto -198 -> 498
    //   699: aload_2
    //   700: instanceof 199
    //   703: ifeq +20 -> 723
    //   706: new 151	java/io/IOException
    //   709: dup
    //   710: aload_2
    //   711: checkcast 199	java/lang/String
    //   714: invokespecial 154	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   717: athrow
    //   718: astore_2
    //   719: aload_1
    //   720: monitorexit
    //   721: aload_2
    //   722: athrow
    //   723: new 124	java/lang/StringBuilder
    //   726: dup
    //   727: ldc_w 474
    //   730: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   733: aload_2
    //   734: invokevirtual 179	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   737: pop
    //   738: new 151	java/io/IOException
    //   741: dup
    //   742: ldc_w 476
    //   745: invokespecial 154	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   748: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	749	0	this	d
    //   0	749	2	paramKeyPair	KeyPair
    //   43	34	3	l1	long
    //   408	143	5	bool	boolean
    //   12	507	6	str1	String
    //   7	492	7	localConditionVariable	ConditionVariable
    //   18	660	8	localObject	Object
    //   273	33	9	str2	String
    // Exception table:
    //   from	to	target	type
    //   23	40	106	finally
    //   107	110	106	finally
    //   490	498	542	android/os/RemoteException
    //   642	662	665	android/os/RemoteException
    //   686	696	665	android/os/RemoteException
    //   514	540	718	finally
    //   699	718	718	finally
    //   719	721	718	finally
    //   723	749	718	finally
  }
  
  private void c(Intent paramIntent)
  {
    try
    {
      if (j == null)
      {
        Intent localIntent = new Intent();
        localIntent.setPackage("com.google.example.invalidpackage");
        j = PendingIntent.getBroadcast(e, 0, localIntent, 0);
      }
      paramIntent.putExtra("app", j);
      return;
    }
    finally {}
  }
  
  final Intent a(Bundle paramBundle, KeyPair paramKeyPair)
  {
    Intent localIntent2 = b(paramBundle, paramKeyPair);
    Intent localIntent1 = localIntent2;
    if (localIntent2 != null)
    {
      localIntent1 = localIntent2;
      if (localIntent2.hasExtra("google.messenger")) {
        localIntent1 = b(paramBundle, paramKeyPair);
      }
    }
    return localIntent1;
  }
  
  public final void a(Message paramMessage)
  {
    if (paramMessage == null) {}
    while (!(obj instanceof Intent)) {
      return;
    }
    Object localObject = (Intent)obj;
    ((Intent)localObject).setExtrasClassLoader(MessengerCompat.class.getClassLoader());
    if (((Intent)localObject).hasExtra("google.messenger"))
    {
      localObject = ((Intent)localObject).getParcelableExtra("google.messenger");
      if ((localObject instanceof MessengerCompat)) {
        i = ((MessengerCompat)localObject);
      }
      if ((localObject instanceof Messenger)) {
        h = ((Messenger)localObject);
      }
    }
    b((Intent)obj);
  }
  
  final void b(Intent paramIntent)
  {
    if (paramIntent == null) {
      Log.isLoggable("InstanceID/Rpc", 3);
    }
    do
    {
      return;
      localObject1 = paramIntent.getAction();
      if (("com.google.android.c2dm.intent.REGISTRATION".equals(localObject1)) || ("com.google.android.gms.iid.InstanceID".equals(localObject1))) {
        break;
      }
    } while (!Log.isLoggable("InstanceID/Rpc", 3));
    new StringBuilder("Unexpected response ").append(paramIntent.getAction());
    return;
    Object localObject1 = paramIntent.getStringExtra("registration_id");
    if (localObject1 == null) {
      localObject1 = paramIntent.getStringExtra("unregistered");
    }
    for (;;)
    {
      Object localObject3;
      if (localObject1 == null)
      {
        String str = paramIntent.getStringExtra("error");
        if (str == null)
        {
          new StringBuilder("Unexpected response, no error or registration id ").append(paramIntent.getExtras());
          return;
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {}
        localObject2 = null;
        localObject3 = null;
        localObject1 = str;
        if (str.startsWith("|"))
        {
          localObject1 = str.split("\\|");
          if (("ID".equals(localObject1[1])) || (localObject1.length > 2))
          {
            localObject3 = localObject1[2];
            str = localObject1[3];
            localObject2 = localObject3;
            localObject1 = str;
            if (str.startsWith(":"))
            {
              localObject1 = str.substring(1);
              localObject2 = localObject3;
            }
            paramIntent.putExtra("error", (String)localObject1);
          }
        }
        else
        {
          if (localObject2 != null) {
            break label324;
          }
          a(localObject1);
        }
        for (;;)
        {
          long l1 = paramIntent.getLongExtra("Retry-After", 0L);
          if (l1 <= 0L) {
            break label335;
          }
          l = SystemClock.elapsedRealtime();
          n = ((int)l1 * 1000);
          o = (SystemClock.elapsedRealtime() + n);
          new StringBuilder("Explicit request from server to backoff: ").append(n);
          return;
          localObject1 = "UNKNOWN";
          localObject2 = localObject3;
          break;
          label324:
          a((String)localObject2, localObject1);
        }
        label335:
        if (((!"SERVICE_NOT_AVAILABLE".equals(localObject1)) && (!"AUTHENTICATION_FAILED".equals(localObject1))) || (!"com.google.android.gsf".equals(a))) {
          break;
        }
        m += 1;
        if (m < 3) {
          break;
        }
        if (m == 3) {
          n = (new Random().nextInt(1000) + 1000);
        }
        n *= 2;
        o = (SystemClock.elapsedRealtime() + n);
        new StringBuilder("Backoff due to ").append((String)localObject1).append(" for ").append(n);
        return;
      }
      k = SystemClock.elapsedRealtime();
      o = 0L;
      m = 0;
      n = 0;
      if (Log.isLoggable("InstanceID/Rpc", 3)) {
        new StringBuilder("AppIDResponse: ").append((String)localObject1).append(" ").append(paramIntent.getExtras());
      }
      Object localObject2 = null;
      if (((String)localObject1).startsWith("|"))
      {
        localObject1 = ((String)localObject1).split("\\|");
        if (!"ID".equals(localObject1[1])) {}
        localObject2 = localObject1[2];
        if (localObject1.length > 4)
        {
          if (!"SYNC".equals(localObject1[3])) {
            break label650;
          }
          InstanceIDListenerService.a(e);
        }
      }
      label650:
      while (!"RST".equals(localObject1[3]))
      {
        localObject3 = localObject1[(localObject1.length - 1)];
        localObject1 = localObject3;
        if (((String)localObject3).startsWith(":")) {
          localObject1 = ((String)localObject3).substring(1);
        }
        paramIntent.putExtra("registration_id", (String)localObject1);
        if (localObject2 != null) {
          break;
        }
        a(paramIntent);
        return;
      }
      localObject1 = e;
      a.b(e);
      InstanceIDListenerService.a((Context)localObject1, a.c());
      paramIntent.removeExtra("registration_id");
      a((String)localObject2, paramIntent);
      return;
      a((String)localObject2, paramIntent);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.iid.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */