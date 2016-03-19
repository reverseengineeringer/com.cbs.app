package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.DeviceHome;

public abstract interface HomeService
  extends Service
{
  public abstract void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
  
  public abstract DeviceHome[] getHomePhotoData();
}

/* Location:
 * Qualified Name:     com.cbs.app.service.HomeService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */