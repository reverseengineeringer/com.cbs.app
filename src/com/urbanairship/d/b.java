package com.urbanairship.d;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.os.Build.VERSION;
import android.os.SystemClock;
import com.urbanairship.j;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public abstract class b
{
  private final SQLiteOpenHelper a;
  
  public b(Context paramContext, String paramString, int paramInt)
  {
    Object localObject = paramString;
    if (Build.VERSION.SDK_INT >= 21)
    {
      localObject = new File(paramContext.getNoBackupFilesDir(), "com.urbanairship.databases");
      File localFile2 = paramContext.getDatabasePath(paramString);
      File localFile1 = new File((File)localObject, paramString);
      if (!((File)localObject).exists()) {
        ((File)localObject).mkdirs();
      }
      if ((!localFile1.exists()) && (localFile2.exists()))
      {
        localFile2.renameTo(localFile1);
        localFile2 = paramContext.getDatabasePath(paramString + "-journal");
        if (localFile2.exists()) {
          localFile2.renameTo(new File((File)localObject, paramString + "-journal"));
        }
      }
      localObject = localFile1.getAbsolutePath();
    }
    a = new b.1(this, paramContext, (String)localObject, paramInt);
  }
  
  private SQLiteDatabase a()
  {
    int i = 0;
    while (i < 3) {
      try
      {
        SQLiteDatabase localSQLiteDatabase = a.getWritableDatabase();
        return localSQLiteDatabase;
      }
      catch (SQLiteException localSQLiteException)
      {
        SystemClock.sleep(100L);
        j.a("DataManager - Error opening writable database. Retrying...");
        i += 1;
      }
    }
    return null;
  }
  
  protected static String a(String paramString, String... paramVarArgs)
  {
    StringBuilder localStringBuilder1 = new StringBuilder(128);
    localStringBuilder1.append("INSERT INTO ");
    localStringBuilder1.append(paramString);
    localStringBuilder1.append(" (");
    StringBuilder localStringBuilder2 = new StringBuilder(128);
    localStringBuilder2.append("VALUES (");
    int i = 0;
    if (i < paramVarArgs.length)
    {
      localStringBuilder1.append("'");
      localStringBuilder1.append(paramVarArgs[i]);
      localStringBuilder1.append("'");
      localStringBuilder2.append("?");
      if (i == paramVarArgs.length - 1)
      {
        paramString = ") ";
        label100:
        localStringBuilder1.append(paramString);
        if (i != paramVarArgs.length - 1) {
          break label137;
        }
      }
      label137:
      for (paramString = ");";; paramString = ", ")
      {
        localStringBuilder2.append(paramString);
        i += 1;
        break;
        paramString = ", ";
        break label100;
      }
    }
    localStringBuilder1.append(localStringBuilder2);
    return localStringBuilder1.toString();
  }
  
  private static void a(SQLiteStatement paramSQLiteStatement, int paramInt, Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      paramSQLiteStatement.bindNull(paramInt);
      return;
    }
    if (paramBoolean.booleanValue()) {}
    for (long l = 1L;; l = 0L)
    {
      paramSQLiteStatement.bindLong(paramInt, l);
      return;
    }
  }
  
  protected static void a(SQLiteStatement paramSQLiteStatement, int paramInt, Boolean paramBoolean1, Boolean paramBoolean2)
  {
    if (paramBoolean1 == null)
    {
      a(paramSQLiteStatement, paramInt, paramBoolean2);
      return;
    }
    a(paramSQLiteStatement, paramInt, paramBoolean1);
  }
  
  protected static void a(SQLiteStatement paramSQLiteStatement, int paramInt, String paramString)
  {
    if (paramString == null)
    {
      paramSQLiteStatement.bindNull(paramInt);
      return;
    }
    paramSQLiteStatement.bindString(paramInt, paramString);
  }
  
  private boolean b(SQLiteStatement paramSQLiteStatement, ContentValues paramContentValues)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < 3) {}
      try
      {
        paramSQLiteStatement.clearBindings();
        a(paramSQLiteStatement, paramContentValues);
        paramSQLiteStatement.execute();
        bool1 = true;
        return bool1;
      }
      catch (Exception localException)
      {
        j.a("Unable to insert into database", localException);
        i += 1;
      }
    }
  }
  
  private SQLiteDatabase c()
  {
    int i = 0;
    while (i < 3) {
      try
      {
        SQLiteDatabase localSQLiteDatabase = a.getReadableDatabase();
        return localSQLiteDatabase;
      }
      catch (SQLiteException localSQLiteException)
      {
        SystemClock.sleep(100L);
        j.a("DataManager - Error opening readable database. Retrying...");
        i += 1;
      }
    }
    return null;
  }
  
  public final int a(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    SQLiteDatabase localSQLiteDatabase = a();
    if (localSQLiteDatabase == null) {}
    for (;;)
    {
      return -1;
      int i = 0;
      while (i < 3) {
        try
        {
          int j = localSQLiteDatabase.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
          return j;
        }
        catch (SQLException localSQLException)
        {
          j.a("Update Failed", localSQLException);
          i += 1;
        }
      }
    }
  }
  
  public final int a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "1";
    }
    paramString2 = a();
    if (paramString2 == null) {}
    for (;;)
    {
      return -1;
      int i = 0;
      while (i < 3) {
        try
        {
          int j = paramString2.delete(paramString1, str, paramArrayOfString);
          return j;
        }
        catch (Exception localException)
        {
          j.a("Unable to delete item from a database", localException);
          i += 1;
        }
      }
    }
  }
  
  public final long a(String paramString, ContentValues paramContentValues)
  {
    if (a() == null) {}
    for (;;)
    {
      return -1L;
      int i = 0;
      while (i < 3) {
        try
        {
          long l = a().replaceOrThrow(paramString, null, paramContentValues);
          return l;
        }
        catch (Exception localException)
        {
          j.a("Unable to insert into database", localException);
          i += 1;
        }
      }
    }
  }
  
  public final Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    if (localSQLiteDatabase == null) {
      return null;
    }
    int i = 0;
    while (i < 3) {
      try
      {
        Cursor localCursor = localSQLiteDatabase.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, null, null, paramString3, paramString4);
        return localCursor;
      }
      catch (SQLException localSQLException)
      {
        j.a("Query Failed", localSQLException);
        i += 1;
      }
    }
    return null;
  }
  
  protected abstract SQLiteStatement a(String paramString, SQLiteDatabase paramSQLiteDatabase);
  
  public final List<ContentValues> a(String paramString, ContentValues[] paramArrayOfContentValues)
  {
    SQLiteDatabase localSQLiteDatabase = a();
    ArrayList localArrayList = new ArrayList();
    if (localSQLiteDatabase == null) {
      return localArrayList;
    }
    localSQLiteDatabase.beginTransaction();
    paramString = a(paramString, localSQLiteDatabase);
    for (;;)
    {
      int i;
      try
      {
        int j = paramArrayOfContentValues.length;
        i = 0;
        if (i < j)
        {
          ContentValues localContentValues = paramArrayOfContentValues[i];
          if (b(paramString, localContentValues)) {
            localArrayList.add(localContentValues);
          }
        }
        else
        {
          if (!localArrayList.isEmpty()) {
            localSQLiteDatabase.setTransactionSuccessful();
          }
          return localArrayList;
        }
      }
      catch (Exception paramString)
      {
        j.a("Unable to insert into database", paramString);
        return localArrayList;
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
      i += 1;
    }
  }
  
  protected abstract void a(SQLiteDatabase paramSQLiteDatabase);
  
  protected void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  
  protected abstract void a(SQLiteStatement paramSQLiteStatement, ContentValues paramContentValues);
  
  public final void b()
  {
    try
    {
      a.close();
      return;
    }
    catch (Exception localException)
    {
      j.a("Failed to close the database.", localException);
    }
  }
  
  protected void b(SQLiteDatabase paramSQLiteDatabase)
  {
    throw new SQLiteException("Unable to downgrade database");
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */