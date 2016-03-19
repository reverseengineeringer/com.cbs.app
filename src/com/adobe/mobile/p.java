package com.adobe.mobile;

import org.json.JSONException;
import org.json.JSONObject;

final class p
  extends m
{
  protected String k;
  protected Integer l;
  
  protected final boolean b(JSONObject paramJSONObject)
  {
    if ((paramJSONObject == null) || (paramJSONObject.length() <= 0)) {}
    while (!super.b(paramJSONObject)) {
      return false;
    }
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject("payload");
      if (paramJSONObject.length() <= 0)
      {
        am.c("Messages - Unable to create local notification message \"%s\", payload is empty", new Object[] { a });
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.c("Messages - Unable to create local notification message \"%s\", payload is required", new Object[] { a });
      return false;
    }
    try
    {
      k = paramJSONObject.getString("content");
      if (k.length() <= 0)
      {
        am.c("Messages - Unable to create local notification message \"%s\", content is empty", new Object[] { a });
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.c("Messages - Unable to create local notification message \"%s\", content is required", new Object[] { a });
      return false;
    }
    try
    {
      l = Integer.valueOf(paramJSONObject.getInt("wait"));
      return true;
    }
    catch (JSONException paramJSONObject)
    {
      am.c("Messages - Unable to create local notification message \"%s\", localNotificationDelay is required", new Object[] { a });
    }
    return false;
  }
  
  /* Error */
  protected final void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 84	com/adobe/mobile/m:d	()V
    //   4: invokestatic 88	com/adobe/mobile/am:u	()Landroid/app/Activity;
    //   7: astore_3
    //   8: new 90	java/security/SecureRandom
    //   11: dup
    //   12: invokespecial 91	java/security/SecureRandom:<init>	()V
    //   15: invokevirtual 94	java/security/SecureRandom:nextInt	()I
    //   18: istore_1
    //   19: invokestatic 100	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   22: astore_2
    //   23: aload_2
    //   24: bipush 13
    //   26: aload_0
    //   27: getfield 75	com/adobe/mobile/p:l	Ljava/lang/Integer;
    //   30: invokevirtual 103	java/lang/Integer:intValue	()I
    //   33: invokevirtual 107	java/util/Calendar:add	(II)V
    //   36: new 109	android/content/Intent
    //   39: dup
    //   40: invokespecial 110	android/content/Intent:<init>	()V
    //   43: astore 4
    //   45: aload 4
    //   47: aload_3
    //   48: ldc 112
    //   50: invokevirtual 116	android/content/Intent:setClass	(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    //   53: pop
    //   54: aload 4
    //   56: ldc 118
    //   58: aload_0
    //   59: getfield 54	com/adobe/mobile/p:k	Ljava/lang/String;
    //   62: invokevirtual 122	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   65: pop
    //   66: aload 4
    //   68: ldc 124
    //   70: getstatic 128	com/adobe/mobile/ae:a	Ljava/lang/Integer;
    //   73: invokevirtual 131	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    //   76: pop
    //   77: aload 4
    //   79: ldc -123
    //   81: iload_1
    //   82: invokevirtual 136	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   85: pop
    //   86: invokestatic 140	com/adobe/mobile/am:s	()Landroid/content/Context;
    //   89: iload_1
    //   90: aload 4
    //   92: ldc -115
    //   94: invokestatic 147	android/app/PendingIntent:getBroadcast	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   97: astore_3
    //   98: invokestatic 140	com/adobe/mobile/am:s	()Landroid/content/Context;
    //   101: ldc -107
    //   103: invokevirtual 155	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   106: checkcast 157	android/app/AlarmManager
    //   109: iconst_0
    //   110: aload_2
    //   111: invokevirtual 161	java/util/Calendar:getTimeInMillis	()J
    //   114: aload_3
    //   115: invokevirtual 165	android/app/AlarmManager:set	(IJLandroid/app/PendingIntent;)V
    //   118: aload_0
    //   119: invokevirtual 168	com/adobe/mobile/p:e	()V
    //   122: return
    //   123: astore_2
    //   124: aload_2
    //   125: invokevirtual 172	com/adobe/mobile/am$a:getMessage	()Ljava/lang/String;
    //   128: iconst_0
    //   129: anewarray 35	java/lang/Object
    //   132: invokestatic 174	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   135: return
    //   136: astore_2
    //   137: ldc -80
    //   139: iconst_1
    //   140: anewarray 35	java/lang/Object
    //   143: dup
    //   144: iconst_0
    //   145: aload_2
    //   146: invokevirtual 177	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   149: aastore
    //   150: invokestatic 174	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   153: goto -35 -> 118
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	p
    //   18	72	1	i	int
    //   22	89	2	localCalendar	java.util.Calendar
    //   123	2	2	locala	am.a
    //   136	10	2	localb	am.b
    //   7	108	3	localObject	Object
    //   43	48	4	localIntent	android.content.Intent
    // Exception table:
    //   from	to	target	type
    //   4	8	123	com/adobe/mobile/am$a
    //   86	118	136	com/adobe/mobile/am$b
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */