package com.cbs.app.livetv.fragment;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.widget.CustomTypefaceSpan;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;

public class LiveTvSuspendedErrorFragment
  extends UpSellDataFragment
{
  private static final String a = LiveTvNotFoundFragment.class.getSimpleName();
  private BaseFragmentCallBack b;
  private FrameLayout c;
  
  private View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903170, paramViewGroup, false);
    paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131689997);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(getString(2131231335).toUpperCase());
    localSpannableStringBuilder.setSpan(new CustomTypefaceSpan(Typeface.createFromAsset(getResources().getAssets(), "fonts/Roboto-Bold.ttf")), 0, localSpannableStringBuilder.length(), 33);
    localSpannableStringBuilder.append(" " + getString(2131231208).toUpperCase());
    paramViewGroup.setText(localSpannableStringBuilder);
    paramLayoutInflater.findViewById(2131689998).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LiveTvSuspendedErrorFragment.a(LiveTvSuspendedErrorFragment.this);
      }
    });
    ((Button)paramLayoutInflater.findViewById(2131690098)).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (LiveTvSuspendedErrorFragment.b(LiveTvSuspendedErrorFragment.this) != null) {
          e();
        }
      }
    });
    return paramLayoutInflater;
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
      b.a(1105, localBundle);
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
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvSuspendedErrorFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */