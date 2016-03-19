package com.cbs.app.livetv.fragment;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.controllers.SyncbakController;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.livetv.widget.ArrayListAdapter;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.livetv.widget.GridSpacingItemDecoration;
import com.cbs.app.livetv.widget.LiveTvContentFlipper;
import com.cbs.app.livetv.widget.RecyclerItemClickListener;
import com.cbs.app.livetv.widget.RecyclerItemClickListener.OnItemClickListener;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.utils.ImageHelper;
import java.util.Iterator;
import java.util.List;

public class LiveTvChannelSelectorFragment
  extends Fragment
{
  private static final String a = LiveTvChannelSelectorFragment.class.getSimpleName();
  private static DisplayMetrics b;
  private static int c;
  private SyncbakController d;
  private BaseFragmentCallBack e;
  private RecyclerView f;
  private AffiliateAdapter g;
  private GridSpacingItemDecoration h;
  private int i;
  private List<Pair<SyncbakChannel, Affiliate>> j;
  private LiveTvContentFlipper k;
  private Context l;
  private boolean m;
  
  public static LiveTvChannelSelectorFragment a()
  {
    return new LiveTvChannelSelectorFragment();
  }
  
  private void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    k.setContentView(paramLayoutInflater.inflate(2130903162, paramViewGroup, false));
    paramLayoutInflater = k;
    c = getResources().getInteger(2131492864);
    k.setDisplayedChild(0);
    f = ((RecyclerView)paramLayoutInflater.findViewById(2131689969));
    f.setLayoutManager(new GridLayoutManager(l, c, 1, false));
    h = new GridSpacingItemDecoration(c, i);
    f.addItemDecoration(h);
    f.setAdapter(g);
    f.addOnItemTouchListener(new RecyclerItemClickListener(getActivity(), new RecyclerItemClickListener.OnItemClickListener()
    {
      public final void a(int paramAnonymousInt)
      {
        Bundle localBundle = new Bundle();
        Affiliate localAffiliate = (Affiliate)LiveTvChannelSelectorFragment.c(LiveTvChannelSelectorFragment.this).a(paramAnonymousInt);
        localBundle.putParcelable("ARG_CHANNEL", LiveTvChannelSelectorFragment.a(LiveTvChannelSelectorFragment.this, localAffiliate.getAffiliateStation()));
        localBundle.putParcelable("ARG_AFFILIATE", localAffiliate);
        LiveTvChannelSelectorFragment.b(LiveTvChannelSelectorFragment.this).a(1114, localBundle);
      }
    }));
    if (!m)
    {
      m = true;
      if ((g != null) && (g.getItemCount() <= 0)) {
        d.h();
      }
    }
    else
    {
      return;
    }
    m = false;
    k.setDisplayedChild(1);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a((LayoutInflater)getActivity().getSystemService("layout_inflater"), (ViewGroup)getView());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = getResources().getDisplayMetrics();
    l = getContext();
    g = new AffiliateAdapter();
    i = getResources().getDimensionPixelOffset(2131362001);
    d = new SyncbakController(l);
    d.a(new SyncbakCallback()
    {
      public final void a(int paramAnonymousInt, String paramAnonymousString)
      {
        if (!isAdded()) {
          return;
        }
        LiveTvChannelSelectorFragment.a(LiveTvChannelSelectorFragment.this);
        LiveTvChannelSelectorFragment.d(LiveTvChannelSelectorFragment.this).setDisplayedChild(2);
      }
      
      public final void a(List<Pair<SyncbakChannel, Affiliate>> paramAnonymousList)
      {
        LiveTvChannelSelectorFragment.a(LiveTvChannelSelectorFragment.this);
        LiveTvChannelSelectorFragment.a(LiveTvChannelSelectorFragment.this, paramAnonymousList);
        if (!isAdded()) {
          return;
        }
        if (paramAnonymousList != null)
        {
          Object localObject;
          if (paramAnonymousList.size() == 1)
          {
            localObject = new Bundle();
            ((Bundle)localObject).putParcelable("ARG_CHANNEL", (Parcelable)get0first);
            ((Bundle)localObject).putParcelable("ARG_AFFILIATE", (Parcelable)get0second);
            LiveTvChannelSelectorFragment.b(LiveTvChannelSelectorFragment.this).a(1113, localObject);
            return;
          }
          paramAnonymousList = paramAnonymousList.iterator();
          while (paramAnonymousList.hasNext())
          {
            localObject = (Pair)paramAnonymousList.next();
            LiveTvChannelSelectorFragment.b();
            new StringBuilder("@@@@ onChannelsLoaded: channel  ").append(first);
            localObject = (Affiliate)second;
            LiveTvChannelSelectorFragment.c(LiveTvChannelSelectorFragment.this).a(localObject);
          }
          LiveTvChannelSelectorFragment.d(LiveTvChannelSelectorFragment.this).setDisplayedChild(1);
          return;
        }
        LiveTvChannelSelectorFragment.d(LiveTvChannelSelectorFragment.this).setDisplayedChild(2);
      }
    });
    try
    {
      e = ((BaseFragmentCallBack)getParentFragment());
      return;
    }
    catch (Exception paramBundle)
    {
      throw new ClassCastException("must implement BaseFragmentCallBack");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    k = new LiveTvContentFlipper(l);
    a(paramLayoutInflater, paramViewGroup);
    return k;
  }
  
  public void onDestroy()
  {
    e = null;
    d.c();
    super.onDestroy();
  }
  
  public class AffiliateAdapter
    extends ArrayListAdapter<Affiliate, ViewHolder>
  {
    public AffiliateAdapter() {}
    
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
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvChannelSelectorFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */