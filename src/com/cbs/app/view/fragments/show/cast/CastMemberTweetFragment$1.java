package com.cbs.app.view.fragments.show.cast;

import android.util.Log;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.RecentTweet;
import com.cbs.app.view.model.rest.RecentTweetEndpointResponse;
import java.util.List;

final class CastMemberTweetFragment$1
  implements ResponseModelListener
{
  CastMemberTweetFragment$1(CastMemberTweetFragment paramCastMemberTweetFragment) {}
  
  public final void a()
  {
    Log.e(CastMemberTweetFragment.g(), "fail");
    CastMemberTweetFragment.f();
    a.h = true;
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    Log.e(CastMemberTweetFragment.g(), "success");
    if ((paramResponseModel instanceof RecentTweetEndpointResponse))
    {
      paramResponseModel = (RecentTweetEndpointResponse)paramResponseModel;
      if (paramResponseModel.getRecentTweetList() == null) {
        break label76;
      }
      CastMemberTweetFragment.a(a, (RecentTweet[])paramResponseModel.getRecentTweetList().toArray(new RecentTweet[paramResponseModel.getRecentTweetList().size()]));
    }
    for (;;)
    {
      a.h = true;
      a.e();
      return;
      label76:
      CastMemberTweetFragment.a(a, new RecentTweet[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastMemberTweetFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */