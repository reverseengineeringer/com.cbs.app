package com.cbs.app.livetv.fragment;

import android.os.Bundle;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.widget.RecyclerItemClickListener.OnItemClickListener;
import com.cbs.app.view.model.Affiliate;

final class LiveTvChannelSelectorFragment$2
  extends RecyclerItemClickListener.OnItemClickListener
{
  LiveTvChannelSelectorFragment$2(LiveTvChannelSelectorFragment paramLiveTvChannelSelectorFragment) {}
  
  public final void a(int paramInt)
  {
    Bundle localBundle = new Bundle();
    Affiliate localAffiliate = (Affiliate)LiveTvChannelSelectorFragment.c(a).a(paramInt);
    localBundle.putParcelable("ARG_CHANNEL", LiveTvChannelSelectorFragment.a(a, localAffiliate.getAffiliateStation()));
    localBundle.putParcelable("ARG_AFFILIATE", localAffiliate);
    LiveTvChannelSelectorFragment.b(a).a(1114, localBundle);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvChannelSelectorFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */