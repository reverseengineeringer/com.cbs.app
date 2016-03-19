package com.adobe.mobile;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;

abstract class a
{
  protected final Object a = new Object();
  protected SQLiteDatabase b;
  private File c = null;
  
  private void e()
  {
    try
    {
      b = SQLiteDatabase.openDatabase(c.getPath(), null, 268435472);
      return;
    }
    catch (SQLException localSQLException)
    {
      am.a("Analytics - Unable to open database(%s).", new Object[] { localSQLException.getLocalizedMessage() });
    }
  }
  
  protected abstract void a();
  
  protected final void a(File arg1)
  {
    c = ???;
    synchronized (a)
    {
      d();
      e();
      if (b != null)
      {
        a();
        b();
      }
      return;
    }
  }
  
  protected final void a(Exception arg1)
  {
    am.a("Analytics - Database in unrecoverable state(%s), resetting.", new Object[] { ???.getLocalizedMessage() });
    synchronized (a)
    {
      if (!c.delete())
      {
        am.c("Analytics - Database file(%s) was not found.", new Object[] { c.getAbsolutePath() });
        e();
        a();
        b();
        c();
        return;
      }
      am.c("Analytics - Database file(%s) was corrupt and had to be deleted.", new Object[] { c.getAbsolutePath() });
    }
  }
  
  protected abstract void b();
  
  protected void c() {}
  
  protected void d() {}
  
  protected static final class a
    extends Exception
  {
    public a(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */