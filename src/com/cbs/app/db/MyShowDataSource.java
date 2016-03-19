package com.cbs.app.db;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.cbs.app.view.model.db.MyShow;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MyShowDataSource
{
  private SQLiteDatabase a;
  private CBSSqlHelper b;
  private String[] c = { "show_id", "date_added" };
  private boolean d = false;
  
  public MyShowDataSource(Context paramContext)
  {
    b = new CBSSqlHelper(paramContext);
  }
  
  public final void a()
  {
    a = b.getWritableDatabase();
    d = true;
  }
  
  public final boolean a(long paramLong)
  {
    Object localObject = a;
    String str = Long.valueOf(paramLong).toString();
    localObject = ((SQLiteDatabase)localObject).query("my_show", new String[] { "show_id" }, "show_id  = ?", new String[] { str }, null, null, null);
    if ((localObject != null) && (((Cursor)localObject).moveToFirst()))
    {
      ((Cursor)localObject).getInt(0);
      return true;
    }
    return false;
  }
  
  public final void b()
  {
    b.close();
    d = false;
  }
  
  public List<MyShow> getAllShows()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = a.query("my_show", c, null, null, null, null, "show_id");
    if (localCursor.moveToFirst()) {
      while (!localCursor.isAfterLast())
      {
        localArrayList.add(new MyShow(Integer.valueOf(localCursor.getInt(0)), new Date(localCursor.getLong(1))));
        localCursor.moveToNext();
      }
    }
    localCursor.close();
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.db.MyShowDataSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */