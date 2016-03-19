package com.cbs.app.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.model.DeviceCast;

final class CastTweetAdapter$3
  implements View.OnClickListener
{
  CastTweetAdapter$3(CastTweetAdapter paramCastTweetAdapter, long paramLong) {}
  
  public final void onClick(View paramView)
  {
    CastTweetAdapter.a(b).a(new TweetOperation(a, CastTweetAdapter.b(b).getTwitterScreenName(), ""));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.CastTweetAdapter.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */