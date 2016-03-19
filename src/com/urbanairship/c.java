package com.urbanairship;

import android.app.Application;
import android.content.Context;

public abstract class c
  implements p.a
{
  /* Error */
  public static void a(Application paramApplication)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 31	com/urbanairship/p:i	()Z
    //   6: ifne +11 -> 17
    //   9: invokestatic 34	com/urbanairship/p:j	()Z
    //   12: istore_1
    //   13: iload_1
    //   14: ifeq +7 -> 21
    //   17: ldc 2
    //   19: monitorexit
    //   20: return
    //   21: aload_0
    //   22: invokevirtual 40	android/app/Application:getPackageManager	()Landroid/content/pm/PackageManager;
    //   25: aload_0
    //   26: invokevirtual 44	android/app/Application:getPackageName	()Ljava/lang/String;
    //   29: sipush 128
    //   32: invokevirtual 50	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   35: getfield 56	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   38: ldc 58
    //   40: invokevirtual 64	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   43: astore_2
    //   44: aload_2
    //   45: ifnonnull +82 -> 127
    //   48: ldc 66
    //   50: ldc 68
    //   52: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   55: pop
    //   56: goto -39 -> 17
    //   59: astore_0
    //   60: ldc 2
    //   62: monitorexit
    //   63: aload_0
    //   64: athrow
    //   65: astore_2
    //   66: ldc 66
    //   68: new 76	java/lang/StringBuilder
    //   71: dup
    //   72: ldc 78
    //   74: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   77: aload_2
    //   78: invokevirtual 84	android/content/pm/PackageManager$NameNotFoundException:getMessage	()Ljava/lang/String;
    //   81: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   90: pop
    //   91: aconst_null
    //   92: astore_2
    //   93: goto -49 -> 44
    //   96: astore_2
    //   97: ldc 66
    //   99: new 76	java/lang/StringBuilder
    //   102: dup
    //   103: ldc 93
    //   105: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   108: aload_2
    //   109: invokevirtual 94	java/lang/NullPointerException:getMessage	()Ljava/lang/String;
    //   112: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   121: pop
    //   122: aconst_null
    //   123: astore_2
    //   124: goto -80 -> 44
    //   127: aload_2
    //   128: invokestatic 100	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   131: astore_2
    //   132: aload_2
    //   133: invokevirtual 104	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   136: checkcast 2	com/urbanairship/c
    //   139: astore_2
    //   140: aload_2
    //   141: ifnonnull +130 -> 271
    //   144: ldc 66
    //   146: ldc 106
    //   148: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   151: pop
    //   152: goto -135 -> 17
    //   155: astore_0
    //   156: ldc 66
    //   158: new 76	java/lang/StringBuilder
    //   161: dup
    //   162: ldc 108
    //   164: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   167: aload_0
    //   168: invokevirtual 109	java/lang/ClassNotFoundException:getMessage	()Ljava/lang/String;
    //   171: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   177: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   180: pop
    //   181: goto -164 -> 17
    //   184: astore_0
    //   185: ldc 66
    //   187: new 76	java/lang/StringBuilder
    //   190: dup
    //   191: ldc 111
    //   193: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   196: aload_0
    //   197: invokevirtual 112	java/lang/IllegalAccessException:getMessage	()Ljava/lang/String;
    //   200: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   209: pop
    //   210: goto -193 -> 17
    //   213: astore_0
    //   214: ldc 66
    //   216: new 76	java/lang/StringBuilder
    //   219: dup
    //   220: ldc 114
    //   222: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   225: aload_0
    //   226: invokevirtual 115	java/lang/InstantiationException:getMessage	()Ljava/lang/String;
    //   229: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   235: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   238: pop
    //   239: goto -222 -> 17
    //   242: astore_0
    //   243: ldc 66
    //   245: new 76	java/lang/StringBuilder
    //   248: dup
    //   249: ldc 117
    //   251: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   254: aload_0
    //   255: invokevirtual 118	java/lang/ClassCastException:getMessage	()Ljava/lang/String;
    //   258: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   267: pop
    //   268: goto -251 -> 17
    //   271: invokestatic 31	com/urbanairship/p:i	()Z
    //   274: ifne +9 -> 283
    //   277: invokestatic 34	com/urbanairship/p:j	()Z
    //   280: ifeq +11 -> 291
    //   283: ldc 66
    //   285: ldc 120
    //   287: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   290: pop
    //   291: aload_0
    //   292: aconst_null
    //   293: aload_2
    //   294: invokestatic 123	com/urbanairship/p:a	(Landroid/app/Application;Lcom/urbanairship/a;Lcom/urbanairship/p$a;)V
    //   297: goto -280 -> 17
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	300	0	paramApplication	Application
    //   12	2	1	bool	boolean
    //   43	2	2	str	String
    //   65	13	2	localNameNotFoundException	android.content.pm.PackageManager.NameNotFoundException
    //   92	1	2	localObject1	Object
    //   96	13	2	localNullPointerException	NullPointerException
    //   123	171	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   3	13	59	finally
    //   21	44	59	finally
    //   48	56	59	finally
    //   66	91	59	finally
    //   97	122	59	finally
    //   127	132	59	finally
    //   132	140	59	finally
    //   144	152	59	finally
    //   156	181	59	finally
    //   185	210	59	finally
    //   214	239	59	finally
    //   243	268	59	finally
    //   271	283	59	finally
    //   283	291	59	finally
    //   291	297	59	finally
    //   21	44	65	android/content/pm/PackageManager$NameNotFoundException
    //   21	44	96	java/lang/NullPointerException
    //   127	132	155	java/lang/ClassNotFoundException
    //   132	140	184	java/lang/IllegalAccessException
    //   132	140	213	java/lang/InstantiationException
    //   132	140	242	java/lang/ClassCastException
  }
  
  public static void a(Context paramContext)
  {
    a((Application)paramContext.getApplicationContext());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */