package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.view.model.db.MyRecentVideo;
import java.util.Date;

public abstract interface MyCBSDBService
{
  public abstract MyRecentVideo a(Context paramContext, String paramString);
  
  public abstract void a(Context paramContext, long paramLong, String paramString, Date paramDate);
  
  public abstract void a(Context paramContext, String paramString, long paramLong);
}

/* Location:
 * Qualified Name:     com.cbs.app.service.MyCBSDBService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */