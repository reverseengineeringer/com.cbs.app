package com.cbs.app.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.cbs.app.view.model.db.MyRecentVideo;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MyRecentVideoDataSource
{
  private SQLiteDatabase a;
  private CBSSqlHelper b;
  private String[] c = { "show_id", "cid", "med_time", "date_viewed", "id" };
  private boolean d = false;
  
  public MyRecentVideoDataSource(Context paramContext)
  {
    b = new CBSSqlHelper(paramContext);
  }
  
  private static MyRecentVideo a(Cursor paramCursor)
  {
    return new MyRecentVideo(Integer.valueOf(paramCursor.getInt(0)), paramCursor.getString(1), paramCursor.getLong(2), new Date(paramCursor.getLong(3)));
  }
  
  public final MyRecentVideo a(String paramString)
  {
    Object localObject = null;
    Cursor localCursor = a.query("my_recent_video", c, "cid = ?", new String[] { paramString }, null, null, "date_viewed DESC");
    new StringBuilder("cursor size: ").append(localCursor.getCount());
    paramString = (String)localObject;
    if (localCursor.moveToFirst())
    {
      paramString = a(localCursor);
      new StringBuilder("found ").append(paramString.getCid()).append(" ").append(paramString.getMedTime());
    }
    localCursor.close();
    return paramString;
  }
  
  public final void a()
  {
    a = b.getWritableDatabase();
    d = true;
  }
  
  public final void a(MyRecentVideo paramMyRecentVideo)
  {
    new StringBuilder("addMyRecentVideo: ").append(paramMyRecentVideo.getDateViewed());
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("show_id", paramMyRecentVideo.getShowId());
    localContentValues.put("cid", paramMyRecentVideo.getCid());
    localContentValues.put("date_viewed", Long.valueOf(paramMyRecentVideo.getDateViewed().getTime()));
    localContentValues.put("med_time", Long.valueOf(paramMyRecentVideo.getMedTime()));
    a.insert("my_recent_video", null, localContentValues);
  }
  
  public final void a(String paramString, long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramString;
    Cursor localCursor = a.query("my_recent_video", c, "cid = ?", arrayOfString, null, null, null);
    new StringBuilder("cursor size: ").append(localCursor.getCount());
    if (localCursor.moveToFirst())
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("med_time", Long.valueOf(paramLong));
      new StringBuilder("updating ").append(paramString).append(" ").append(localContentValues.get("med_time"));
      a.update("my_recent_video", localContentValues, "cid = ?", arrayOfString);
    }
    localCursor.close();
  }
  
  public final void b()
  {
    a.close();
    b.close();
    d = false;
  }
  
  public final int c()
  {
    return a.delete("my_recent_video", "1", null);
  }
  
  public List<MyRecentVideo> getAllMyRecentVideos()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = a.query("my_recent_video", c, null, null, null, null, "date_viewed DESC");
    if (localCursor.moveToFirst()) {
      while (!localCursor.isAfterLast())
      {
        new StringBuilder(" id: ").append(localCursor.getInt(4)).append(" cid: ").append(localCursor.getString(1)).append(" date22: ").append(new Date(localCursor.getLong(3)).toString());
        localArrayList.add(a(localCursor));
        localCursor.moveToNext();
      }
    }
    localCursor.close();
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.db.MyRecentVideoDataSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */