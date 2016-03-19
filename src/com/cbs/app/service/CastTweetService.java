package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModelListener;

public abstract interface CastTweetService
  extends Service
{
  public abstract void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener);
}

/* Location:
 * Qualified Name:     com.cbs.app.service.CastTweetService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */