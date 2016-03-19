package com.cbs.app.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class CBSSqlHelper
  extends SQLiteOpenHelper
{
  public static final String a = CBSSqlHelper.class.getSimpleName();
  
  public CBSSqlHelper(Context paramContext)
  {
    super(paramContext, "cbs_db", null, 2);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table IF NOT EXISTS my_recent_video (id integer primary key AUTOINCREMENT not null, cid text not null, show_id integer not null, med_time numeric, date_viewed numeric not null );");
    paramSQLiteDatabase.execSQL("create table IF NOT EXISTS my_show (show_id integer primary key not null, date_added numeric not null );");
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    super.onOpen(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 1) && (paramInt2 == 2)) {}
    try
    {
      paramSQLiteDatabase.execSQL("ALTER TABLE my_recent_video ADD COLUMN med_time numeric");
      return;
    }
    catch (SQLiteException paramSQLiteDatabase)
    {
      Log.e(a, "exception: " + paramSQLiteDatabase.getLocalizedMessage(), paramSQLiteDatabase);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.db.CBSSqlHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */