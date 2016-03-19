package com.cbs.app.livetv.fragment;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;

public class ConnectWithTvProviderFragment
  extends UpSellDataFragment
{
  protected BaseFragmentCallBack a;
  private FrameLayout b;
  
  private View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903142, paramViewGroup, false);
    ((Button)paramLayoutInflater.findViewById(2131690098)).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (a != null) {
          e();
        }
      }
    });
    return paramLayoutInflater;
  }
  
  public static ConnectWithTvProviderFragment b()
  {
    Bundle localBundle = new Bundle();
    ConnectWithTvProviderFragment localConnectWithTvProviderFragment = new ConnectWithTvProviderFragment();
    localConnectWithTvProviderFragment.setArguments(localBundle);
    return localConnectWithTvProviderFragment;
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
      a.a(1105, localBundle);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = (LayoutInflater)getActivity().getSystemService("layout_inflater");
    b.removeAllViewsInLayout();
    b.addView(a(paramConfiguration, (ViewGroup)getView()));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    b = new FrameLayout(getActivity());
    b.addView(a(paramLayoutInflater, paramViewGroup));
    try
    {
      a = ((BaseFragmentCallBack)getParentFragment());
      return b;
    }
    catch (Exception paramLayoutInflater)
    {
      throw new ClassCastException("must implement BaseFragmentCallBack");
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.ConnectWithTvProviderFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */