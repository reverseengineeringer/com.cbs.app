package com.cbs.app.livetv.fragment;

import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.model.LiveTvChannel;
import com.cbs.app.livetv.widget.ContentFlipper;
import java.util.List;

final class LiveTvAvailableFragment$1
  extends SyncbakCallback
{
  LiveTvAvailableFragment$1(LiveTvAvailableFragment paramLiveTvAvailableFragment) {}
  
  public final void a(int paramInt, String paramString)
  {
    LiveTvAvailableFragment.c();
    new StringBuilder("onError() called with: errorCode = [").append(paramInt).append("], errorMessage = [").append(paramString).append("]");
    LiveTvAvailableFragment.a(a);
    LiveTvAvailableFragment.c(a).setDisplayedChild(2);
  }
  
  public final void b(List<LiveTvChannel> paramList)
  {
    LiveTvAvailableFragment.c();
    new StringBuilder("onAllSchedulesLoaded channels count = ").append(paramList);
    LiveTvAvailableFragment.a(a);
    if (!a.isAdded()) {
      return;
    }
    if (paramList != null)
    {
      LiveTvAvailableFragment.b(a).a();
      LiveTvAvailableFragment.b(a).a(paramList);
    }
    LiveTvAvailableFragment.c();
    new StringBuilder("onAllSchedulesLoaded: adapter count = ").append(LiveTvAvailableFragment.b(a).getItemCount());
    LiveTvAvailableFragment.c(a).setDisplayedChild(1);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvAvailableFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */