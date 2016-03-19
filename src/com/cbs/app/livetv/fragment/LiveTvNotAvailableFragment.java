package com.cbs.app.livetv.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.model.UserStatusEnum;
import com.cbs.app.livetv.widget.ArrayListAdapter;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.livetv.widget.GridSpacingItemDecoration;
import com.cbs.app.livetv.widget.LiveTvContentFlipper;
import com.cbs.app.livetv.widget.RecyclerItemClickListener;
import com.cbs.app.livetv.widget.RecyclerItemClickListener.OnItemClickListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.VideoUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

public class LiveTvNotAvailableFragment
  extends UpSellDataFragment
{
  private static final String a = LiveTvNotAvailableFragment.class.getSimpleName();
  private static DisplayMetrics b;
  private static int c;
  private LiveTvContentFlipper d;
  private BaseFragmentCallBack e;
  private ArrayList<VideoData> f = new ArrayList();
  private Context g;
  private SimpleDateFormat h;
  private ResponseModelListener i = new ResponseModelListener()
  {
    public final void a()
    {
      LiveTvNotAvailableFragment.b();
      LiveTvNotAvailableFragment.a(LiveTvNotAvailableFragment.this).setDisplayedChild(2);
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      if (!isAdded()) {}
      do
      {
        do
        {
          return;
          LiveTvNotAvailableFragment.a(LiveTvNotAvailableFragment.this).setDisplayedChild(1);
          LiveTvNotAvailableFragment.b();
        } while ((LiveTvNotAvailableFragment.b(LiveTvNotAvailableFragment.this) == null) || (LiveTvNotAvailableFragment.b(LiveTvNotAvailableFragment.this).getItemCount() == LiveTvNotAvailableFragment.c()) || (LiveTvNotAvailableFragment.c(LiveTvNotAvailableFragment.this) == null) || (((Activity)LiveTvNotAvailableFragment.c(LiveTvNotAvailableFragment.this)).isFinishing()) || (!(paramAnonymousResponseModel instanceof VideoEndpointResponse)));
        paramAnonymousResponseModel = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
      } while ((paramAnonymousResponseModel == null) || (paramAnonymousResponseModel.size() <= 0));
      LiveTvNotAvailableFragment.b();
      new StringBuilder("video size2: ").append(paramAnonymousResponseModel.size());
      LiveTvNotAvailableFragment.a(LiveTvNotAvailableFragment.this, paramAnonymousResponseModel);
    }
  };
  private MVPDConfig j;
  private int k;
  private RecyclerView l;
  private GridSpacingItemDecoration m;
  private UpsellVideoAdapter n;
  
  public static LiveTvNotAvailableFragment a(MVPDConfig paramMVPDConfig)
  {
    new StringBuilder("newInstance() called with: mvpdConfig = [").append(paramMVPDConfig).append("]");
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("mvpd", paramMVPDConfig);
    paramMVPDConfig = new LiveTvNotAvailableFragment();
    paramMVPDConfig.setArguments(localBundle);
    return paramMVPDConfig;
  }
  
  private void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    c = getResources().getInteger(2131492868);
    k = getResources().getDimensionPixelOffset(2131362060);
    d.setContentView(paramLayoutInflater.inflate(2130903165, paramViewGroup, false));
    d.setDisplayedChild(0);
    paramLayoutInflater = d;
    new ShowServiceImpl().a(g, i);
    l = ((RecyclerView)paramLayoutInflater.findViewById(2131689985));
    l.setLayoutManager(new CustomGridLayoutManager(getActivity(), c));
    m = new GridSpacingItemDecoration(c, k);
    l.addItemDecoration(m);
    l.setAdapter(n);
    l.addOnItemTouchListener(new RecyclerItemClickListener(getActivity(), new RecyclerItemClickListener.OnItemClickListener()
    {
      public final void a(int paramAnonymousInt)
      {
        LiveTvNotAvailableFragment.e(LiveTvNotAvailableFragment.this).a(1110, LiveTvNotAvailableFragment.d(LiveTvNotAvailableFragment.this).get(paramAnonymousInt));
      }
    }));
    paramViewGroup = (Button)paramLayoutInflater.findViewById(2131689987);
    paramViewGroup.setVisibility(8);
    paramViewGroup.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LiveTvNotAvailableFragment.f(LiveTvNotAvailableFragment.this);
      }
    });
    TextView localTextView = (TextView)paramLayoutInflater.findViewById(2131689986);
    if (AuthStatusManager.getStatusEnum() != UserStatusEnum.a)
    {
      paramViewGroup.setVisibility(8);
      localTextView.setVisibility(8);
    }
    for (;;)
    {
      ((Button)paramLayoutInflater.findViewById(2131689988).findViewById(2131690098)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          LiveTvNotAvailableFragment.g(LiveTvNotAvailableFragment.this);
        }
      });
      return;
      paramViewGroup.setVisibility(0);
      localTextView.setVisibility(0);
    }
  }
  
  protected final void a() {}
  
  protected final void a(UpsellEndpointResponse paramUpsellEndpointResponse)
  {
    paramUpsellEndpointResponse = paramUpsellEndpointResponse.getUpsellInfoforActionTarget("android_content_6");
    if (paramUpsellEndpointResponse != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString(LiveTvWebFragment.a, paramUpsellEndpointResponse.getCallToActionURL());
      localBundle.putInt("ARG_TRACKING_TYPE", 0);
      e.a(1105, localBundle);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a((LayoutInflater)getActivity().getSystemService("layout_inflater"), (ViewGroup)getView());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    g = getContext();
    h = new SimpleDateFormat("MM/dd/yyyy");
    n = new UpsellVideoAdapter();
    b = getResources().getDisplayMetrics();
    j = ((MVPDConfig)getArguments().getParcelable("mvpd"));
    paramBundle = new HashMap();
    paramBundle.put("pageTitle", "live-tv|provider|local cbs unavailable");
    paramBundle.put("evar_6", "liveTV|provider|unavailable");
    paramBundle.put("evar_10", "provider_unavailable");
    paramBundle.put("pageView", Boolean.TRUE.toString());
    AnalyticsManager.a(getActivity(), Action.cU, paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    d = new LiveTvContentFlipper(getActivity());
    a(paramLayoutInflater, paramViewGroup);
    return d;
  }
  
  public void setListener(BaseFragmentCallBack paramBaseFragmentCallBack)
  {
    e = paramBaseFragmentCallBack;
  }
  
  public class CustomGridLayoutManager
    extends GridLayoutManager
  {
    private int[] b = new int[2];
    
    public CustomGridLayoutManager(Context paramContext, int paramInt)
    {
      super(paramInt, 1, false);
    }
    
    public void onMeasure(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2)
    {
      int i1 = View.MeasureSpec.getMode(paramInt1);
      int n = View.MeasureSpec.getMode(paramInt2);
      int m = View.MeasureSpec.getSize(paramInt1);
      int k = View.MeasureSpec.getSize(paramInt2);
      paramInt2 = 0;
      paramInt1 = 0;
      int j = 0;
      if (j < getItemCount())
      {
        int i = View.MeasureSpec.makeMeasureSpec(j, 0);
        int i2 = View.MeasureSpec.makeMeasureSpec(j, 0);
        paramState = b;
        View localView = paramRecycler.getViewForPosition(j);
        if (localView != null)
        {
          RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
          localView.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), width), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), height));
          paramState[0] = (localView.getMeasuredWidth() + leftMargin + rightMargin);
          i = localView.getMeasuredHeight();
          i2 = bottomMargin;
          paramState[1] = (topMargin + (i + i2));
          paramRecycler.recycleView(localView);
        }
        if (getOrientation() == 0)
        {
          i = paramInt2;
          if (j % getSpanCount() == 0) {
            i = paramInt2 + b[0];
          }
          paramInt2 = i;
          if (j == 0)
          {
            paramInt1 = b[1];
            paramInt2 = i;
          }
        }
        for (;;)
        {
          j += 1;
          break;
          i = paramInt1;
          if (j % getSpanCount() == 0) {
            i = paramInt1 + b[1];
          }
          paramInt1 = i;
          if (j == 0)
          {
            paramInt2 = b[0];
            paramInt1 = i;
          }
        }
      }
      switch (i1)
      {
      default: 
        switch (n)
        {
        }
        break;
      }
      for (;;)
      {
        setMeasuredDimension(paramInt2, paramInt1);
        return;
        paramInt2 = m;
        break;
        paramInt1 = k;
      }
    }
  }
  
  public class UpsellVideoAdapter
    extends ArrayListAdapter<VideoData, ViewHolder>
  {
    public UpsellVideoAdapter() {}
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public class UpsellVideoViewHolder
      extends LiveTvNotAvailableFragment.UpsellVideoAdapter.ViewHolder
    {
      ImageView a;
      TextView b;
      TextView c;
      
      public UpsellVideoViewHolder(View paramView)
      {
        super(paramView);
        c = ((TextView)paramView.findViewById(2131690140));
        b = ((TextView)paramView.findViewById(2131690139));
        a = ((ImageView)paramView.findViewById(2131690138));
      }
      
      public final void a(VideoData paramVideoData)
      {
        if (paramVideoData != null)
        {
          ImageHelper.a(ImageHelper.a(VideoUtil.d(paramVideoData), dwidthPixels / LiveTvNotAvailableFragment.c()), a);
          c.setText(getString(2131231080, new Object[] { Integer.valueOf(paramVideoData.getSeasonNum()), paramVideoData.getEpisodeNum() }) + " " + LiveTvNotAvailableFragment.h(LiveTvNotAvailableFragment.this).format(new Date(paramVideoData.getAirDate())));
          b.setText(paramVideoData.getSeriesTitle());
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
      
      public abstract void a(VideoData paramVideoData);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvNotAvailableFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */