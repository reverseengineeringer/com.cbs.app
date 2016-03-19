package com.cbs.app.livetv.fragment;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.manager.AuthStatusManager;
import java.util.HashMap;

public class LiveTvNotFoundFragment
  extends Fragment
{
  private static final String a = LiveTvNotFoundFragment.class.getSimpleName();
  private BaseFragmentCallBack b;
  private FrameLayout c;
  private Button d;
  private TextView e;
  private TextView f;
  
  private View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903166, paramViewGroup, false);
    d = ((Button)paramLayoutInflater.findViewById(2131689987));
    e = ((TextView)paramLayoutInflater.findViewById(2131689989));
    f = ((TextView)paramLayoutInflater.findViewById(2131689990));
    paramViewGroup = AuthStatusManager.getStatusEnum();
    switch (2.a[paramViewGroup.ordinal()])
    {
    default: 
      a(false);
    }
    for (;;)
    {
      d.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          LiveTvNotFoundFragment.a(LiveTvNotFoundFragment.this);
        }
      });
      return paramLayoutInflater;
      a(true);
    }
  }
  
  public static LiveTvNotFoundFragment a()
  {
    return new LiveTvNotFoundFragment();
  }
  
  private void a(boolean paramBoolean)
  {
    int j = 8;
    Object localObject = d;
    if (paramBoolean)
    {
      i = 0;
      ((Button)localObject).setVisibility(i);
      localObject = e;
      if (!paramBoolean) {
        break label64;
      }
      i = 0;
      label33:
      ((TextView)localObject).setVisibility(i);
      localObject = f;
      if (!paramBoolean) {
        break label70;
      }
    }
    label64:
    label70:
    for (int i = j;; i = 0)
    {
      ((TextView)localObject).setVisibility(i);
      return;
      i = 8;
      break;
      i = 8;
      break label33;
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = (LayoutInflater)getActivity().getSystemService("layout_inflater");
    c.removeAllViewsInLayout();
    c.addView(a(paramConfiguration, (ViewGroup)getView()));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      b = ((BaseFragmentCallBack)getParentFragment());
      paramBundle = new HashMap();
      paramBundle.put("events", "event86");
      paramBundle.put("pageTitle", "live tv|live-tv not available in area|modal");
      paramBundle.put("evar_6", "liveTV|upsell|unavailable modal");
      paramBundle.put("evar_10", "livetv_unavailable");
      paramBundle.put("pageView", Boolean.TRUE.toString());
      AnalyticsManager.a(getActivity(), Action.cx, paramBundle);
      return;
    }
    catch (Exception paramBundle)
    {
      throw new ClassCastException("must implement BaseFragmentCallBack");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = new FrameLayout(getActivity());
    c.addView(a(paramLayoutInflater, paramViewGroup));
    return c;
  }
  
  public void onDestroy()
  {
    b = null;
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvNotFoundFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */