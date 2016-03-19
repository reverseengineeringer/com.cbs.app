package com.adobe.mobile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Process;
import java.io.File;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

final class g
  extends a
{
  private static final SecureRandom c = new SecureRandom();
  private static final Object d = new Object();
  private static final Object e = new Object();
  private static boolean f = false;
  private static g l = null;
  private static final Object m = new Object();
  private static boolean n = false;
  private static String o;
  private static volatile boolean p = true;
  private long g = 0L;
  private long h;
  private SQLiteStatement i = null;
  private Timer j;
  private TimerTask k;
  
  protected g()
  {
    a(new File(am.i(), "ADBMobileDataCache.sqlite"));
    if (am.o()) {
      f = true;
    }
    for (;;)
    {
      h = j();
      return;
      IntentFilter localIntentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
      try
      {
        Context localContext = am.s().getApplicationContext();
        if (localContext == null) {
          continue;
        }
        localContext.registerReceiver(new BroadcastReceiver()
        {
          public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
          {
            g.b(g.a(paramAnonymousContext));
            if (g.f())
            {
              am.c("Analytics - Network status changed (reachable)", new Object[0]);
              g.e().a(false);
              return;
            }
            am.c("Analytics - Network status changed (unreachable)", new Object[0]);
          }
        }, localIntentFilter);
      }
      catch (am.b localb)
      {
        for (;;)
        {
          am.a("Analytics - Error registering network receiver (%s)", new Object[] { localb.getMessage() });
          Object localObject = null;
        }
      }
    }
  }
  
  protected static boolean a(Context paramContext)
  {
    if (paramContext != null) {}
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext != null)
      {
        paramContext = paramContext.getActiveNetworkInfo();
        if (paramContext != null)
        {
          if (paramContext.isAvailable())
          {
            bool = paramContext.isConnected();
            if (bool) {
              return true;
            }
          }
          return false;
        }
      }
    }
    catch (NullPointerException paramContext)
    {
      bool = true;
      am.b("Analytics - Unable to determine connectivity status due to an unexpected error (%s)", new Object[] { paramContext.getLocalizedMessage() });
      return bool;
    }
    catch (SecurityException paramContext)
    {
      bool = true;
      am.a("Analytics - Unable to access connectivity status due to a security error (%s)", new Object[] { paramContext.getLocalizedMessage() });
      return bool;
    }
    catch (Exception paramContext)
    {
      bool = true;
      am.b("Analytics - Unable to access connectivity status due to an unexpected error (%s)", new Object[] { paramContext.getLocalizedMessage() });
      return bool;
    }
    try
    {
      am.b("Analytics - Unable to determine connectivity status due to there being no default network currently active", new Object[0]);
      return false;
    }
    catch (Exception paramContext)
    {
      bool = false;
      break label114;
    }
    catch (SecurityException paramContext)
    {
      bool = false;
      break label93;
    }
    catch (NullPointerException paramContext)
    {
      bool = false;
      break label72;
    }
    am.b("Analytics - Unable to determine connectivity status due to the system service requested being unrecognized", new Object[0]);
    return true;
  }
  
  public static g e()
  {
    synchronized (m)
    {
      if (l == null) {
        l = new g();
      }
      g localg = l;
      return localg;
    }
  }
  
  private long j()
  {
    synchronized (a)
    {
      try
      {
        l1 = DatabaseUtils.queryNumEntries(b, "HITS");
        return l1;
      }
      catch (NullPointerException localNullPointerException)
      {
        for (;;)
        {
          am.a("Analytics - Unable to get tracking queue size due to an unopened database (%s)", new Object[] { localNullPointerException.getLocalizedMessage() });
          l1 = 0L;
        }
      }
      catch (SQLException localSQLException)
      {
        for (;;)
        {
          am.a("Analytics - Unable to get tracking queue size due to a sql error (%s)", new Object[] { localSQLException.getLocalizedMessage() });
          l1 = 0L;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          am.a("Analytics - Unable to get tracking queue size due to an unexpected error (%s)", new Object[] { localException.getLocalizedMessage() });
          long l1 = 0L;
        }
      }
    }
  }
  
  /* Error */
  private a k()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_2
    //   5: aconst_null
    //   6: astore_3
    //   7: aconst_null
    //   8: astore 5
    //   10: aload_0
    //   11: getfield 153	com/adobe/mobile/g:a	Ljava/lang/Object;
    //   14: astore 6
    //   16: aload 6
    //   18: monitorenter
    //   19: aload_0
    //   20: getfield 156	com/adobe/mobile/g:b	Landroid/database/sqlite/SQLiteDatabase;
    //   23: ldc -98
    //   25: iconst_3
    //   26: anewarray 140	java/lang/String
    //   29: dup
    //   30: iconst_0
    //   31: ldc_w 278
    //   34: aastore
    //   35: dup
    //   36: iconst_1
    //   37: ldc_w 280
    //   40: aastore
    //   41: dup
    //   42: iconst_2
    //   43: ldc_w 282
    //   46: aastore
    //   47: aconst_null
    //   48: aconst_null
    //   49: aconst_null
    //   50: aconst_null
    //   51: ldc_w 284
    //   54: ldc_w 286
    //   57: invokevirtual 290	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   60: astore_1
    //   61: aload 5
    //   63: astore_3
    //   64: aload_1
    //   65: astore_2
    //   66: aload_1
    //   67: invokeinterface 295 1 0
    //   72: ifeq +52 -> 124
    //   75: aload_1
    //   76: astore_2
    //   77: new 8	com/adobe/mobile/g$a
    //   80: dup
    //   81: invokespecial 296	com/adobe/mobile/g$a:<init>	()V
    //   84: astore_3
    //   85: aload_1
    //   86: astore_2
    //   87: aload_3
    //   88: aload_1
    //   89: iconst_0
    //   90: invokeinterface 300 2 0
    //   95: putfield 302	com/adobe/mobile/g$a:b	Ljava/lang/String;
    //   98: aload_1
    //   99: astore_2
    //   100: aload_3
    //   101: aload_1
    //   102: iconst_1
    //   103: invokeinterface 300 2 0
    //   108: putfield 304	com/adobe/mobile/g$a:a	Ljava/lang/String;
    //   111: aload_1
    //   112: astore_2
    //   113: aload_3
    //   114: aload_1
    //   115: iconst_2
    //   116: invokeinterface 308 2 0
    //   121: putfield 310	com/adobe/mobile/g$a:c	J
    //   124: aload_3
    //   125: astore_2
    //   126: aload_1
    //   127: ifnull +11 -> 138
    //   130: aload_1
    //   131: invokeinterface 313 1 0
    //   136: aload_3
    //   137: astore_2
    //   138: aload 6
    //   140: monitorexit
    //   141: aload_2
    //   142: areturn
    //   143: astore_3
    //   144: aconst_null
    //   145: astore_1
    //   146: aload_1
    //   147: astore_2
    //   148: ldc_w 315
    //   151: iconst_1
    //   152: anewarray 48	java/lang/Object
    //   155: dup
    //   156: iconst_0
    //   157: aload_3
    //   158: invokevirtual 316	android/database/SQLException:getMessage	()Ljava/lang/String;
    //   161: aastore
    //   162: invokestatic 126	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   165: aload 4
    //   167: astore_2
    //   168: aload_1
    //   169: ifnull -31 -> 138
    //   172: aload_1
    //   173: invokeinterface 313 1 0
    //   178: aload 4
    //   180: astore_2
    //   181: goto -43 -> 138
    //   184: astore_1
    //   185: aload 6
    //   187: monitorexit
    //   188: aload_1
    //   189: athrow
    //   190: astore 4
    //   192: aconst_null
    //   193: astore_1
    //   194: aload_2
    //   195: astore_3
    //   196: ldc_w 318
    //   199: iconst_1
    //   200: anewarray 48	java/lang/Object
    //   203: dup
    //   204: iconst_0
    //   205: aload 4
    //   207: invokevirtual 319	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   210: aastore
    //   211: invokestatic 126	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   214: aload_2
    //   215: ifnull +63 -> 278
    //   218: aload_2
    //   219: invokeinterface 313 1 0
    //   224: aload_1
    //   225: astore_2
    //   226: goto -88 -> 138
    //   229: aload_2
    //   230: ifnull +9 -> 239
    //   233: aload_2
    //   234: invokeinterface 313 1 0
    //   239: aload_1
    //   240: athrow
    //   241: astore_1
    //   242: goto -13 -> 229
    //   245: astore 4
    //   247: aconst_null
    //   248: astore_3
    //   249: aload_1
    //   250: astore_2
    //   251: aload_3
    //   252: astore_1
    //   253: goto -59 -> 194
    //   256: astore 4
    //   258: aload_1
    //   259: astore_2
    //   260: aload_3
    //   261: astore_1
    //   262: goto -68 -> 194
    //   265: astore_3
    //   266: goto -120 -> 146
    //   269: astore_2
    //   270: aload_3
    //   271: astore 4
    //   273: aload_2
    //   274: astore_3
    //   275: goto -129 -> 146
    //   278: aload_1
    //   279: astore_2
    //   280: goto -142 -> 138
    //   283: astore_1
    //   284: aload_3
    //   285: astore_2
    //   286: goto -57 -> 229
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	289	0	this	g
    //   60	113	1	localCursor	android.database.Cursor
    //   184	5	1	localObject1	Object
    //   193	47	1	localObject2	Object
    //   241	9	1	localObject3	Object
    //   252	27	1	localObject4	Object
    //   283	1	1	localObject5	Object
    //   4	256	2	localObject6	Object
    //   269	5	2	localSQLException1	SQLException
    //   279	7	2	localObject7	Object
    //   6	131	3	localObject8	Object
    //   143	15	3	localSQLException2	SQLException
    //   195	66	3	localObject9	Object
    //   265	6	3	localSQLException3	SQLException
    //   274	11	3	localSQLException4	SQLException
    //   1	178	4	localObject10	Object
    //   190	16	4	localException1	Exception
    //   245	1	4	localException2	Exception
    //   256	1	4	localException3	Exception
    //   271	1	4	localObject11	Object
    //   8	54	5	localObject12	Object
    //   14	172	6	localObject13	Object
    // Exception table:
    //   from	to	target	type
    //   19	61	143	android/database/SQLException
    //   130	136	184	finally
    //   138	141	184	finally
    //   172	178	184	finally
    //   185	188	184	finally
    //   218	224	184	finally
    //   233	239	184	finally
    //   239	241	184	finally
    //   19	61	190	java/lang/Exception
    //   66	75	241	finally
    //   77	85	241	finally
    //   87	98	241	finally
    //   100	111	241	finally
    //   113	124	241	finally
    //   148	165	241	finally
    //   66	75	245	java/lang/Exception
    //   77	85	245	java/lang/Exception
    //   87	98	256	java/lang/Exception
    //   100	111	256	java/lang/Exception
    //   113	124	256	java/lang/Exception
    //   66	75	265	android/database/SQLException
    //   77	85	265	android/database/SQLException
    //   87	98	269	android/database/SQLException
    //   100	111	269	android/database/SQLException
    //   113	124	269	android/database/SQLException
    //   19	61	283	finally
    //   196	214	283	finally
  }
  
  protected final void a()
  {
    try
    {
      b.execSQL("CREATE TABLE IF NOT EXISTS HITS (ID INTEGER PRIMARY KEY AUTOINCREMENT, URL TEXT, TIMESTAMP INTEGER)");
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      am.a("Analytics - Unable to create database due to an invalid path (%s)", new Object[] { localNullPointerException.getLocalizedMessage() });
      return;
    }
    catch (SQLException localSQLException)
    {
      am.a("Analytics - Unable to create database due to a sql error (%s)", new Object[] { localSQLException.getLocalizedMessage() });
      return;
    }
    catch (Exception localException)
    {
      am.a("Analytics - Unable to create database due to an unexpected error (%s)", new Object[] { localException.getLocalizedMessage() });
    }
  }
  
  protected final void a(String paramString, long paramLong)
  {
    ??? = af.a();
    if (??? == null)
    {
      am.a("Analytics - Cannot send hit, MobileConfig is null (this really shouldn't happen)", new Object[0]);
      return;
    }
    if (((af)???).m() == ag.b)
    {
      am.c("Analytics - Ignoring hit due to privacy status being opted out", new Object[0]);
      return;
    }
    try
    {
      synchronized (a)
      {
        try
        {
          i.bindString(1, paramString);
          i.bindLong(2, paramLong);
          i.execute();
          am.a(Long.valueOf(paramLong));
          h += 1L;
          i.clearBindings();
          a(false);
          return;
        }
        catch (SQLException localSQLException)
        {
          for (;;)
          {
            am.a("Analytics - Unable to insert url (%s)", new Object[] { paramString });
            a(localSQLException);
          }
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        am.a("Analytics - Unknown error while inserting url (%s)", new Object[] { paramString });
        a(localException);
      }
    }
  }
  
  protected final void a(boolean paramBoolean)
  {
    Object localObject2 = af.a();
    if ((!ai.a()) && (((af)localObject2).n() > 0)) {
      synchronized (e)
      {
        localObject2 = k;
        if (localObject2 == null) {}
        try
        {
          k = new b(paramBoolean);
          j = new Timer();
          j.schedule(k, af.a().n() * 1000);
          return;
        }
        catch (Exception localException1)
        {
          for (;;)
          {
            am.a("Analytics - Error creating referrer timer (%s)", new Object[] { localException1.getMessage() });
          }
        }
      }
    }
    if (j != null) {}
    for (;;)
    {
      synchronized (e)
      {
        try
        {
          j.cancel();
          k = null;
          if (((af)localObject3).m() != ag.a) {
            break;
          }
          if ((!((af)localObject3).i()) || (h > ((af)localObject3).l()))
          {
            i1 = 1;
            if (((i1 == 0) && (!paramBoolean)) || (n)) {
              break;
            }
            n = true;
            synchronized (d)
            {
              new Thread(new c((byte)0)).start();
              return;
            }
          }
        }
        catch (Exception localException2)
        {
          am.a("Analytics - Error cancelling referrer timer (%s)", new Object[] { localException2.getMessage() });
          continue;
        }
      }
      int i1 = 0;
    }
  }
  
  protected final void b()
  {
    try
    {
      i = b.compileStatement("INSERT INTO HITS (URL, TIMESTAMP) VALUES (?, ?)");
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      am.a("Analytics - Unable to create database due to an invalid path (%s)", new Object[] { localNullPointerException.getLocalizedMessage() });
      return;
    }
    catch (SQLException localSQLException)
    {
      am.a("Analytics - Unable to create database due to a sql error (%s)", new Object[] { localSQLException.getLocalizedMessage() });
      return;
    }
    catch (Exception localException)
    {
      am.a("Analytics - Unable to create database due to an unexpected error (%s)", new Object[] { localException.getLocalizedMessage() });
    }
  }
  
  protected final void c()
  {
    h = 0L;
  }
  
  protected final void d()
  {
    File localFile1 = new File(am.i() + "ADBMobileDataCache.sqlite");
    File localFile2 = new File(am.i(), "ADBMobileDataCache.sqlite");
    if ((localFile1.exists()) && (!localFile2.exists())) {}
    try
    {
      if (!localFile1.renameTo(localFile2)) {
        am.b("Analytics - Unable to migrate old hits db, creating new hits db (move file returned false)", new Object[0]);
      }
      return;
    }
    catch (Exception localException)
    {
      am.b("Analytics - Unable to migrate old hits db, creating new hits db (%s)", new Object[] { localException.getLocalizedMessage() });
    }
  }
  
  protected static final class a
  {
    String a;
    String b;
    long c;
  }
  
  protected final class b
    extends TimerTask
  {
    private boolean b = false;
    
    b(boolean paramBoolean)
    {
      b = paramBoolean;
    }
    
    public final void run()
    {
      ai.a(true);
      am.c("Analytics - Referrer timeout has expired without referrer data", new Object[0]);
      a(b);
    }
  }
  
  private static final class c
    implements Runnable
  {
    public final void run()
    {
      g localg = g.e();
      Process.setThreadPriority(10);
      HashMap localHashMap = new HashMap();
      localHashMap.put("Accept-Language", am.q());
      localHashMap.put("User-Agent", am.e());
      for (;;)
      {
        g.a locala;
        if ((af.a().m() == ag.a) && (g.f()))
        {
          locala = g.a(localg);
          if (locala != null)
          {
            Object localObject;
            String str;
            if (af.a().i()) {
              if (c - g.b(localg) < 0L)
              {
                long l = g.b(localg) + 1L;
                localObject = "&ts=" + Long.toString(c);
                str = "&ts=" + Long.toString(l);
                a = a.replaceFirst((String)localObject, str);
                am.c("Analytics - Adjusting out of order hit timestamp(%d->%d)", new Object[] { Long.valueOf(c), Long.valueOf(l) });
                c = l;
              }
            }
            do
            {
              str = a;
              localObject = str;
              if (!str.startsWith("ndh")) {
                localObject = str.substring(str.indexOf('?') + 1);
              }
              if (!al.a(g.g() + g.h().nextInt(100000000), (String)localObject, localHashMap)) {
                break label359;
              }
              try
              {
                g.a(localg, b);
                g.a(localg, c);
              }
              catch (a.a locala2)
              {
                for (;;)
                {
                  g.e().a(locala2);
                }
              }
            } while (c >= am.p() - 60L);
            try
            {
              g.a(localg, b);
            }
            catch (a.a locala1)
            {
              g.e().a(locala1);
            }
          }
        }
        for (;;)
        {
          g.i();
          return;
          label359:
          am.b("Analytics - Unable to send hit", new Object[0]);
          int i;
          if (af.a().i())
          {
            am.c("Analytics - Network error, imposing internal cooldown(%d seconds)", new Object[] { Long.valueOf(30L) });
            i = 0;
            if (i >= 30L) {
              break;
            }
          }
          try
          {
            if (!g.f()) {
              break;
            }
            Thread.sleep(1000L);
            i += 1;
          }
          catch (Exception localException)
          {
            am.b("Analytics - Background Thread Interrupted(%s)", new Object[] { localException.getMessage() });
          }
          try
          {
            g.a(localg, b);
          }
          catch (a.a locala3)
          {
            g.e().a(locala3);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */