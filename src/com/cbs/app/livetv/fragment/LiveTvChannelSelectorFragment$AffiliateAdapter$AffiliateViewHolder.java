package com.cbs.app.livetv.fragment;

import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.utils.ImageHelper;

public class LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder
  extends LiveTvChannelSelectorFragment.AffiliateAdapter.ViewHolder
{
  ImageView a;
  TextView b;
  TextView c;
  
  public LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder(LiveTvChannelSelectorFragment.AffiliateAdapter paramAffiliateAdapter, View paramView)
  {
    super(paramAffiliateAdapter, paramView);
    c = ((TextView)paramView.findViewById(2131690123));
    b = ((TextView)paramView.findViewById(2131690122));
    a = ((ImageView)paramView.findViewById(2131690121));
  }
  
  public final void a(Affiliate paramAffiliate)
  {
    if (paramAffiliate != null)
    {
      ImageHelper.a(ImageResizerUrl.a(paramAffiliate.getLogo(), cwidthPixels / (LiveTvChannelSelectorFragment.d() * 4)), a);
      c.setText(paramAffiliate.getAffiliateName());
      b.setText(paramAffiliate.getAffiliateStation());
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvChannelSelectorFragment.AffiliateAdapter.AffiliateViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */