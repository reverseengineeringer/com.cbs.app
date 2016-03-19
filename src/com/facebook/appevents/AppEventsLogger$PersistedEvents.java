package com.facebook.appevents;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class AppEventsLogger$PersistedEvents
{
  static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
  private static Object staticLock = new Object();
  private Context context;
  private HashMap<AppEventsLogger.AccessTokenAppIdPair, List<AppEventsLogger.AppEvent>> persistedEvents = new HashMap();
  
  private AppEventsLogger$PersistedEvents(Context paramContext)
  {
    context = paramContext;
  }
  
  public static void persistEvents(Context paramContext, AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, AppEventsLogger.SessionEventsState paramSessionEventsState)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(paramAccessTokenAppIdPair, paramSessionEventsState);
    persistEvents(paramContext, localHashMap);
  }
  
  public static void persistEvents(Context paramContext, Map<AppEventsLogger.AccessTokenAppIdPair, AppEventsLogger.SessionEventsState> paramMap)
  {
    synchronized (staticLock)
    {
      paramContext = readAndClearStore(paramContext);
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        List localList = ((AppEventsLogger.SessionEventsState)localEntry.getValue()).getEventsToPersist();
        if (localList.size() != 0) {
          paramContext.addEvents((AppEventsLogger.AccessTokenAppIdPair)localEntry.getKey(), localList);
        }
      }
    }
    paramContext.write();
  }
  
  public static PersistedEvents readAndClearStore(Context paramContext)
  {
    synchronized (staticLock)
    {
      paramContext = new PersistedEvents(paramContext);
      paramContext.readAndClearStore();
      return paramContext;
    }
  }
  
  /* Error */
  private void readAndClearStore()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 110	java/io/ObjectInputStream
    //   5: dup
    //   6: new 112	java/io/BufferedInputStream
    //   9: dup
    //   10: aload_0
    //   11: getfield 34	com/facebook/appevents/AppEventsLogger$PersistedEvents:context	Landroid/content/Context;
    //   14: ldc 11
    //   16: invokevirtual 118	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   19: invokespecial 121	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   22: invokespecial 122	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   25: astore_1
    //   26: aload_1
    //   27: astore_2
    //   28: aload_1
    //   29: invokevirtual 125	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   32: checkcast 29	java/util/HashMap
    //   35: astore_3
    //   36: aload_1
    //   37: astore_2
    //   38: aload_0
    //   39: getfield 34	com/facebook/appevents/AppEventsLogger$PersistedEvents:context	Landroid/content/Context;
    //   42: ldc 11
    //   44: invokevirtual 129	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   47: invokevirtual 134	java/io/File:delete	()Z
    //   50: pop
    //   51: aload_1
    //   52: astore_2
    //   53: aload_0
    //   54: aload_3
    //   55: putfield 32	com/facebook/appevents/AppEventsLogger$PersistedEvents:persistedEvents	Ljava/util/HashMap;
    //   58: aload_1
    //   59: invokestatic 140	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   62: return
    //   63: astore_1
    //   64: aload_2
    //   65: astore_1
    //   66: aload_1
    //   67: invokestatic 140	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   70: return
    //   71: astore_3
    //   72: aconst_null
    //   73: astore_1
    //   74: aload_1
    //   75: astore_2
    //   76: invokestatic 144	com/facebook/appevents/AppEventsLogger:access$1300	()Ljava/lang/String;
    //   79: pop
    //   80: aload_1
    //   81: astore_2
    //   82: new 146	java/lang/StringBuilder
    //   85: dup
    //   86: ldc -108
    //   88: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   91: aload_3
    //   92: invokevirtual 154	java/lang/Exception:toString	()Ljava/lang/String;
    //   95: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: pop
    //   99: aload_1
    //   100: invokestatic 140	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   103: return
    //   104: astore_1
    //   105: aconst_null
    //   106: astore_2
    //   107: aload_2
    //   108: invokestatic 140	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   111: aload_1
    //   112: athrow
    //   113: astore_1
    //   114: goto -7 -> 107
    //   117: astore_3
    //   118: goto -44 -> 74
    //   121: astore_2
    //   122: goto -56 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	this	PersistedEvents
    //   25	34	1	localObjectInputStream	java.io.ObjectInputStream
    //   63	1	1	localFileNotFoundException1	java.io.FileNotFoundException
    //   65	35	1	localObject1	Object
    //   104	8	1	localObject2	Object
    //   113	1	1	localObject3	Object
    //   1	107	2	localObject4	Object
    //   121	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   35	20	3	localHashMap	HashMap
    //   71	21	3	localException1	Exception
    //   117	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   2	26	63	java/io/FileNotFoundException
    //   2	26	71	java/lang/Exception
    //   2	26	104	finally
    //   28	36	113	finally
    //   38	51	113	finally
    //   53	58	113	finally
    //   76	80	113	finally
    //   82	99	113	finally
    //   28	36	117	java/lang/Exception
    //   38	51	117	java/lang/Exception
    //   53	58	117	java/lang/Exception
    //   28	36	121	java/io/FileNotFoundException
    //   38	51	121	java/io/FileNotFoundException
    //   53	58	121	java/io/FileNotFoundException
  }
  
  /* Error */
  private void write()
  {
    // Byte code:
    //   0: new 160	java/io/ObjectOutputStream
    //   3: dup
    //   4: new 162	java/io/BufferedOutputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 34	com/facebook/appevents/AppEventsLogger$PersistedEvents:context	Landroid/content/Context;
    //   12: ldc 11
    //   14: iconst_0
    //   15: invokevirtual 166	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   18: invokespecial 169	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   21: invokespecial 170	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   24: astore_2
    //   25: aload_2
    //   26: astore_1
    //   27: aload_2
    //   28: aload_0
    //   29: getfield 32	com/facebook/appevents/AppEventsLogger$PersistedEvents:persistedEvents	Ljava/util/HashMap;
    //   32: invokevirtual 174	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   35: aload_2
    //   36: invokestatic 140	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   39: return
    //   40: astore_3
    //   41: aconst_null
    //   42: astore_2
    //   43: aload_2
    //   44: astore_1
    //   45: invokestatic 144	com/facebook/appevents/AppEventsLogger:access$1300	()Ljava/lang/String;
    //   48: pop
    //   49: aload_2
    //   50: astore_1
    //   51: new 146	java/lang/StringBuilder
    //   54: dup
    //   55: ldc -108
    //   57: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: aload_3
    //   61: invokevirtual 154	java/lang/Exception:toString	()Ljava/lang/String;
    //   64: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: pop
    //   68: aload_2
    //   69: invokestatic 140	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   72: return
    //   73: astore_2
    //   74: aconst_null
    //   75: astore_1
    //   76: aload_1
    //   77: invokestatic 140	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   80: aload_2
    //   81: athrow
    //   82: astore_2
    //   83: goto -7 -> 76
    //   86: astore_3
    //   87: goto -44 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	PersistedEvents
    //   26	51	1	localObjectOutputStream1	java.io.ObjectOutputStream
    //   24	45	2	localObjectOutputStream2	java.io.ObjectOutputStream
    //   73	8	2	localObject1	Object
    //   82	1	2	localObject2	Object
    //   40	21	3	localException1	Exception
    //   86	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	25	40	java/lang/Exception
    //   0	25	73	finally
    //   27	35	82	finally
    //   45	49	82	finally
    //   51	68	82	finally
    //   27	35	86	java/lang/Exception
  }
  
  public void addEvents(AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, List<AppEventsLogger.AppEvent> paramList)
  {
    if (!persistedEvents.containsKey(paramAccessTokenAppIdPair)) {
      persistedEvents.put(paramAccessTokenAppIdPair, new ArrayList());
    }
    ((List)persistedEvents.get(paramAccessTokenAppIdPair)).addAll(paramList);
  }
  
  public List<AppEventsLogger.AppEvent> getEvents(AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair)
  {
    return (List)persistedEvents.get(paramAccessTokenAppIdPair);
  }
  
  public Set<AppEventsLogger.AccessTokenAppIdPair> keySet()
  {
    return persistedEvents.keySet();
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.PersistedEvents
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */