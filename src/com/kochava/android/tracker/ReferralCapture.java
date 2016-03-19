package com.kochava.android.tracker;

import android.content.BroadcastReceiver;

public class ReferralCapture
  extends BroadcastReceiver
{
  public static String a = "";
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  public void onReceive(android.content.Context paramContext, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: invokestatic 29	com/kochava/android/a/b:a	()V
    //   3: new 31	java/lang/StringBuilder
    //   6: dup
    //   7: ldc 33
    //   9: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: aload_2
    //   13: invokevirtual 42	android/content/Intent:getPackage	()Ljava/lang/String;
    //   16: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: ldc 48
    //   21: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: aload_2
    //   25: invokevirtual 51	android/content/Intent:getAction	()Ljava/lang/String;
    //   28: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: pop
    //   32: invokestatic 29	com/kochava/android/a/b:a	()V
    //   35: aload_2
    //   36: invokevirtual 55	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   39: astore 5
    //   41: aload 5
    //   43: ifnull +10 -> 53
    //   46: aload 5
    //   48: aconst_null
    //   49: invokevirtual 61	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   52: pop
    //   53: new 63	java/util/HashMap
    //   56: dup
    //   57: invokespecial 64	java/util/HashMap:<init>	()V
    //   60: astore 5
    //   62: aload_2
    //   63: invokevirtual 51	android/content/Intent:getAction	()Ljava/lang/String;
    //   66: ldc 66
    //   68: invokevirtual 72	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   71: ifne +7 -> 78
    //   74: invokestatic 29	com/kochava/android/a/b:a	()V
    //   77: return
    //   78: aload_2
    //   79: ldc 74
    //   81: invokevirtual 78	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   84: astore_2
    //   85: aload_2
    //   86: ifnull +10 -> 96
    //   89: aload_2
    //   90: invokevirtual 82	java/lang/String:length	()I
    //   93: ifne +9 -> 102
    //   96: ldc 84
    //   98: invokestatic 86	com/kochava/android/a/b:a	(Ljava/lang/String;)V
    //   101: return
    //   102: aload_2
    //   103: ldc 88
    //   105: invokestatic 94	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   108: astore_2
    //   109: new 31	java/lang/StringBuilder
    //   112: dup
    //   113: ldc 96
    //   115: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   118: aload_2
    //   119: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: pop
    //   123: invokestatic 29	com/kochava/android/a/b:a	()V
    //   126: aload_2
    //   127: ldc 98
    //   129: invokevirtual 102	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   132: astore_2
    //   133: aload_2
    //   134: arraylength
    //   135: istore 4
    //   137: iconst_0
    //   138: istore_3
    //   139: iload_3
    //   140: iload 4
    //   142: if_icmpge +105 -> 247
    //   145: aload_2
    //   146: iload_3
    //   147: aaload
    //   148: ldc 104
    //   150: invokevirtual 102	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   153: astore 6
    //   155: aload 6
    //   157: arraylength
    //   158: iconst_1
    //   159: if_icmpne +48 -> 207
    //   162: aload 5
    //   164: aload 6
    //   166: iconst_0
    //   167: aaload
    //   168: ldc 10
    //   170: invokeinterface 110 3 0
    //   175: pop
    //   176: iload_3
    //   177: iconst_1
    //   178: iadd
    //   179: istore_3
    //   180: goto -41 -> 139
    //   183: astore_1
    //   184: new 31	java/lang/StringBuilder
    //   187: dup
    //   188: ldc 112
    //   190: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   193: aload_1
    //   194: invokevirtual 115	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   197: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: invokestatic 86	com/kochava/android/a/b:a	(Ljava/lang/String;)V
    //   206: return
    //   207: aload 5
    //   209: aload 6
    //   211: iconst_0
    //   212: aaload
    //   213: aload 6
    //   215: iconst_1
    //   216: aaload
    //   217: invokeinterface 110 3 0
    //   222: pop
    //   223: goto -47 -> 176
    //   226: astore_2
    //   227: new 31	java/lang/StringBuilder
    //   230: dup
    //   231: ldc 112
    //   233: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   236: aload_2
    //   237: invokevirtual 119	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   240: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: pop
    //   244: invokestatic 29	com/kochava/android/a/b:a	()V
    //   247: aload 5
    //   249: invokevirtual 122	java/lang/Object:toString	()Ljava/lang/String;
    //   252: astore_2
    //   253: aload_2
    //   254: iconst_1
    //   255: aload_2
    //   256: invokevirtual 82	java/lang/String:length	()I
    //   259: iconst_1
    //   260: isub
    //   261: invokevirtual 126	java/lang/String:substring	(II)Ljava/lang/String;
    //   264: ldc -128
    //   266: ldc 98
    //   268: invokevirtual 132	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   271: ldc 104
    //   273: ldc -122
    //   275: invokevirtual 132	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   278: astore_2
    //   279: aload_1
    //   280: ldc -120
    //   282: iconst_0
    //   283: invokevirtual 142	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   286: invokeinterface 148 1 0
    //   291: ldc -106
    //   293: aload_2
    //   294: invokeinterface 156 3 0
    //   299: invokeinterface 160 1 0
    //   304: pop
    //   305: new 31	java/lang/StringBuilder
    //   308: dup
    //   309: ldc -94
    //   311: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   314: aload_2
    //   315: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: pop
    //   319: invokestatic 29	com/kochava/android/a/b:a	()V
    //   322: return
    //   323: astore_1
    //   324: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	325	0	this	ReferralCapture
    //   0	325	1	paramContext	android.content.Context
    //   0	325	2	paramIntent	android.content.Intent
    //   138	42	3	i	int
    //   135	8	4	j	int
    //   39	209	5	localObject	Object
    //   153	61	6	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   102	109	183	java/io/UnsupportedEncodingException
    //   126	137	226	java/lang/Exception
    //   145	176	226	java/lang/Exception
    //   207	223	226	java/lang/Exception
    //   35	41	323	java/lang/Exception
    //   46	53	323	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.kochava.android.tracker.ReferralCapture
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */