package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.RecentTweetEndpointResponse;

public class CastTweetServiceImpl
  extends CBSBaseService
  implements CastTweetService
{
  private static final String b = CastTweetServiceImpl.class.getSimpleName();
  
  public final void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, "/cast/tweets/screenname/" + paramString + ".json", paramResponseModelListener, RecentTweetEndpointResponse.class);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.CastTweetServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */