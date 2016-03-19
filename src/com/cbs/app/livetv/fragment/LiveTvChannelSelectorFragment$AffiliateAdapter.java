package com.cbs.app.livetv.fragment;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.livetv.widget.ArrayListAdapter;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.utils.ImageHelper;

public class LiveTvChannelSelectorFragment$AffiliateAdapter
  extends ArrayListAdapter<Affiliate, ViewHolder>
{
  public LiveTvChannelSelectorFragment$AffiliateAdapter(LiveTvChannelSelectorFragment paramLiveTvChannelSelectorFragment) {}
  
  public int getItemViewType(int paramInt)
  {
    return 0;
  }
  
  public class AffiliateViewHolder
    extends LiveTvChannelSelectorFragment.AffiliateAdapter.ViewHolder
  {
    ImageView a;
    TextView b;
    TextView c;
    
    public AffiliateViewHolder(View paramView)
    {
      super(paramView);
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
  
  public abstract class ViewHolder
    extends RecyclerView.ViewHolder
  {
    public ViewHolder(View paramView)
    {
      super();
    }
    
    public abstract void a(Affiliate paramAffiliate);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvChannelSelectorFragment.AffiliateAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */