package com.facebook.appevents;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class AppEventsLogger$PersistedAppSessionInfo
{
  private static final String PERSISTED_SESSION_INFO_FILENAME = "AppEventsLogger.persistedsessioninfo";
  private static final Runnable appSessionInfoFlushRunnable = new Runnable()
  {
    public final void run()
    {
      AppEventsLogger.PersistedAppSessionInfo.saveAppSessionInformation(AppEventsLogger.access$1000());
    }
  };
  private static Map<AppEventsLogger.AccessTokenAppIdPair, FacebookTimeSpentData> appSessionInfoMap;
  private static boolean hasChanges;
  private static boolean isLoaded;
  private static final Object staticLock = new Object();
  
  static
  {
    hasChanges = false;
    isLoaded = false;
  }
  
  private static FacebookTimeSpentData getTimeSpentData(Context paramContext, AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair)
  {
    restoreAppSessionInformation(paramContext);
    FacebookTimeSpentData localFacebookTimeSpentData = (FacebookTimeSpentData)appSessionInfoMap.get(paramAccessTokenAppIdPair);
    paramContext = localFacebookTimeSpentData;
    if (localFacebookTimeSpentData == null)
    {
      paramContext = new FacebookTimeSpentData();
      appSessionInfoMap.put(paramAccessTokenAppIdPair, paramContext);
    }
    return paramContext;
  }
  
  static void onResume(Context paramContext, AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, AppEventsLogger paramAppEventsLogger, long paramLong, String paramString)
  {
    synchronized (staticLock)
    {
      getTimeSpentData(paramContext, paramAccessTokenAppIdPair).onResume(paramAppEventsLogger, paramLong, paramString);
      onTimeSpentDataUpdate();
      return;
    }
  }
  
  static void onSuspend(Context paramContext, AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, AppEventsLogger paramAppEventsLogger, long paramLong)
  {
    synchronized (staticLock)
    {
      getTimeSpentData(paramContext, paramAccessTokenAppIdPair).onSuspend(paramAppEventsLogger, paramLong);
      onTimeSpentDataUpdate();
      return;
    }
  }
  
  private static void onTimeSpentDataUpdate()
  {
    if (!hasChanges)
    {
      hasChanges = true;
      AppEventsLogger.access$1400().schedule(appSessionInfoFlushRunnable, 30L, TimeUnit.SECONDS);
    }
  }
  
  /* Error */
  private static void restoreAppSessionInformation(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic 30	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:staticLock	Ljava/lang/Object;
    //   5: astore 5
    //   7: aload 5
    //   9: monitorenter
    //   10: getstatic 34	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:isLoaded	Z
    //   13: istore_1
    //   14: iload_1
    //   15: ifne +76 -> 91
    //   18: new 98	java/io/ObjectInputStream
    //   21: dup
    //   22: aload_0
    //   23: ldc 13
    //   25: invokevirtual 104	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   28: invokespecial 107	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   31: astore_2
    //   32: aload_2
    //   33: astore_3
    //   34: aload_2
    //   35: invokevirtual 111	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   38: checkcast 113	java/util/HashMap
    //   41: putstatic 46	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:appSessionInfoMap	Ljava/util/Map;
    //   44: aload_2
    //   45: astore_3
    //   46: getstatic 119	com/facebook/LoggingBehavior:APP_EVENTS	Lcom/facebook/LoggingBehavior;
    //   49: ldc 121
    //   51: ldc 123
    //   53: invokestatic 129	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    //   56: aload_2
    //   57: invokestatic 135	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   60: aload_0
    //   61: ldc 13
    //   63: invokevirtual 139	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   66: pop
    //   67: getstatic 46	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:appSessionInfoMap	Ljava/util/Map;
    //   70: ifnonnull +13 -> 83
    //   73: new 113	java/util/HashMap
    //   76: dup
    //   77: invokespecial 140	java/util/HashMap:<init>	()V
    //   80: putstatic 46	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:appSessionInfoMap	Ljava/util/Map;
    //   83: iconst_1
    //   84: putstatic 34	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:isLoaded	Z
    //   87: iconst_0
    //   88: putstatic 32	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:hasChanges	Z
    //   91: aload 5
    //   93: monitorexit
    //   94: return
    //   95: aload_2
    //   96: invokestatic 135	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   99: aload_0
    //   100: ldc 13
    //   102: invokevirtual 139	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   105: pop
    //   106: getstatic 46	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:appSessionInfoMap	Ljava/util/Map;
    //   109: ifnonnull +13 -> 122
    //   112: new 113	java/util/HashMap
    //   115: dup
    //   116: invokespecial 140	java/util/HashMap:<init>	()V
    //   119: putstatic 46	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:appSessionInfoMap	Ljava/util/Map;
    //   122: iconst_1
    //   123: putstatic 34	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:isLoaded	Z
    //   126: iconst_0
    //   127: putstatic 32	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:hasChanges	Z
    //   130: goto -39 -> 91
    //   133: astore_0
    //   134: aload 5
    //   136: monitorexit
    //   137: aload_0
    //   138: athrow
    //   139: astore 4
    //   141: aconst_null
    //   142: astore_2
    //   143: aload_2
    //   144: astore_3
    //   145: invokestatic 144	com/facebook/appevents/AppEventsLogger:access$1300	()Ljava/lang/String;
    //   148: pop
    //   149: aload_2
    //   150: astore_3
    //   151: new 146	java/lang/StringBuilder
    //   154: dup
    //   155: ldc -108
    //   157: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   160: aload 4
    //   162: invokevirtual 154	java/lang/Exception:toString	()Ljava/lang/String;
    //   165: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: pop
    //   169: aload_2
    //   170: invokestatic 135	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   173: aload_0
    //   174: ldc 13
    //   176: invokevirtual 139	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   179: pop
    //   180: getstatic 46	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:appSessionInfoMap	Ljava/util/Map;
    //   183: ifnonnull +13 -> 196
    //   186: new 113	java/util/HashMap
    //   189: dup
    //   190: invokespecial 140	java/util/HashMap:<init>	()V
    //   193: putstatic 46	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:appSessionInfoMap	Ljava/util/Map;
    //   196: iconst_1
    //   197: putstatic 34	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:isLoaded	Z
    //   200: iconst_0
    //   201: putstatic 32	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:hasChanges	Z
    //   204: goto -113 -> 91
    //   207: aload_3
    //   208: invokestatic 135	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   211: aload_0
    //   212: ldc 13
    //   214: invokevirtual 139	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   217: pop
    //   218: getstatic 46	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:appSessionInfoMap	Ljava/util/Map;
    //   221: ifnonnull +13 -> 234
    //   224: new 113	java/util/HashMap
    //   227: dup
    //   228: invokespecial 140	java/util/HashMap:<init>	()V
    //   231: putstatic 46	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:appSessionInfoMap	Ljava/util/Map;
    //   234: iconst_1
    //   235: putstatic 34	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:isLoaded	Z
    //   238: iconst_0
    //   239: putstatic 32	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:hasChanges	Z
    //   242: aload_2
    //   243: athrow
    //   244: astore_2
    //   245: goto -38 -> 207
    //   248: astore 4
    //   250: goto -107 -> 143
    //   253: astore_3
    //   254: goto -159 -> 95
    //   257: astore_2
    //   258: aload_3
    //   259: astore_2
    //   260: goto -165 -> 95
    //   263: astore_2
    //   264: aconst_null
    //   265: astore_3
    //   266: goto -59 -> 207
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	269	0	paramContext	Context
    //   13	2	1	bool	boolean
    //   31	212	2	localObjectInputStream	java.io.ObjectInputStream
    //   244	1	2	localObject1	Object
    //   257	1	2	localFileNotFoundException1	java.io.FileNotFoundException
    //   259	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   263	1	2	localObject2	Object
    //   1	207	3	localObject3	Object
    //   253	6	3	localFileNotFoundException3	java.io.FileNotFoundException
    //   265	1	3	localObject4	Object
    //   139	22	4	localException1	Exception
    //   248	1	4	localException2	Exception
    //   5	130	5	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   10	14	133	finally
    //   56	83	133	finally
    //   83	91	133	finally
    //   91	94	133	finally
    //   95	122	133	finally
    //   122	130	133	finally
    //   134	137	133	finally
    //   169	196	133	finally
    //   196	204	133	finally
    //   207	234	133	finally
    //   234	244	133	finally
    //   18	32	139	java/lang/Exception
    //   34	44	244	finally
    //   46	56	244	finally
    //   145	149	244	finally
    //   151	169	244	finally
    //   34	44	248	java/lang/Exception
    //   46	56	248	java/lang/Exception
    //   34	44	253	java/io/FileNotFoundException
    //   46	56	253	java/io/FileNotFoundException
    //   18	32	257	java/io/FileNotFoundException
    //   18	32	263	finally
  }
  
  /* Error */
  static void saveAppSessionInformation(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 30	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:staticLock	Ljava/lang/Object;
    //   3: astore 4
    //   5: aload 4
    //   7: monitorenter
    //   8: getstatic 32	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:hasChanges	Z
    //   11: istore_1
    //   12: iload_1
    //   13: ifeq +56 -> 69
    //   16: new 161	java/io/ObjectOutputStream
    //   19: dup
    //   20: new 163	java/io/BufferedOutputStream
    //   23: dup
    //   24: aload_0
    //   25: ldc 13
    //   27: iconst_0
    //   28: invokevirtual 167	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   31: invokespecial 170	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   34: invokespecial 171	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   37: astore_2
    //   38: aload_2
    //   39: astore_0
    //   40: aload_2
    //   41: getstatic 46	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:appSessionInfoMap	Ljava/util/Map;
    //   44: invokevirtual 175	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   47: aload_2
    //   48: astore_0
    //   49: iconst_0
    //   50: putstatic 32	com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo:hasChanges	Z
    //   53: aload_2
    //   54: astore_0
    //   55: getstatic 119	com/facebook/LoggingBehavior:APP_EVENTS	Lcom/facebook/LoggingBehavior;
    //   58: ldc 121
    //   60: ldc -79
    //   62: invokestatic 129	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    //   65: aload_2
    //   66: invokestatic 135	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   69: aload 4
    //   71: monitorexit
    //   72: return
    //   73: astore_3
    //   74: aconst_null
    //   75: astore_2
    //   76: aload_2
    //   77: astore_0
    //   78: invokestatic 144	com/facebook/appevents/AppEventsLogger:access$1300	()Ljava/lang/String;
    //   81: pop
    //   82: aload_2
    //   83: astore_0
    //   84: new 146	java/lang/StringBuilder
    //   87: dup
    //   88: ldc -108
    //   90: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   93: aload_3
    //   94: invokevirtual 154	java/lang/Exception:toString	()Ljava/lang/String;
    //   97: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: pop
    //   101: aload_2
    //   102: invokestatic 135	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   105: goto -36 -> 69
    //   108: astore_0
    //   109: aload 4
    //   111: monitorexit
    //   112: aload_0
    //   113: athrow
    //   114: astore_2
    //   115: aconst_null
    //   116: astore_0
    //   117: aload_0
    //   118: invokestatic 135	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   121: aload_2
    //   122: athrow
    //   123: astore_2
    //   124: goto -7 -> 117
    //   127: astore_3
    //   128: goto -52 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	paramContext	Context
    //   11	2	1	bool	boolean
    //   37	65	2	localObjectOutputStream	java.io.ObjectOutputStream
    //   114	8	2	localObject1	Object
    //   123	1	2	localObject2	Object
    //   73	21	3	localException1	Exception
    //   127	1	3	localException2	Exception
    //   3	107	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   16	38	73	java/lang/Exception
    //   8	12	108	finally
    //   65	69	108	finally
    //   69	72	108	finally
    //   101	105	108	finally
    //   109	112	108	finally
    //   117	123	108	finally
    //   16	38	114	finally
    //   40	47	123	finally
    //   49	53	123	finally
    //   55	65	123	finally
    //   78	82	123	finally
    //   84	101	123	finally
    //   40	47	127	java/lang/Exception
    //   49	53	127	java/lang/Exception
    //   55	65	127	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.PersistedAppSessionInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */