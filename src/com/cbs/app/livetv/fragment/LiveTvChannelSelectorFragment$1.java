package com.cbs.app.livetv.fragment;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Pair;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import java.util.Iterator;
import java.util.List;

final class LiveTvChannelSelectorFragment$1
  extends SyncbakCallback
{
  LiveTvChannelSelectorFragment$1(LiveTvChannelSelectorFragment paramLiveTvChannelSelectorFragment) {}
  
  public final void a(int paramInt, String paramString)
  {
    if (!a.isAdded()) {
      return;
    }
    LiveTvChannelSelectorFragment.a(a);
    LiveTvChannelSelectorFragment.d(a).setDisplayedChild(2);
  }
  
  public final void a(List<Pair<SyncbakChannel, Affiliate>> paramList)
  {
    LiveTvChannelSelectorFragment.a(a);
    LiveTvChannelSelectorFragment.a(a, paramList);
    if (!a.isAdded()) {
      return;
    }
    if (paramList != null)
    {
      Object localObject;
      if (paramList.size() == 1)
      {
        localObject = new Bundle();
        ((Bundle)localObject).putParcelable("ARG_CHANNEL", (Parcelable)get0first);
        ((Bundle)localObject).putParcelable("ARG_AFFILIATE", (Parcelable)get0second);
        LiveTvChannelSelectorFragment.b(a).a(1113, localObject);
        return;
      }
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject = (Pair)paramList.next();
        LiveTvChannelSelectorFragment.b();
        new StringBuilder("@@@@ onChannelsLoaded: channel  ").append(first);
        localObject = (Affiliate)second;
        LiveTvChannelSelectorFragment.c(a).a(localObject);
      }
      LiveTvChannelSelectorFragment.d(a).setDisplayedChild(1);
      return;
    }
    LiveTvChannelSelectorFragment.d(a).setDisplayedChild(2);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvChannelSelectorFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */