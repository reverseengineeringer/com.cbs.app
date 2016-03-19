package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.fs;
import java.util.Locale;

@fs
public final class h
{
  private static final String a = String.format(Locale.US, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", new Object[] { "InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time" });
  private static final Object c = new Object();
  private static h d;
  private final h.a b;
  
  private h(Context paramContext)
  {
    b = new h.a(this, paramContext, "google_inapp_purchase.db");
  }
  
  private static f a(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return null;
    }
    return new f(paramCursor.getLong(0), paramCursor.getString(1), paramCursor.getString(2));
  }
  
  public static h a(Context paramContext)
  {
    synchronized (c)
    {
      if (d == null) {
        d = new h(paramContext);
      }
      paramContext = d;
      return paramContext;
    }
  }
  
  private SQLiteDatabase c()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      b.a(5);
    }
    return null;
  }
  
  private int d()
  {
    localObject4 = null;
    Object localObject1 = null;
    Object localObject5;
    synchronized (c)
    {
      localObject5 = c();
      if (localObject5 == null) {
        return 0;
      }
    }
    try
    {
      localObject5 = ((SQLiteDatabase)localObject5).rawQuery("select count(*) from InAppPurchase", null);
      localObject1 = localObject5;
      localObject4 = localObject5;
      if (((Cursor)localObject5).moveToFirst())
      {
        localObject1 = localObject5;
        localObject4 = localObject5;
        int i = ((Cursor)localObject5).getInt(0);
        if (localObject5 != null) {
          ((Cursor)localObject5).close();
        }
        return i;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        localObject4 = localObject2;
        new StringBuilder("Error getting record count").append(localSQLiteException.getMessage());
        localObject4 = localObject2;
        b.a(5);
        if (localObject2 != null) {
          ((Cursor)localObject2).close();
        }
      }
    }
    finally
    {
      if (localObject4 == null) {
        break label162;
      }
      ((Cursor)localObject4).close();
    }
    return 0;
  }
  
  /* Error */
  public final java.util.List<f> a()
  {
    // Byte code:
    //   0: getstatic 48	com/google/android/gms/ads/internal/purchase/h:c	Ljava/lang/Object;
    //   3: astore 5
    //   5: aload 5
    //   7: monitorenter
    //   8: new 129	java/util/LinkedList
    //   11: dup
    //   12: invokespecial 130	java/util/LinkedList:<init>	()V
    //   15: astore 6
    //   17: ldc2_w 131
    //   20: lconst_0
    //   21: lcmp
    //   22: ifgt +9 -> 31
    //   25: aload 5
    //   27: monitorexit
    //   28: aload 6
    //   30: areturn
    //   31: aload_0
    //   32: invokespecial 93	com/google/android/gms/ads/internal/purchase/h:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   35: astore_2
    //   36: aload_2
    //   37: ifnonnull +9 -> 46
    //   40: aload 5
    //   42: monitorexit
    //   43: aload 6
    //   45: areturn
    //   46: aload_2
    //   47: ldc 27
    //   49: aconst_null
    //   50: aconst_null
    //   51: aconst_null
    //   52: aconst_null
    //   53: aconst_null
    //   54: ldc -122
    //   56: ldc -120
    //   58: invokevirtual 140	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore_3
    //   62: aload_3
    //   63: astore_2
    //   64: aload_3
    //   65: invokeinterface 105 1 0
    //   70: ifeq +30 -> 100
    //   73: aload_3
    //   74: astore_2
    //   75: aload 6
    //   77: aload_3
    //   78: invokestatic 142	com/google/android/gms/ads/internal/purchase/h:a	(Landroid/database/Cursor;)Lcom/google/android/gms/ads/internal/purchase/f;
    //   81: invokeinterface 148 2 0
    //   86: pop
    //   87: aload_3
    //   88: astore_2
    //   89: aload_3
    //   90: invokeinterface 151 1 0
    //   95: istore_1
    //   96: iload_1
    //   97: ifne -24 -> 73
    //   100: aload_3
    //   101: ifnull +9 -> 110
    //   104: aload_3
    //   105: invokeinterface 112 1 0
    //   110: aload 5
    //   112: monitorexit
    //   113: aload 6
    //   115: areturn
    //   116: astore 4
    //   118: aconst_null
    //   119: astore_3
    //   120: aload_3
    //   121: astore_2
    //   122: new 114	java/lang/StringBuilder
    //   125: dup
    //   126: ldc -103
    //   128: invokespecial 119	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   131: aload 4
    //   133: invokevirtual 122	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   136: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: pop
    //   140: aload_3
    //   141: astore_2
    //   142: iconst_5
    //   143: invokestatic 90	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   146: pop
    //   147: aload_3
    //   148: ifnull -38 -> 110
    //   151: aload_3
    //   152: invokeinterface 112 1 0
    //   157: goto -47 -> 110
    //   160: astore_2
    //   161: aload 5
    //   163: monitorexit
    //   164: aload_2
    //   165: athrow
    //   166: astore_3
    //   167: aconst_null
    //   168: astore_2
    //   169: aload_2
    //   170: ifnull +9 -> 179
    //   173: aload_2
    //   174: invokeinterface 112 1 0
    //   179: aload_3
    //   180: athrow
    //   181: astore_3
    //   182: goto -13 -> 169
    //   185: astore 4
    //   187: goto -67 -> 120
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	190	0	this	h
    //   95	2	1	bool	boolean
    //   35	107	2	localObject1	Object
    //   160	5	2	localObject2	Object
    //   168	6	2	localObject3	Object
    //   61	91	3	localCursor	Cursor
    //   166	14	3	localObject4	Object
    //   181	1	3	localObject5	Object
    //   116	16	4	localSQLiteException1	SQLiteException
    //   185	1	4	localSQLiteException2	SQLiteException
    //   3	159	5	localObject6	Object
    //   15	99	6	localLinkedList	java.util.LinkedList
    // Exception table:
    //   from	to	target	type
    //   46	62	116	android/database/sqlite/SQLiteException
    //   8	17	160	finally
    //   25	28	160	finally
    //   31	36	160	finally
    //   40	43	160	finally
    //   104	110	160	finally
    //   110	113	160	finally
    //   151	157	160	finally
    //   161	164	160	finally
    //   173	179	160	finally
    //   179	181	160	finally
    //   46	62	166	finally
    //   64	73	181	finally
    //   75	87	181	finally
    //   89	96	181	finally
    //   122	140	181	finally
    //   142	147	181	finally
    //   64	73	185	android/database/sqlite/SQLiteException
    //   75	87	185	android/database/sqlite/SQLiteException
    //   89	96	185	android/database/sqlite/SQLiteException
  }
  
  public final void a(f paramf)
  {
    if (paramf == null) {
      return;
    }
    SQLiteDatabase localSQLiteDatabase;
    synchronized (c)
    {
      localSQLiteDatabase = c();
      if (localSQLiteDatabase == null) {
        return;
      }
    }
    localSQLiteDatabase.delete("InAppPurchase", String.format(Locale.US, "%s = %d", new Object[] { "purchase_id", Long.valueOf(a) }), null);
  }
  
  /* Error */
  public final void b(f paramf)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: getstatic 48	com/google/android/gms/ads/internal/purchase/h:c	Ljava/lang/Object;
    //   8: astore 4
    //   10: aload 4
    //   12: monitorenter
    //   13: aload_0
    //   14: invokespecial 93	com/google/android/gms/ads/internal/purchase/h:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   17: astore_2
    //   18: aload_2
    //   19: ifnonnull +13 -> 32
    //   22: aload 4
    //   24: monitorexit
    //   25: return
    //   26: astore_1
    //   27: aload 4
    //   29: monitorexit
    //   30: aload_1
    //   31: athrow
    //   32: new 173	android/content/ContentValues
    //   35: dup
    //   36: invokespecial 174	android/content/ContentValues:<init>	()V
    //   39: astore_3
    //   40: aload_3
    //   41: ldc 31
    //   43: aload_1
    //   44: getfield 176	com/google/android/gms/ads/internal/purchase/f:c	Ljava/lang/String;
    //   47: invokevirtual 180	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   50: aload_3
    //   51: ldc 33
    //   53: aload_1
    //   54: getfield 182	com/google/android/gms/ads/internal/purchase/f:b	Ljava/lang/String;
    //   57: invokevirtual 180	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   60: aload_3
    //   61: ldc 35
    //   63: invokestatic 188	android/os/SystemClock:elapsedRealtime	()J
    //   66: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   69: invokevirtual 191	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   72: aload_1
    //   73: aload_2
    //   74: ldc 27
    //   76: aconst_null
    //   77: aload_3
    //   78: invokevirtual 195	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   81: putfield 161	com/google/android/gms/ads/internal/purchase/f:a	J
    //   84: aload_0
    //   85: invokespecial 197	com/google/android/gms/ads/internal/purchase/h:d	()I
    //   88: i2l
    //   89: ldc2_w 198
    //   92: lcmp
    //   93: ifle +23 -> 116
    //   96: getstatic 48	com/google/android/gms/ads/internal/purchase/h:c	Ljava/lang/Object;
    //   99: astore 5
    //   101: aload 5
    //   103: monitorenter
    //   104: aload_0
    //   105: invokespecial 93	com/google/android/gms/ads/internal/purchase/h:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   108: astore_1
    //   109: aload_1
    //   110: ifnonnull +10 -> 120
    //   113: aload 5
    //   115: monitorexit
    //   116: aload 4
    //   118: monitorexit
    //   119: return
    //   120: aload_1
    //   121: ldc 27
    //   123: aconst_null
    //   124: aconst_null
    //   125: aconst_null
    //   126: aconst_null
    //   127: aconst_null
    //   128: ldc -122
    //   130: ldc -55
    //   132: invokevirtual 140	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   135: astore_2
    //   136: aload_2
    //   137: ifnull +24 -> 161
    //   140: aload_2
    //   141: astore_1
    //   142: aload_2
    //   143: invokeinterface 105 1 0
    //   148: ifeq +13 -> 161
    //   151: aload_2
    //   152: astore_1
    //   153: aload_0
    //   154: aload_2
    //   155: invokestatic 142	com/google/android/gms/ads/internal/purchase/h:a	(Landroid/database/Cursor;)Lcom/google/android/gms/ads/internal/purchase/f;
    //   158: invokevirtual 203	com/google/android/gms/ads/internal/purchase/h:a	(Lcom/google/android/gms/ads/internal/purchase/f;)V
    //   161: aload_2
    //   162: ifnull +9 -> 171
    //   165: aload_2
    //   166: invokeinterface 112 1 0
    //   171: aload 5
    //   173: monitorexit
    //   174: goto -58 -> 116
    //   177: astore_1
    //   178: aload 5
    //   180: monitorexit
    //   181: aload_1
    //   182: athrow
    //   183: astore_3
    //   184: aconst_null
    //   185: astore_2
    //   186: aload_2
    //   187: astore_1
    //   188: new 114	java/lang/StringBuilder
    //   191: dup
    //   192: ldc -51
    //   194: invokespecial 119	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   197: aload_3
    //   198: invokevirtual 122	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   201: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: pop
    //   205: aload_2
    //   206: astore_1
    //   207: iconst_5
    //   208: invokestatic 90	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   211: pop
    //   212: aload_2
    //   213: ifnull -42 -> 171
    //   216: aload_2
    //   217: invokeinterface 112 1 0
    //   222: goto -51 -> 171
    //   225: aload_1
    //   226: ifnull +9 -> 235
    //   229: aload_1
    //   230: invokeinterface 112 1 0
    //   235: aload_2
    //   236: athrow
    //   237: astore_2
    //   238: goto -13 -> 225
    //   241: astore_3
    //   242: goto -56 -> 186
    //   245: astore_2
    //   246: aconst_null
    //   247: astore_1
    //   248: goto -23 -> 225
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	251	0	this	h
    //   0	251	1	paramf	f
    //   17	219	2	localObject1	Object
    //   237	1	2	localObject2	Object
    //   245	1	2	localObject3	Object
    //   39	39	3	localContentValues	android.content.ContentValues
    //   183	15	3	localSQLiteException1	SQLiteException
    //   241	1	3	localSQLiteException2	SQLiteException
    //   8	109	4	localObject4	Object
    //   99	80	5	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   13	18	26	finally
    //   22	25	26	finally
    //   27	30	26	finally
    //   32	104	26	finally
    //   116	119	26	finally
    //   181	183	26	finally
    //   104	109	177	finally
    //   113	116	177	finally
    //   165	171	177	finally
    //   171	174	177	finally
    //   178	181	177	finally
    //   216	222	177	finally
    //   229	235	177	finally
    //   235	237	177	finally
    //   120	136	183	android/database/sqlite/SQLiteException
    //   142	151	237	finally
    //   153	161	237	finally
    //   188	205	237	finally
    //   207	212	237	finally
    //   142	151	241	android/database/sqlite/SQLiteException
    //   153	161	241	android/database/sqlite/SQLiteException
    //   120	136	245	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */