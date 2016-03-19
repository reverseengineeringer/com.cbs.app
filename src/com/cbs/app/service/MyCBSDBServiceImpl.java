package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.db.MyRecentVideoDataSource;
import com.cbs.app.view.model.db.MyRecentVideo;
import java.util.Date;

public class MyCBSDBServiceImpl
  implements MyCBSDBService
{
  private MyRecentVideoDataSource a;
  
  public final MyRecentVideo a(Context paramContext, String paramString)
  {
    MyRecentVideo localMyRecentVideo = null;
    if (paramContext != null)
    {
      a = new MyRecentVideoDataSource(paramContext);
      a.a();
      localMyRecentVideo = a.a(paramString);
      a.b();
    }
    return localMyRecentVideo;
  }
  
  public final void a(Context paramContext, long paramLong, String paramString, Date paramDate)
  {
    if (paramContext != null)
    {
      a = new MyRecentVideoDataSource(paramContext);
      a.a();
      a.a(new MyRecentVideo(Integer.valueOf((int)paramLong), paramString, paramDate));
      a.b();
    }
  }
  
  public final void a(Context paramContext, String paramString, long paramLong)
  {
    if (paramContext != null)
    {
      a = new MyRecentVideoDataSource(paramContext);
      a.a();
      new StringBuilder("updating: ").append(paramString).append(" to ").append(paramLong);
      a.a(paramString, paramLong);
      a.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.MyCBSDBServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */