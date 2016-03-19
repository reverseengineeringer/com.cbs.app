package com.adobe.mobile;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import java.io.File;

final class f
  extends a
{
  private static f n = null;
  private static final Object o = new Object();
  private SQLiteStatement c;
  private SQLiteStatement d;
  private SQLiteStatement e;
  private String f;
  private SQLiteStatement g;
  private String h;
  private SQLiteStatement i;
  private SQLiteStatement j;
  private String k;
  private SQLiteStatement l;
  private String m;
  
  private f()
  {
    a(new File(am.i(), "ADBMobileTimedActionsCache.sqlite"));
  }
  
  public static f e()
  {
    synchronized (o)
    {
      if (n == null) {
        n = new f();
      }
      f localf = n;
      return localf;
    }
  }
  
  protected final void a()
  {
    try
    {
      b.execSQL("CREATE TABLE IF NOT EXISTS TIMEDACTIONS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT, STARTTIME INTEGER, ADJSTARTTIME INTEGER)");
      b.execSQL("CREATE TABLE IF NOT EXISTS CONTEXTDATA (ID INTEGER PRIMARY KEY AUTOINCREMENT, ACTIONID INTEGER, KEY TEXT, VALUE TEXT, FOREIGN KEY(ACTIONID) REFERENCES TIMEDACTIONS(ID))");
      return;
    }
    catch (SQLException localSQLException)
    {
      am.a("Analytics - Unable to open or create timed actions database (%s)", new Object[] { localSQLException.getMessage() });
      return;
    }
    catch (Exception localException)
    {
      am.a("Analytics - Uknown error creating timed actions database (%s)", new Object[] { localException.getMessage() });
    }
  }
  
  protected final void a(long paramLong)
  {
    try
    {
      synchronized (a)
      {
        try
        {
          d.bindLong(1, paramLong);
          d.execute();
          d.clearBindings();
          return;
        }
        catch (SQLException localSQLException)
        {
          for (;;)
          {
            am.a("Analytics - Unable to bind prepared statement values for updating the adjusted start time for timed action (%s)", new Object[] { localSQLException.getLocalizedMessage() });
            a(localSQLException);
          }
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        am.a("Analytics - Unable to adjust start times for timed actions (%s)", new Object[] { localException.getMessage() });
      }
    }
  }
  
  protected final void b()
  {
    f = "SELECT ID, STARTTIME, ADJSTARTTIME FROM TIMEDACTIONS WHERE NAME=?";
    h = "SELECT COUNT(*) FROM TIMEDACTIONS WHERE NAME=?";
    k = "SELECT KEY, VALUE FROM CONTEXTDATA WHERE ACTIONID=?";
    m = "SELECT COUNT(*) FROM CONTEXTDATA WHERE ACTIONID=? AND KEY=?";
    try
    {
      c = b.compileStatement("INSERT INTO TIMEDACTIONS (NAME, STARTTIME, ADJSTARTTIME) VALUES (@NAME, @START, @START)");
      d = b.compileStatement("UPDATE TIMEDACTIONS SET ADJSTARTTIME=ADJSTARTTIME+@DELTA WHERE ADJSTARTTIME!=0");
      e = b.compileStatement("UPDATE TIMEDACTIONS SET ADJSTARTTIME=0");
      g = b.compileStatement("DELETE FROM TIMEDACTIONS WHERE ID=@ID");
      i = b.compileStatement("INSERT INTO CONTEXTDATA(ACTIONID, KEY, VALUE) VALUES (@ACTIONID, @KEY, @VALUE)");
      j = b.compileStatement("UPDATE CONTEXTDATA SET VALUE=@VALUE WHERE ACTIONID=@ACTIONID AND KEY=@KEY");
      l = b.compileStatement("DELETE FROM CONTEXTDATA WHERE ACTIONID=@ACTIONID");
      return;
    }
    catch (SQLException localSQLException)
    {
      am.a("Analytics - unable to prepare the needed SQL statements for interacting with the timed actions database (%s)", new Object[] { localSQLException.getMessage() });
      return;
    }
    catch (Exception localException)
    {
      am.a("Analytics - Unknown error preparing sql statements (%s)", new Object[] { localException.getMessage() });
    }
  }
  
  protected final void d()
  {
    File localFile1 = new File(am.i() + "ADBMobileDataCache.sqliteADBMobileTimedActionsCache.sqlite");
    File localFile2 = new File(am.i(), "ADBMobileTimedActionsCache.sqlite");
    if ((localFile1.exists()) && (!localFile2.exists())) {}
    try
    {
      if (!localFile1.renameTo(localFile2)) {
        am.b("Analytics - Unable to migrate old Timed Actions db, creating new Timed Actions db (move file returned false)", new Object[0]);
      }
      return;
    }
    catch (Exception localException)
    {
      am.b("Analytics - Unable to migrate old Timed Actions db, creating new Timed Actions db (%s)", new Object[] { localException.getLocalizedMessage() });
    }
  }
  
  protected final void f()
  {
    try
    {
      synchronized (a)
      {
        try
        {
          e.execute();
          e.clearBindings();
          return;
        }
        catch (SQLException localSQLException)
        {
          for (;;)
          {
            am.a("Analytics - Unable to update adjusted time for timed actions after crash (%s)", new Object[] { localSQLException.getMessage() });
            a(localSQLException);
          }
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        am.a("Analytics - Unknown error clearing adjusted start times for timed actions (%s)", new Object[] { localException.getMessage() });
        a(localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */