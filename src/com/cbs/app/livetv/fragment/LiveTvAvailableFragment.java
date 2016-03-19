package com.cbs.app.livetv.fragment;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.SpannableStringBuilder;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.controllers.SyncbakController;
import com.cbs.app.livetv.model.LiveTvChannel;
import com.cbs.app.livetv.model.UserStatusEnum;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.livetv.widget.CustomTypefaceSpan;
import com.cbs.app.livetv.widget.HeaderFooterArrayListAdapter;
import com.cbs.app.livetv.widget.LiveTvContentFlipper;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.model.syncbak.SyncbakSchedule;
import com.cbs.app.view.utils.ImageHelper;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class LiveTvAvailableFragment
  extends UpSellDataFragment
{
  private static final String b = LiveTvAvailableFragment.class.getSimpleName();
  private static DisplayMetrics c;
  SyncbakController a;
  private ScheduleAdapter d;
  private LiveTvContentFlipper e;
  private BaseFragmentCallBack f;
  private boolean g = false;
  private Button h;
  private View i;
  private RecyclerView j;
  
  private void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    e.setContentView(paramLayoutInflater.inflate(2130903161, paramViewGroup, false));
    a = new SyncbakController(getActivity());
    a.a(new SyncbakCallback()
    {
      public final void a(int paramAnonymousInt, String paramAnonymousString)
      {
        LiveTvAvailableFragment.c();
        new StringBuilder("onError() called with: errorCode = [").append(paramAnonymousInt).append("], errorMessage = [").append(paramAnonymousString).append("]");
        LiveTvAvailableFragment.a(LiveTvAvailableFragment.this);
        LiveTvAvailableFragment.c(LiveTvAvailableFragment.this).setDisplayedChild(2);
      }
      
      public final void b(List<LiveTvChannel> paramAnonymousList)
      {
        LiveTvAvailableFragment.c();
        new StringBuilder("onAllSchedulesLoaded channels count = ").append(paramAnonymousList);
        LiveTvAvailableFragment.a(LiveTvAvailableFragment.this);
        if (!isAdded()) {
          return;
        }
        if (paramAnonymousList != null)
        {
          LiveTvAvailableFragment.b(LiveTvAvailableFragment.this).a();
          LiveTvAvailableFragment.b(LiveTvAvailableFragment.this).a(paramAnonymousList);
        }
        LiveTvAvailableFragment.c();
        new StringBuilder("onAllSchedulesLoaded: adapter count = ").append(LiveTvAvailableFragment.b(LiveTvAvailableFragment.this).getItemCount());
        LiveTvAvailableFragment.c(LiveTvAvailableFragment.this).setDisplayedChild(1);
      }
    });
    e.setDisplayedChild(0);
    if ((i != null) && (i.getParent() != null)) {
      j.removeView(i);
    }
    j = ((RecyclerView)e.findViewById(2131689967));
    j.setLayoutManager(new LinearLayoutManager(getActivity()));
    j.setAdapter(d);
    if (i == null)
    {
      i = paramLayoutInflater.inflate(2130903192, j, false);
      paramLayoutInflater = (TextView)i.findViewById(2131689997);
      paramViewGroup = new SpannableStringBuilder(getString(2131231335).toUpperCase());
      paramViewGroup.setSpan(new CustomTypefaceSpan(Typeface.createFromAsset(getResources().getAssets(), "fonts/Roboto-Bold.ttf")), 0, paramViewGroup.length(), 33);
      paramViewGroup.append(" " + getString(2131231208).toUpperCase());
      paramLayoutInflater.setText(paramViewGroup);
      h = ((Button)i.findViewById(2131690003));
      paramLayoutInflater = (Button)i.findViewById(2131689998);
      paramViewGroup = (TextView)i.findViewById(2131690090);
      TextView localTextView = (TextView)i.findViewById(2131690091);
      paramViewGroup.setVisibility(8);
      localTextView.setVisibility(8);
      h.setVisibility(8);
      if (!AuthStatusManager.d()) {
        break label394;
      }
      paramViewGroup.setVisibility(0);
      localTextView.setVisibility(0);
    }
    for (;;)
    {
      d.a(i);
      paramLayoutInflater.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          LiveTvAvailableFragment.d(LiveTvAvailableFragment.this);
        }
      });
      if ((d.getItemCount() > d.getHeaderCount()) || (g)) {
        break;
      }
      g = true;
      a.g();
      return;
      label394:
      h.setVisibility(0);
      e();
    }
    e.setDisplayedChild(1);
  }
  
  public static LiveTvAvailableFragment b()
  {
    return new LiveTvAvailableFragment();
  }
  
  protected final void a()
  {
    e.setDisplayedChild(2);
  }
  
  protected final void a(UpsellEndpointResponse paramUpsellEndpointResponse)
  {
    paramUpsellEndpointResponse = paramUpsellEndpointResponse.getUpsellInfoforActionTarget("android_content_7");
    if (paramUpsellEndpointResponse != null)
    {
      final UserStatusEnum localUserStatusEnum = AuthStatusManager.getStatusEnum();
      final String str = paramUpsellEndpointResponse.getProductID();
      h.setText(paramUpsellEndpointResponse.getCallToAction());
      h.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          LiveTvAvailableFragment.a(LiveTvAvailableFragment.this, str, localUserStatusEnum);
        }
      });
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a((LayoutInflater)getActivity().getSystemService("layout_inflater"), (ViewGroup)getView());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    new StringBuilder("onCreate() called with: savedInstanceState = [").append(paramBundle).append("]");
    super.onCreate(paramBundle);
    c = getResources().getDisplayMetrics();
    d = new ScheduleAdapter(getActivity());
    try
    {
      f = ((BaseFragmentCallBack)getParentFragment());
      if (f == null) {
        f = ((BaseFragmentCallBack)getActivity());
      }
      paramBundle = new HashMap();
      paramBundle.put("events", "event85");
      paramBundle.put("pageTitle", "|live tv|live-tv avaialble|modal");
      paramBundle.put("evar_6", "liveTV|upsell|available modal");
      paramBundle.put("evar_10", "livetv_available");
      paramBundle.put("pageView", Boolean.TRUE.toString());
      AnalyticsManager.a(getActivity(), Action.cu, paramBundle);
      return;
    }
    catch (Exception paramBundle)
    {
      throw new ClassCastException("must implement BaseFragmentCallBack");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    e = new LiveTvContentFlipper(getActivity());
    a(paramLayoutInflater, paramViewGroup);
    return e;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a.c();
    f = null;
  }
  
  public class ScheduleAdapter
    extends HeaderFooterArrayListAdapter<LiveTvChannel, ViewHolder>
  {
    protected Context a;
    private final SimpleDateFormat f = new SimpleDateFormat("h:mma", Locale.US);
    
    public ScheduleAdapter(Context paramContext)
    {
      a = paramContext;
    }
    
    public class ScheduleViewHolder
      extends LiveTvAvailableFragment.ScheduleAdapter.ViewHolder
    {
      TextView a;
      ImageView b;
      LinearLayout c;
      
      public ScheduleViewHolder(View paramView)
      {
        super(paramView);
        a = ((TextView)paramView.findViewById(2131690126));
        b = ((ImageView)paramView.findViewById(2131690121));
        c = ((LinearLayout)paramView.findViewById(2131690127));
      }
      
      public final void a(LiveTvChannel paramLiveTvChannel)
      {
        LiveTvAvailableFragment.c();
        new StringBuilder("bind() called with: item = [").append(paramLiveTvChannel).append("]");
        if (paramLiveTvChannel != null)
        {
          a.setText(paramLiveTvChannel.getAffiliate().getAffiliateStation());
          ImageHelper.a(ImageResizerUrl.a(paramLiveTvChannel.getAffiliate().getSmallLogoSelected(), dwidthPixels / 3), b);
          if ((paramLiveTvChannel.getPrograms() != null) && (paramLiveTvChannel.getPrograms().size() > 0))
          {
            c.removeAllViews();
            int i = 0;
            if (i < paramLiveTvChannel.getPrograms().size())
            {
              LinearLayout localLinearLayout = c;
              SyncbakSchedule localSyncbakSchedule = (SyncbakSchedule)paramLiveTvChannel.getPrograms().get(i);
              LiveTvAvailableFragment.c();
              new StringBuilder("createProgramView() called with: position = [").append(i).append("], program = [").append(localSyncbakSchedule).append("]");
              View localView = LayoutInflater.from(a).inflate(2130903203, c, false);
              TextView localTextView1 = (TextView)localView.findViewById(2131690114);
              TextView localTextView3 = (TextView)localView.findViewById(2131690124);
              TextView localTextView2 = (TextView)localView.findViewById(2131690125);
              String str = LiveTvAvailableFragment.ScheduleAdapter.a(LiveTvAvailableFragment.ScheduleAdapter.this).format(new Date(TimeUnit.SECONDS.toMillis(localSyncbakSchedule.getStartTime())));
              LinearLayout.LayoutParams localLayoutParams;
              switch (i)
              {
              default: 
                localLayoutParams = new LinearLayout.LayoutParams(0, -1, 1.0F);
                localTextView3.setText(str);
                localTextView3.setTextColor(getResources().getColor(2131558596));
              }
              for (;;)
              {
                localView.setLayoutParams(localLayoutParams);
                localTextView1.setText(localSyncbakSchedule.getName());
                localTextView2.setText(localSyncbakSchedule.getEpisodeTitle());
                localLinearLayout.addView(localView);
                if (i % 2 == 0) {
                  c.addView(LayoutInflater.from(a).inflate(2130903209, c, false));
                }
                i += 1;
                break;
                localLayoutParams = new LinearLayout.LayoutParams(0, -1, 1.0F);
                localTextView3.setText(a.getString(2131231077, new Object[] { str }));
              }
            }
          }
          else
          {
            c.setVisibility(8);
          }
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
      
      public abstract void a(LiveTvChannel paramLiveTvChannel);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvAvailableFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */