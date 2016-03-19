package com.adobe.mobile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

public class MessageNotificationHandler
  extends BroadcastReceiver
{
  private static String a()
  {
    try
    {
      Object localObject = am.s().getPackageManager();
      if (localObject != null)
      {
        ApplicationInfo localApplicationInfo = ((PackageManager)localObject).getApplicationInfo(am.s().getPackageName(), 0);
        if (localApplicationInfo != null) {
          if (((PackageManager)localObject).getApplicationLabel(localApplicationInfo) != null) {
            localObject = (String)((PackageManager)localObject).getApplicationLabel(localApplicationInfo);
          } else {
            localObject = "";
          }
        }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      am.c("Messages - unable to retrieve app name for local notification (%s)", new Object[] { localNameNotFoundException.getMessage() });
      return "";
    }
    catch (am.b localb)
    {
      am.c("Messages - unable to get app name (%s)", new Object[] { localb.getMessage() });
      return "";
    }
    String str = "";
    return str;
  }
  
  private static int b()
  {
    if (ae.c() != -1) {
      return ae.c();
    }
    return 17301651;
  }
  
  private static Bitmap c()
  {
    Bitmap localBitmap = null;
    for (;;)
    {
      try
      {
        int i = ae.d();
        if (i != -1)
        {
          localObject1 = am.s().getResources().getDrawable(i);
          if (localObject1 != null) {
            localBitmap = ((BitmapDrawable)localObject1).getBitmap();
          }
          return localBitmap;
        }
        Object localObject1 = am.s().getApplicationInfo();
        if (localObject1 != null)
        {
          PackageManager localPackageManager = am.s().getPackageManager();
          if (localPackageManager != null)
          {
            localObject1 = localPackageManager.getApplicationIcon((ApplicationInfo)localObject1);
            continue;
          }
        }
        Object localObject2 = null;
      }
      catch (am.b localb)
      {
        am.c("Messages - Unable to pull bundle icon (%s)", new Object[] { localb.getMessage() });
        return null;
      }
    }
  }
  
  /* Error */
  public void onReceive(Context paramContext, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 109	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull +13 -> 19
    //   9: ldc 111
    //   11: iconst_0
    //   12: anewarray 48	java/lang/Object
    //   15: invokestatic 55	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   18: return
    //   19: aload_1
    //   20: ldc 113
    //   22: invokevirtual 119	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   25: astore 7
    //   27: aload_1
    //   28: ldc 121
    //   30: invokevirtual 125	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   33: istore 4
    //   35: aload_1
    //   36: ldc 127
    //   38: invokevirtual 125	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   41: istore_3
    //   42: iload 4
    //   44: getstatic 130	com/adobe/mobile/ae:a	Ljava/lang/Integer;
    //   47: invokevirtual 135	java/lang/Integer:intValue	()I
    //   50: if_icmpne -32 -> 18
    //   53: aload 7
    //   55: ifnonnull +31 -> 86
    //   58: ldc -119
    //   60: iconst_0
    //   61: anewarray 48	java/lang/Object
    //   64: invokestatic 55	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   67: return
    //   68: astore_1
    //   69: ldc -117
    //   71: iconst_1
    //   72: anewarray 48	java/lang/Object
    //   75: dup
    //   76: iconst_0
    //   77: aload_1
    //   78: invokevirtual 140	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   81: aastore
    //   82: invokestatic 55	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   85: return
    //   86: invokestatic 144	com/adobe/mobile/am:u	()Landroid/app/Activity;
    //   89: astore 6
    //   91: invokestatic 21	com/adobe/mobile/am:s	()Landroid/content/Context;
    //   94: astore 8
    //   96: aconst_null
    //   97: astore_1
    //   98: invokestatic 144	com/adobe/mobile/am:u	()Landroid/app/Activity;
    //   101: astore 5
    //   103: aload 5
    //   105: astore_1
    //   106: aload_1
    //   107: ifnull +8 -> 115
    //   110: aload_1
    //   111: invokevirtual 150	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   114: astore_2
    //   115: aload_2
    //   116: ldc -105
    //   118: invokevirtual 155	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   121: pop
    //   122: getstatic 161	android/os/Build$VERSION:SDK_INT	I
    //   125: istore 4
    //   127: aload 8
    //   129: iload_3
    //   130: aload_2
    //   131: ldc -94
    //   133: invokestatic 168	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   136: astore_2
    //   137: aload_2
    //   138: ifnonnull +71 -> 209
    //   141: ldc -86
    //   143: iconst_0
    //   144: anewarray 48	java/lang/Object
    //   147: invokestatic 55	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   150: return
    //   151: astore_1
    //   152: ldc -84
    //   154: iconst_1
    //   155: anewarray 48	java/lang/Object
    //   158: dup
    //   159: iconst_0
    //   160: aload_1
    //   161: invokevirtual 173	java/lang/ClassNotFoundException:getMessage	()Ljava/lang/String;
    //   164: aastore
    //   165: invokestatic 175	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   168: return
    //   169: astore_1
    //   170: aload_1
    //   171: invokevirtual 176	com/adobe/mobile/am$a:getMessage	()Ljava/lang/String;
    //   174: iconst_0
    //   175: anewarray 48	java/lang/Object
    //   178: invokestatic 175	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   181: return
    //   182: astore_1
    //   183: aload_1
    //   184: invokevirtual 58	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   187: iconst_0
    //   188: anewarray 48	java/lang/Object
    //   191: invokestatic 175	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   194: return
    //   195: astore 5
    //   197: ldc -78
    //   199: iconst_0
    //   200: anewarray 48	java/lang/Object
    //   203: invokestatic 175	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   206: goto -100 -> 106
    //   209: iload 4
    //   211: bipush 11
    //   213: if_icmplt +343 -> 556
    //   216: ldc 4
    //   218: invokevirtual 184	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   221: ldc -70
    //   223: invokevirtual 192	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   226: astore_1
    //   227: aload_1
    //   228: iconst_1
    //   229: anewarray 180	java/lang/Class
    //   232: dup
    //   233: iconst_0
    //   234: ldc 23
    //   236: aastore
    //   237: invokevirtual 196	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   240: astore 5
    //   242: aload 5
    //   244: iconst_1
    //   245: invokevirtual 202	java/lang/reflect/Constructor:setAccessible	(Z)V
    //   248: aload 5
    //   250: iconst_1
    //   251: anewarray 48	java/lang/Object
    //   254: dup
    //   255: iconst_0
    //   256: invokestatic 21	com/adobe/mobile/am:s	()Landroid/content/Context;
    //   259: aastore
    //   260: invokevirtual 206	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   263: astore 5
    //   265: aload_1
    //   266: ldc -48
    //   268: iconst_1
    //   269: anewarray 180	java/lang/Class
    //   272: dup
    //   273: iconst_0
    //   274: getstatic 212	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   277: aastore
    //   278: invokevirtual 216	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   281: aload 5
    //   283: iconst_1
    //   284: anewarray 48	java/lang/Object
    //   287: dup
    //   288: iconst_0
    //   289: invokestatic 218	com/adobe/mobile/MessageNotificationHandler:b	()I
    //   292: invokestatic 222	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   295: aastore
    //   296: invokevirtual 228	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   299: pop
    //   300: aload_1
    //   301: ldc -26
    //   303: iconst_1
    //   304: anewarray 180	java/lang/Class
    //   307: dup
    //   308: iconst_0
    //   309: ldc -24
    //   311: aastore
    //   312: invokevirtual 216	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   315: aload 5
    //   317: iconst_1
    //   318: anewarray 48	java/lang/Object
    //   321: dup
    //   322: iconst_0
    //   323: invokestatic 234	com/adobe/mobile/MessageNotificationHandler:c	()Landroid/graphics/Bitmap;
    //   326: aastore
    //   327: invokevirtual 228	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   330: pop
    //   331: aload_1
    //   332: ldc -20
    //   334: iconst_1
    //   335: anewarray 180	java/lang/Class
    //   338: dup
    //   339: iconst_0
    //   340: ldc -18
    //   342: aastore
    //   343: invokevirtual 216	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   346: aload 5
    //   348: iconst_1
    //   349: anewarray 48	java/lang/Object
    //   352: dup
    //   353: iconst_0
    //   354: invokestatic 240	com/adobe/mobile/MessageNotificationHandler:a	()Ljava/lang/String;
    //   357: aastore
    //   358: invokevirtual 228	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   361: pop
    //   362: aload_1
    //   363: ldc -14
    //   365: iconst_1
    //   366: anewarray 180	java/lang/Class
    //   369: dup
    //   370: iconst_0
    //   371: ldc -18
    //   373: aastore
    //   374: invokevirtual 216	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   377: aload 5
    //   379: iconst_1
    //   380: anewarray 48	java/lang/Object
    //   383: dup
    //   384: iconst_0
    //   385: aload 7
    //   387: aastore
    //   388: invokevirtual 228	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   391: pop
    //   392: aload_1
    //   393: ldc -12
    //   395: iconst_1
    //   396: anewarray 180	java/lang/Class
    //   399: dup
    //   400: iconst_0
    //   401: ldc -92
    //   403: aastore
    //   404: invokevirtual 216	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   407: aload 5
    //   409: iconst_1
    //   410: anewarray 48	java/lang/Object
    //   413: dup
    //   414: iconst_0
    //   415: aload_2
    //   416: aastore
    //   417: invokevirtual 228	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   420: pop
    //   421: aload_1
    //   422: ldc -10
    //   424: iconst_1
    //   425: anewarray 180	java/lang/Class
    //   428: dup
    //   429: iconst_0
    //   430: getstatic 249	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   433: aastore
    //   434: invokevirtual 216	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   437: aload 5
    //   439: iconst_1
    //   440: anewarray 48	java/lang/Object
    //   443: dup
    //   444: iconst_0
    //   445: iconst_1
    //   446: invokestatic 252	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   449: aastore
    //   450: invokevirtual 228	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   453: pop
    //   454: iload 4
    //   456: bipush 16
    //   458: if_icmplt +74 -> 532
    //   461: aload_1
    //   462: ldc -2
    //   464: iconst_0
    //   465: anewarray 180	java/lang/Class
    //   468: invokevirtual 216	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   471: aload 5
    //   473: iconst_0
    //   474: anewarray 48	java/lang/Object
    //   477: invokevirtual 228	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   480: astore_1
    //   481: goto +149 -> 630
    //   484: aload 6
    //   486: ldc_w 256
    //   489: invokevirtual 260	android/app/Activity:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   492: checkcast 262	android/app/NotificationManager
    //   495: new 264	java/security/SecureRandom
    //   498: dup
    //   499: invokespecial 265	java/security/SecureRandom:<init>	()V
    //   502: invokevirtual 268	java/security/SecureRandom:nextInt	()I
    //   505: aload_1
    //   506: checkcast 270	android/app/Notification
    //   509: invokevirtual 274	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   512: return
    //   513: astore_1
    //   514: ldc_w 276
    //   517: iconst_1
    //   518: anewarray 48	java/lang/Object
    //   521: dup
    //   522: iconst_0
    //   523: aload_1
    //   524: invokevirtual 277	java/lang/NoSuchMethodException:getMessage	()Ljava/lang/String;
    //   527: aastore
    //   528: invokestatic 175	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   531: return
    //   532: aload_1
    //   533: ldc_w 279
    //   536: iconst_0
    //   537: anewarray 180	java/lang/Class
    //   540: invokevirtual 216	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   543: aload 5
    //   545: iconst_0
    //   546: anewarray 48	java/lang/Object
    //   549: invokevirtual 228	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   552: astore_1
    //   553: goto +77 -> 630
    //   556: new 270	android/app/Notification
    //   559: dup
    //   560: invokespecial 280	android/app/Notification:<init>	()V
    //   563: astore_1
    //   564: aload_1
    //   565: aload 8
    //   567: invokestatic 240	com/adobe/mobile/MessageNotificationHandler:a	()Ljava/lang/String;
    //   570: aload 7
    //   572: aload_2
    //   573: invokevirtual 284	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   576: aload_1
    //   577: invokestatic 218	com/adobe/mobile/MessageNotificationHandler:b	()I
    //   580: putfield 287	android/app/Notification:icon	I
    //   583: aload_1
    //   584: bipush 16
    //   586: putfield 290	android/app/Notification:flags	I
    //   589: goto -105 -> 484
    //   592: astore_1
    //   593: ldc_w 292
    //   596: iconst_1
    //   597: anewarray 48	java/lang/Object
    //   600: dup
    //   601: iconst_0
    //   602: aload_1
    //   603: invokevirtual 58	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   606: aastore
    //   607: invokestatic 175	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   610: return
    //   611: astore_1
    //   612: ldc_w 294
    //   615: iconst_1
    //   616: anewarray 48	java/lang/Object
    //   619: dup
    //   620: iconst_0
    //   621: aload_1
    //   622: invokevirtual 140	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   625: aastore
    //   626: invokestatic 175	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   629: return
    //   630: aload_1
    //   631: ifnull -613 -> 18
    //   634: goto -150 -> 484
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	637	0	this	MessageNotificationHandler
    //   0	637	1	paramContext	Context
    //   0	637	2	paramIntent	android.content.Intent
    //   41	89	3	i	int
    //   33	426	4	j	int
    //   101	3	5	localActivity1	android.app.Activity
    //   195	1	5	locala	am.a
    //   240	304	5	localObject	Object
    //   89	396	6	localActivity2	android.app.Activity
    //   25	546	7	str	String
    //   94	472	8	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   19	42	68	java/lang/Exception
    //   127	137	151	java/lang/ClassNotFoundException
    //   141	150	151	java/lang/ClassNotFoundException
    //   216	454	151	java/lang/ClassNotFoundException
    //   461	481	151	java/lang/ClassNotFoundException
    //   484	512	151	java/lang/ClassNotFoundException
    //   532	553	151	java/lang/ClassNotFoundException
    //   556	589	151	java/lang/ClassNotFoundException
    //   86	91	169	com/adobe/mobile/am$a
    //   91	96	182	com/adobe/mobile/am$b
    //   98	103	195	com/adobe/mobile/am$a
    //   127	137	513	java/lang/NoSuchMethodException
    //   141	150	513	java/lang/NoSuchMethodException
    //   216	454	513	java/lang/NoSuchMethodException
    //   461	481	513	java/lang/NoSuchMethodException
    //   484	512	513	java/lang/NoSuchMethodException
    //   532	553	513	java/lang/NoSuchMethodException
    //   556	589	513	java/lang/NoSuchMethodException
    //   127	137	592	com/adobe/mobile/am$b
    //   141	150	592	com/adobe/mobile/am$b
    //   216	454	592	com/adobe/mobile/am$b
    //   461	481	592	com/adobe/mobile/am$b
    //   484	512	592	com/adobe/mobile/am$b
    //   532	553	592	com/adobe/mobile/am$b
    //   556	589	592	com/adobe/mobile/am$b
    //   127	137	611	java/lang/Exception
    //   141	150	611	java/lang/Exception
    //   216	454	611	java/lang/Exception
    //   461	481	611	java/lang/Exception
    //   484	512	611	java/lang/Exception
    //   532	553	611	java/lang/Exception
    //   556	589	611	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.MessageNotificationHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */