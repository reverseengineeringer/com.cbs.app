package com.cbs.app.view.fragments.show;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

final class LiveFeedFragment$2
  implements View.OnClickListener
{
  LiveFeedFragment$2(LiveFeedFragment paramLiveFeedFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.VIEW");
    paramView.setData(Uri.parse(LiveFeedFragment.f(a)));
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.LiveFeedFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */