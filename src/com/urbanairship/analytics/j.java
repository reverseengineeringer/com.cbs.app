package com.urbanairship.analytics;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.urbanairship.d.b;
import com.urbanairship.p;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

final class j
  extends b
{
  j()
  {
    super(p.h(), "ua_analytics.db", 1);
  }
  
  final int a()
  {
    Integer localInteger = null;
    Cursor localCursor = a("events", new String[] { "SUM(event_size) as _size" }, null, null, null, null);
    if (localCursor == null)
    {
      com.urbanairship.j.a("EventDataManager - Unable to query events database.");
      return -1;
    }
    if (localCursor.moveToFirst())
    {
      localInteger = Integer.valueOf(localCursor.getInt(0));
      localCursor.close();
    }
    if (localInteger == null) {
      return -1;
    }
    return localInteger.intValue();
  }
  
  protected final SQLiteStatement a(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    return paramSQLiteDatabase.compileStatement(a(paramString, new String[] { "type", "event_id", "data", "time", "session_id", "event_size" }));
  }
  
  final Map<String, String> a(int paramInt)
  {
    HashMap localHashMap = new HashMap(paramInt);
    Object localObject = "0, " + paramInt;
    localObject = a("events", new String[] { "event_id", "data" }, null, null, "_id ASC", (String)localObject);
    if (localObject == null) {
      return localHashMap;
    }
    ((Cursor)localObject).moveToFirst();
    while (!((Cursor)localObject).isAfterLast())
    {
      localHashMap.put(((Cursor)localObject).getString(0), ((Cursor)localObject).getString(1));
      ((Cursor)localObject).moveToNext();
    }
    ((Cursor)localObject).close();
    return localHashMap;
  }
  
  protected final void a(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,event_id TEXT,time INTEGER,data TEXT,session_id TEXT,event_size INTEGER);");
  }
  
  protected final void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    new StringBuilder("EventDataManager - Upgrading analytics database from version ").append(paramInt1).append(" to ").append(paramInt2).append(", which will destroy all old data");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS events");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,event_id TEXT,time INTEGER,data TEXT,session_id TEXT,event_size INTEGER);");
  }
  
  protected final void a(SQLiteStatement paramSQLiteStatement, ContentValues paramContentValues)
  {
    a(paramSQLiteStatement, 1, paramContentValues.getAsString("type"));
    a(paramSQLiteStatement, 2, paramContentValues.getAsString("event_id"));
    a(paramSQLiteStatement, 3, paramContentValues.getAsString("data"));
    paramSQLiteStatement.bindLong(4, paramContentValues.getAsInteger("time").intValue());
    a(paramSQLiteStatement, 5, paramContentValues.getAsString("session_id"));
    paramSQLiteStatement.bindLong(6, paramContentValues.getAsInteger("event_size").intValue());
  }
  
  final boolean a(Set<String> paramSet)
  {
    if ((paramSet == null) || (paramSet.size() == 0)) {
      return false;
    }
    int j = paramSet.size();
    Object localObject = new StringBuilder();
    int i = 0;
    while (i < j)
    {
      ((StringBuilder)localObject).append("?");
      if (i + 1 != j) {
        ((StringBuilder)localObject).append(", ");
      }
      i += 1;
    }
    localObject = ((StringBuilder)localObject).toString();
    return a("events", "event_id IN ( " + (String)localObject + " )", (String[])paramSet.toArray(new String[j])) > 0;
  }
  
  protected final void b(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS events");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,event_id TEXT,time INTEGER,data TEXT,session_id TEXT,event_size INTEGER);");
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */