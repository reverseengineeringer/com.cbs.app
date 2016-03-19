package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;

public final class b
{
  public static final String a;
  public static final String b = "androidPackageName";
  private static final ComponentName c = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
  private static final ComponentName d = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    a = "callerUid";
    i = Build.VERSION.SDK_INT;
  }
  
  /* Error */
  private static TokenData a(Context paramContext, Account paramAccount, String paramString, Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 58	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: astore 4
    //   6: ldc 60
    //   8: invokestatic 65	com/google/android/gms/common/internal/z:c	(Ljava/lang/String;)V
    //   11: aload 4
    //   13: invokestatic 70	com/google/android/gms/common/e:b	(Landroid/content/Context;)V
    //   16: new 72	android/os/Bundle
    //   19: dup
    //   20: aload_3
    //   21: invokespecial 75	android/os/Bundle:<init>	(Landroid/os/Bundle;)V
    //   24: astore 5
    //   26: aload_0
    //   27: invokevirtual 79	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   30: getfield 84	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   33: astore_0
    //   34: aload 5
    //   36: ldc 86
    //   38: aload_0
    //   39: invokevirtual 89	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   42: aload 5
    //   44: getstatic 26	com/google/android/gms/auth/b:b	Ljava/lang/String;
    //   47: invokevirtual 93	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   50: invokestatic 99	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   53: ifeq +12 -> 65
    //   56: aload 5
    //   58: getstatic 26	com/google/android/gms/auth/b:b	Ljava/lang/String;
    //   61: aload_0
    //   62: invokevirtual 89	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   65: aload 5
    //   67: ldc 101
    //   69: invokestatic 107	android/os/SystemClock:elapsedRealtime	()J
    //   72: invokevirtual 111	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   75: new 113	com/google/android/gms/common/g
    //   78: dup
    //   79: invokespecial 115	com/google/android/gms/common/g:<init>	()V
    //   82: astore_0
    //   83: aload 4
    //   85: invokestatic 120	com/google/android/gms/common/internal/p:a	(Landroid/content/Context;)Lcom/google/android/gms/common/internal/p;
    //   88: astore_3
    //   89: aload_3
    //   90: getstatic 38	com/google/android/gms/auth/b:c	Landroid/content/ComponentName;
    //   93: aload_0
    //   94: ldc 122
    //   96: invokevirtual 125	com/google/android/gms/common/internal/p:a	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    //   99: ifeq +193 -> 292
    //   102: aload_0
    //   103: invokevirtual 128	com/google/android/gms/common/g:a	()Landroid/os/IBinder;
    //   106: invokestatic 133	com/google/android/gms/internal/s$a:a	(Landroid/os/IBinder;)Lcom/google/android/gms/internal/s;
    //   109: aload_1
    //   110: aload_2
    //   111: aload 5
    //   113: invokeinterface 138 4 0
    //   118: astore_2
    //   119: aload_2
    //   120: ifnonnull +71 -> 191
    //   123: new 140	com/google/android/gms/auth/a
    //   126: dup
    //   127: ldc -114
    //   129: invokespecial 144	com/google/android/gms/auth/a:<init>	(Ljava/lang/String;)V
    //   132: athrow
    //   133: astore_1
    //   134: new 146	java/io/IOException
    //   137: dup
    //   138: ldc -108
    //   140: invokespecial 149	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   143: athrow
    //   144: astore_1
    //   145: aload_3
    //   146: getstatic 38	com/google/android/gms/auth/b:c	Landroid/content/ComponentName;
    //   149: aload_0
    //   150: ldc 122
    //   152: invokevirtual 152	com/google/android/gms/common/internal/p:b	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   155: aload_1
    //   156: athrow
    //   157: astore_0
    //   158: new 154	com/google/android/gms/auth/c
    //   161: dup
    //   162: aload_0
    //   163: invokevirtual 157	com/google/android/gms/common/d:a	()I
    //   166: aload_0
    //   167: invokevirtual 161	com/google/android/gms/common/d:getMessage	()Ljava/lang/String;
    //   170: aload_0
    //   171: invokevirtual 164	com/google/android/gms/common/d:b	()Landroid/content/Intent;
    //   174: invokespecial 167	com/google/android/gms/auth/c:<init>	(ILjava/lang/String;Landroid/content/Intent;)V
    //   177: athrow
    //   178: astore_0
    //   179: new 140	com/google/android/gms/auth/a
    //   182: dup
    //   183: aload_0
    //   184: invokevirtual 168	com/google/android/gms/common/c:getMessage	()Ljava/lang/String;
    //   187: invokespecial 144	com/google/android/gms/auth/a:<init>	(Ljava/lang/String;)V
    //   190: athrow
    //   191: aload_2
    //   192: ldc -86
    //   194: invokestatic 175	com/google/android/gms/auth/TokenData:a	(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/gms/auth/TokenData;
    //   197: astore_1
    //   198: aload_1
    //   199: ifnull +15 -> 214
    //   202: aload_3
    //   203: getstatic 38	com/google/android/gms/auth/b:c	Landroid/content/ComponentName;
    //   206: aload_0
    //   207: ldc 122
    //   209: invokevirtual 152	com/google/android/gms/common/internal/p:b	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   212: aload_1
    //   213: areturn
    //   214: aload_2
    //   215: ldc -79
    //   217: invokevirtual 93	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   220: astore_1
    //   221: aload_2
    //   222: ldc -77
    //   224: invokevirtual 183	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   227: checkcast 185	android/content/Intent
    //   230: astore_2
    //   231: aload_1
    //   232: invokestatic 190	com/google/android/gms/auth/firstparty/shared/d:a	(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/d;
    //   235: astore 4
    //   237: aload 4
    //   239: invokestatic 193	com/google/android/gms/auth/firstparty/shared/d:a	(Lcom/google/android/gms/auth/firstparty/shared/d;)Z
    //   242: ifeq +24 -> 266
    //   245: new 195	com/google/android/gms/auth/d
    //   248: dup
    //   249: aload_1
    //   250: aload_2
    //   251: invokespecial 198	com/google/android/gms/auth/d:<init>	(Ljava/lang/String;Landroid/content/Intent;)V
    //   254: athrow
    //   255: astore_1
    //   256: new 140	com/google/android/gms/auth/a
    //   259: dup
    //   260: ldc -56
    //   262: invokespecial 144	com/google/android/gms/auth/a:<init>	(Ljava/lang/String;)V
    //   265: athrow
    //   266: aload 4
    //   268: invokestatic 202	com/google/android/gms/auth/firstparty/shared/d:b	(Lcom/google/android/gms/auth/firstparty/shared/d;)Z
    //   271: ifeq +12 -> 283
    //   274: new 146	java/io/IOException
    //   277: dup
    //   278: aload_1
    //   279: invokespecial 149	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   282: athrow
    //   283: new 140	com/google/android/gms/auth/a
    //   286: dup
    //   287: aload_1
    //   288: invokespecial 144	com/google/android/gms/auth/a:<init>	(Ljava/lang/String;)V
    //   291: athrow
    //   292: new 146	java/io/IOException
    //   295: dup
    //   296: ldc -52
    //   298: invokespecial 149	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   301: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	302	0	paramContext	Context
    //   0	302	1	paramAccount	Account
    //   0	302	2	paramString	String
    //   0	302	3	paramBundle	Bundle
    //   4	263	4	localObject	Object
    //   24	88	5	localBundle	Bundle
    // Exception table:
    //   from	to	target	type
    //   102	119	133	android/os/RemoteException
    //   123	133	133	android/os/RemoteException
    //   191	198	133	android/os/RemoteException
    //   214	255	133	android/os/RemoteException
    //   266	283	133	android/os/RemoteException
    //   283	292	133	android/os/RemoteException
    //   102	119	144	finally
    //   123	133	144	finally
    //   134	144	144	finally
    //   191	198	144	finally
    //   214	255	144	finally
    //   256	266	144	finally
    //   266	283	144	finally
    //   283	292	144	finally
    //   11	16	157	com/google/android/gms/common/d
    //   11	16	178	com/google/android/gms/common/c
    //   102	119	255	java/lang/InterruptedException
    //   123	133	255	java/lang/InterruptedException
    //   191	198	255	java/lang/InterruptedException
    //   214	255	255	java/lang/InterruptedException
    //   266	283	255	java/lang/InterruptedException
    //   283	292	255	java/lang/InterruptedException
  }
  
  @Deprecated
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, new Account(paramString1, "com.google"), paramString2, new Bundle()).a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */