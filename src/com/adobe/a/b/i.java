package com.adobe.a.b;

import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

final class i
{
  public static final Object c = new Object();
  private static SQLiteDatabase e;
  private static Integer f = Integer.valueOf(5);
  protected boolean a = false;
  protected int b = 1000;
  public String d = null;
  private SQLiteStatement g;
  private b h = null;
  private boolean i = false;
  private final Object j = new Object();
  
  protected i(String paramString)
  {
    d = paramString;
    d();
  }
  
  private void a(Exception paramException)
  {
    e.a();
    new StringBuilder("ADMS SDK Error: Database corrupted(").append(paramException.getMessage()).append(").");
    boolean bool = new File(d).delete();
    e.a();
    new StringBuilder("ADMS SDK Debug: Attempting to recover from database failure(delete result = ").append(Boolean.valueOf(bool)).append(").");
    d();
  }
  
  public static void b(String paramString)
  {
    synchronized (c)
    {
      try
      {
        int k = e.delete("HITS", "ID=" + paramString, null);
        if (k != 1) {
          throw new a("Count mismatch when deleting hit(" + k + ") should have been 1.");
        }
      }
      catch (SQLException paramString)
      {
        throw new a("Exception when deleting hit(" + paramString.getMessage() + ").");
      }
    }
  }
  
  private void d()
  {
    File localFile = new File(d);
    synchronized (c)
    {
      e = SQLiteDatabase.openOrCreateDatabase(localFile.getPath(), null);
      try
      {
        e.execSQL("CREATE TABLE IF NOT EXISTS HITS (ID INTEGER PRIMARY KEY AUTOINCREMENT, URL TEXT, TIMESTAMP INTEGER)");
        g = e.compileStatement("INSERT INTO HITS (URL, TIMESTAMP) VALUES (?, ?)");
        return;
      }
      catch (SQLException localSQLException)
      {
        for (;;)
        {
          e.a();
          new StringBuilder("ADMS SDK Error: Unable to create database(").append(localSQLException.getLocalizedMessage()).append(").");
        }
      }
    }
  }
  
  private static int e()
  {
    synchronized (c)
    {
      try
      {
        l = DatabaseUtils.queryNumEntries(e, "HITS");
        int k = (int)l;
        return k;
      }
      catch (SQLException localSQLException)
      {
        for (;;)
        {
          e.a();
          new StringBuilder("ADMS SDK Error: Cannot query database count (").append(localSQLException.getLocalizedMessage()).append(")");
          long l = 0L;
        }
      }
    }
  }
  
  protected final void a()
  {
    synchronized (j)
    {
      if ((h != null) && (!h.a)) {
        return;
      }
      if ((h == null) || (h.a))
      {
        if (h != null)
        {
          h.a = true;
          h = null;
        }
        h = new b(this);
        h.start();
      }
      i = false;
      return;
    }
  }
  
  /* Error */
  public final void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 45	com/adobe/a/b/i:a	Z
    //   4: ifne +11 -> 15
    //   7: aload_0
    //   8: getfield 51	com/adobe/a/b/i:i	Z
    //   11: ifeq +4 -> 15
    //   14: return
    //   15: invokestatic 175	com/adobe/a/b/i:e	()I
    //   18: aload_0
    //   19: getfield 47	com/adobe/a/b/i:b	I
    //   22: if_icmplt +107 -> 129
    //   25: getstatic 41	com/adobe/a/b/i:c	Ljava/lang/Object;
    //   28: astore 6
    //   30: aload 6
    //   32: monitorenter
    //   33: getstatic 104	com/adobe/a/b/i:e	Landroid/database/sqlite/SQLiteDatabase;
    //   36: ldc 108
    //   38: iconst_3
    //   39: anewarray 177	java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: ldc -77
    //   46: aastore
    //   47: dup
    //   48: iconst_1
    //   49: ldc -75
    //   51: aastore
    //   52: dup
    //   53: iconst_2
    //   54: ldc -73
    //   56: aastore
    //   57: aconst_null
    //   58: aconst_null
    //   59: aconst_null
    //   60: aconst_null
    //   61: ldc -71
    //   63: ldc -69
    //   65: invokevirtual 191	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   68: astore 4
    //   70: aload 4
    //   72: ifnull +32 -> 104
    //   75: aload 4
    //   77: astore_3
    //   78: aload 4
    //   80: invokeinterface 196 1 0
    //   85: istore_2
    //   86: iload_2
    //   87: ifeq +17 -> 104
    //   90: aload 4
    //   92: astore_3
    //   93: aload 4
    //   95: iconst_0
    //   96: invokeinterface 200 2 0
    //   101: invokestatic 202	com/adobe/a/b/i:b	(Ljava/lang/String;)V
    //   104: aload 4
    //   106: ifnull +20 -> 126
    //   109: aload 4
    //   111: invokeinterface 205 1 0
    //   116: ifne +10 -> 126
    //   119: aload 4
    //   121: invokeinterface 208 1 0
    //   126: aload 6
    //   128: monitorexit
    //   129: getstatic 41	com/adobe/a/b/i:c	Ljava/lang/Object;
    //   132: astore_3
    //   133: aload_3
    //   134: monitorenter
    //   135: aload_0
    //   136: getfield 150	com/adobe/a/b/i:g	Landroid/database/sqlite/SQLiteStatement;
    //   139: iconst_1
    //   140: aload_1
    //   141: invokevirtual 214	android/database/sqlite/SQLiteStatement:bindString	(ILjava/lang/String;)V
    //   144: aload_0
    //   145: getfield 150	com/adobe/a/b/i:g	Landroid/database/sqlite/SQLiteStatement;
    //   148: iconst_2
    //   149: invokestatic 220	java/lang/System:currentTimeMillis	()J
    //   152: ldc2_w 221
    //   155: ldiv
    //   156: invokevirtual 226	android/database/sqlite/SQLiteStatement:bindLong	(IJ)V
    //   159: aload_0
    //   160: getfield 150	com/adobe/a/b/i:g	Landroid/database/sqlite/SQLiteStatement;
    //   163: invokevirtual 229	android/database/sqlite/SQLiteStatement:execute	()V
    //   166: aload_0
    //   167: getfield 150	com/adobe/a/b/i:g	Landroid/database/sqlite/SQLiteStatement;
    //   170: invokevirtual 232	android/database/sqlite/SQLiteStatement:clearBindings	()V
    //   173: aload_3
    //   174: monitorexit
    //   175: aload_0
    //   176: getfield 51	com/adobe/a/b/i:i	Z
    //   179: ifne -165 -> 14
    //   182: aload_0
    //   183: invokevirtual 234	com/adobe/a/b/i:a	()V
    //   186: return
    //   187: astore 5
    //   189: aload 4
    //   191: astore_3
    //   192: invokestatic 66	com/adobe/a/b/e:a	()Lcom/adobe/a/b/e;
    //   195: pop
    //   196: aload 4
    //   198: astore_3
    //   199: new 68	java/lang/StringBuilder
    //   202: dup
    //   203: ldc -20
    //   205: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   208: aload 5
    //   210: invokevirtual 237	com/adobe/a/b/i$a:getMessage	()Ljava/lang/String;
    //   213: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: ldc -90
    //   218: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: pop
    //   222: goto -118 -> 104
    //   225: astore 5
    //   227: aload 4
    //   229: astore_3
    //   230: invokestatic 66	com/adobe/a/b/e:a	()Lcom/adobe/a/b/e;
    //   233: pop
    //   234: aload 4
    //   236: astore_3
    //   237: new 68	java/lang/StringBuilder
    //   240: dup
    //   241: ldc -17
    //   243: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   246: aload 5
    //   248: invokevirtual 129	android/database/SQLException:getMessage	()Ljava/lang/String;
    //   251: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: ldc -90
    //   256: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: pop
    //   260: aload 4
    //   262: ifnull -136 -> 126
    //   265: aload 4
    //   267: invokeinterface 205 1 0
    //   272: ifne -146 -> 126
    //   275: aload 4
    //   277: invokeinterface 208 1 0
    //   282: goto -156 -> 126
    //   285: astore_1
    //   286: aload 6
    //   288: monitorexit
    //   289: aload_1
    //   290: athrow
    //   291: astore_1
    //   292: aconst_null
    //   293: astore_3
    //   294: aload_3
    //   295: ifnull +18 -> 313
    //   298: aload_3
    //   299: invokeinterface 205 1 0
    //   304: ifne +9 -> 313
    //   307: aload_3
    //   308: invokeinterface 208 1 0
    //   313: aload_1
    //   314: athrow
    //   315: astore 4
    //   317: invokestatic 66	com/adobe/a/b/e:a	()Lcom/adobe/a/b/e;
    //   320: pop
    //   321: new 68	java/lang/StringBuilder
    //   324: dup
    //   325: ldc -15
    //   327: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   330: aload_1
    //   331: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: ldc -13
    //   336: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   339: aload 4
    //   341: invokevirtual 155	android/database/SQLException:getLocalizedMessage	()Ljava/lang/String;
    //   344: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: ldc 84
    //   349: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   352: pop
    //   353: aload_0
    //   354: aload 4
    //   356: invokespecial 61	com/adobe/a/b/i:a	(Ljava/lang/Exception;)V
    //   359: goto -193 -> 166
    //   362: astore_1
    //   363: aload_3
    //   364: monitorexit
    //   365: aload_1
    //   366: athrow
    //   367: astore_1
    //   368: goto -74 -> 294
    //   371: astore 5
    //   373: aconst_null
    //   374: astore 4
    //   376: goto -149 -> 227
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	379	0	this	i
    //   0	379	1	paramString	String
    //   85	2	2	bool	boolean
    //   68	208	4	localCursor	android.database.Cursor
    //   315	40	4	localSQLException1	SQLException
    //   374	1	4	localObject2	Object
    //   187	22	5	locala	a
    //   225	22	5	localSQLException2	SQLException
    //   371	1	5	localSQLException3	SQLException
    //   28	259	6	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   93	104	187	com/adobe/a/b/i$a
    //   78	86	225	android/database/SQLException
    //   93	104	225	android/database/SQLException
    //   192	196	225	android/database/SQLException
    //   199	222	225	android/database/SQLException
    //   109	126	285	finally
    //   126	129	285	finally
    //   265	282	285	finally
    //   286	289	285	finally
    //   298	313	285	finally
    //   313	315	285	finally
    //   33	70	291	finally
    //   135	166	315	android/database/SQLException
    //   135	166	362	finally
    //   166	175	362	finally
    //   317	359	362	finally
    //   363	365	362	finally
    //   78	86	367	finally
    //   93	104	367	finally
    //   192	196	367	finally
    //   199	222	367	finally
    //   230	234	367	finally
    //   237	260	367	finally
    //   33	70	371	android/database/SQLException
  }
  
  protected final void c(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return;
      paramString = new File(paramString);
    } while (!paramString.exists());
    e.a();
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(paramString), "UTF-8"));
      ArrayList localArrayList = new ArrayList();
      for (;;)
      {
        String str = localBufferedReader.readLine();
        if (str == null) {
          break;
        }
        localArrayList.add(str);
      }
      try
      {
        paramString.delete();
        if (!paramString.exists())
        {
          int k = 0;
          while (k < localArrayList.size())
          {
            a((String)localArrayList.get(k));
            k += 1;
          }
        }
        localBufferedReader.close();
        return;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
    catch (IOException paramString)
    {
      e.a();
      new StringBuilder("ADMS SDK Error: Cannot Read Requests From Disk(").append(paramString.getMessage()).append(").");
      return;
    }
  }
  
  private static final class a
    extends Exception
  {
    a(String paramString)
    {
      super();
    }
  }
  
  private static final class b
    extends Thread
  {
    public boolean a = false;
    private long b = 0L;
    private i c = null;
    
    public b(i parami)
    {
      c = parami;
    }
    
    /* Error */
    public final void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 23	com/adobe/a/b/i$b:a	Z
      //   4: ifne +363 -> 367
      //   7: getstatic 34	com/adobe/a/b/i:c	Ljava/lang/Object;
      //   10: astore 8
      //   12: aload 8
      //   14: monitorenter
      //   15: invokestatic 37	com/adobe/a/b/i:b	()Landroid/database/sqlite/SQLiteDatabase;
      //   18: ldc 39
      //   20: iconst_3
      //   21: anewarray 41	java/lang/String
      //   24: dup
      //   25: iconst_0
      //   26: ldc 43
      //   28: aastore
      //   29: dup
      //   30: iconst_1
      //   31: ldc 45
      //   33: aastore
      //   34: dup
      //   35: iconst_2
      //   36: ldc 47
      //   38: aastore
      //   39: aconst_null
      //   40: aconst_null
      //   41: aconst_null
      //   42: aconst_null
      //   43: ldc 49
      //   45: ldc 51
      //   47: invokevirtual 57	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
      //   50: astore_1
      //   51: aload_1
      //   52: ifnull +432 -> 484
      //   55: aload_1
      //   56: astore 4
      //   58: aload_1
      //   59: invokeinterface 63 1 0
      //   64: ifeq +420 -> 484
      //   67: aload_1
      //   68: astore 4
      //   70: aload_1
      //   71: iconst_0
      //   72: invokeinterface 67 2 0
      //   77: astore_2
      //   78: aload_1
      //   79: astore 4
      //   81: aload_1
      //   82: iconst_1
      //   83: invokeinterface 67 2 0
      //   88: astore 6
      //   90: aload_1
      //   91: astore 4
      //   93: aload_1
      //   94: iconst_2
      //   95: invokeinterface 67 2 0
      //   100: astore_3
      //   101: aload_3
      //   102: astore 4
      //   104: aload_2
      //   105: astore_3
      //   106: aload 4
      //   108: astore_2
      //   109: aload_2
      //   110: astore 4
      //   112: aload_3
      //   113: astore 5
      //   115: aload 6
      //   117: astore 7
      //   119: aload_1
      //   120: ifnull +38 -> 158
      //   123: aload_2
      //   124: astore 4
      //   126: aload_3
      //   127: astore 5
      //   129: aload 6
      //   131: astore 7
      //   133: aload_1
      //   134: invokeinterface 70 1 0
      //   139: ifne +19 -> 158
      //   142: aload_1
      //   143: invokeinterface 73 1 0
      //   148: aload 6
      //   150: astore 7
      //   152: aload_3
      //   153: astore 5
      //   155: aload_2
      //   156: astore 4
      //   158: aload 8
      //   160: monitorexit
      //   161: aload 7
      //   163: ifnull +204 -> 367
      //   166: aload_0
      //   167: getfield 21	com/adobe/a/b/i$b:c	Lcom/adobe/a/b/i;
      //   170: getfield 74	com/adobe/a/b/i:a	Z
      //   173: ifne +153 -> 326
      //   176: aload 4
      //   178: invokestatic 80	java/lang/Long:parseLong	(Ljava/lang/String;)J
      //   181: invokestatic 86	java/lang/System:currentTimeMillis	()J
      //   184: ldc2_w 87
      //   187: ldiv
      //   188: invokestatic 91	com/adobe/a/b/i:c	()Ljava/lang/Integer;
      //   191: invokevirtual 97	java/lang/Integer:intValue	()I
      //   194: i2l
      //   195: lsub
      //   196: lcmp
      //   197: ifge +129 -> 326
      //   200: aload 5
      //   202: invokestatic 100	com/adobe/a/b/i:b	(Ljava/lang/String;)V
      //   205: aload_0
      //   206: getfield 19	com/adobe/a/b/i$b:b	J
      //   209: invokestatic 104	java/lang/Thread:sleep	(J)V
      //   212: aload_0
      //   213: lconst_0
      //   214: putfield 19	com/adobe/a/b/i$b:b	J
      //   217: goto -217 -> 0
      //   220: astore_3
      //   221: aconst_null
      //   222: astore 5
      //   224: aconst_null
      //   225: astore_2
      //   226: aconst_null
      //   227: astore_1
      //   228: aload 5
      //   230: astore 4
      //   232: invokestatic 109	com/adobe/a/b/e:a	()Lcom/adobe/a/b/e;
      //   235: pop
      //   236: aload 5
      //   238: astore 4
      //   240: new 111	java/lang/StringBuilder
      //   243: dup
      //   244: ldc 113
      //   246: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   249: aload_3
      //   250: invokevirtual 119	android/database/SQLException:getMessage	()Ljava/lang/String;
      //   253: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   256: ldc 125
      //   258: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   261: pop
      //   262: aload 5
      //   264: ifnull +208 -> 472
      //   267: aload 5
      //   269: invokeinterface 70 1 0
      //   274: ifne +198 -> 472
      //   277: aload 5
      //   279: invokeinterface 73 1 0
      //   284: aconst_null
      //   285: astore 4
      //   287: aload_2
      //   288: astore 5
      //   290: aload_1
      //   291: astore 7
      //   293: goto -135 -> 158
      //   296: aload 4
      //   298: ifnull +20 -> 318
      //   301: aload 4
      //   303: invokeinterface 70 1 0
      //   308: ifne +10 -> 318
      //   311: aload 4
      //   313: invokeinterface 73 1 0
      //   318: aload_1
      //   319: athrow
      //   320: astore_1
      //   321: aload 8
      //   323: monitorexit
      //   324: aload_1
      //   325: athrow
      //   326: new 127	com/adobe/a/b/h
      //   329: dup
      //   330: aload 7
      //   332: invokespecial 128	com/adobe/a/b/h:<init>	(Ljava/lang/String;)V
      //   335: astore_1
      //   336: aload_1
      //   337: invokevirtual 130	com/adobe/a/b/h:a	()Ljava/lang/String;
      //   340: aload_1
      //   341: invokevirtual 133	com/adobe/a/b/h:b	()Ljava/util/Hashtable;
      //   344: invokestatic 138	com/adobe/a/b/g:a	(Ljava/lang/String;Ljava/util/Hashtable;)Z
      //   347: ifeq +26 -> 373
      //   350: aload 5
      //   352: invokestatic 100	com/adobe/a/b/i:b	(Ljava/lang/String;)V
      //   355: goto -150 -> 205
      //   358: astore_1
      //   359: aload_0
      //   360: getfield 21	com/adobe/a/b/i$b:c	Lcom/adobe/a/b/i;
      //   363: aload_1
      //   364: invokestatic 141	com/adobe/a/b/i:a	(Lcom/adobe/a/b/i;Ljava/lang/Exception;)V
      //   367: aload_0
      //   368: iconst_1
      //   369: putfield 23	com/adobe/a/b/i$b:a	Z
      //   372: return
      //   373: aload_0
      //   374: getfield 21	com/adobe/a/b/i$b:c	Lcom/adobe/a/b/i;
      //   377: getfield 74	com/adobe/a/b/i:a	Z
      //   380: ifeq +17 -> 397
      //   383: invokestatic 109	com/adobe/a/b/e:a	()Lcom/adobe/a/b/e;
      //   386: pop
      //   387: aload_0
      //   388: ldc2_w 142
      //   391: putfield 19	com/adobe/a/b/i$b:b	J
      //   394: goto -189 -> 205
      //   397: invokestatic 109	com/adobe/a/b/e:a	()Lcom/adobe/a/b/e;
      //   400: pop
      //   401: aload 5
      //   403: invokestatic 100	com/adobe/a/b/i:b	(Ljava/lang/String;)V
      //   406: goto -201 -> 205
      //   409: astore_1
      //   410: invokestatic 109	com/adobe/a/b/e:a	()Lcom/adobe/a/b/e;
      //   413: pop
      //   414: aload_0
      //   415: lconst_0
      //   416: putfield 19	com/adobe/a/b/i$b:b	J
      //   419: goto -419 -> 0
      //   422: astore_1
      //   423: aload_0
      //   424: lconst_0
      //   425: putfield 19	com/adobe/a/b/i$b:b	J
      //   428: aload_1
      //   429: athrow
      //   430: astore_1
      //   431: goto -135 -> 296
      //   434: astore_3
      //   435: aconst_null
      //   436: astore_2
      //   437: aconst_null
      //   438: astore 4
      //   440: aload_1
      //   441: astore 5
      //   443: aload 4
      //   445: astore_1
      //   446: goto -218 -> 228
      //   449: astore_3
      //   450: aconst_null
      //   451: astore 4
      //   453: aload_1
      //   454: astore 5
      //   456: aload 4
      //   458: astore_1
      //   459: goto -231 -> 228
      //   462: astore_3
      //   463: aload_1
      //   464: astore 5
      //   466: aload 6
      //   468: astore_1
      //   469: goto -241 -> 228
      //   472: aconst_null
      //   473: astore 4
      //   475: aload_2
      //   476: astore 5
      //   478: aload_1
      //   479: astore 7
      //   481: goto -323 -> 158
      //   484: aconst_null
      //   485: astore_2
      //   486: aconst_null
      //   487: astore_3
      //   488: aconst_null
      //   489: astore 6
      //   491: goto -382 -> 109
      //   494: astore_1
      //   495: aconst_null
      //   496: astore 4
      //   498: goto -202 -> 296
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	501	0	this	b
      //   50	269	1	localCursor	android.database.Cursor
      //   320	5	1	localObject1	Object
      //   335	6	1	localh	h
      //   358	6	1	locala	i.a
      //   409	1	1	localInterruptedException	InterruptedException
      //   422	7	1	localObject2	Object
      //   430	11	1	localObject3	Object
      //   445	34	1	localObject4	Object
      //   494	1	1	localObject5	Object
      //   77	409	2	localObject6	Object
      //   100	53	3	localObject7	Object
      //   220	30	3	localSQLException1	SQLException
      //   434	1	3	localSQLException2	SQLException
      //   449	1	3	localSQLException3	SQLException
      //   462	1	3	localSQLException4	SQLException
      //   487	1	3	localObject8	Object
      //   56	441	4	localObject9	Object
      //   113	364	5	localObject10	Object
      //   88	402	6	str	String
      //   117	363	7	localObject11	Object
      //   10	312	8	localObject12	Object
      // Exception table:
      //   from	to	target	type
      //   15	51	220	android/database/SQLException
      //   133	148	320	finally
      //   158	161	320	finally
      //   267	284	320	finally
      //   301	318	320	finally
      //   318	320	320	finally
      //   321	324	320	finally
      //   166	205	358	com/adobe/a/b/i$a
      //   326	355	358	com/adobe/a/b/i$a
      //   373	394	358	com/adobe/a/b/i$a
      //   397	406	358	com/adobe/a/b/i$a
      //   205	212	409	java/lang/InterruptedException
      //   205	212	422	finally
      //   410	414	422	finally
      //   58	67	430	finally
      //   70	78	430	finally
      //   81	90	430	finally
      //   93	101	430	finally
      //   232	236	430	finally
      //   240	262	430	finally
      //   58	67	434	android/database/SQLException
      //   70	78	434	android/database/SQLException
      //   81	90	449	android/database/SQLException
      //   93	101	462	android/database/SQLException
      //   15	51	494	finally
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.a.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */