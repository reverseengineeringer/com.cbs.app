package com.cbs.app.livetv.fragment;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.widget.NoUnderlineClickableSpan;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.view.model.MVPDConfig;
import java.util.HashMap;

public class LiveTvCompleteVerificationFragment
  extends Fragment
{
  private boolean a;
  private BaseFragmentCallBack b;
  private FrameLayout c;
  private MVPDConfig d;
  
  private View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903163, paramViewGroup, false);
    paramViewGroup = getResources().getDrawable(2130837938);
    paramViewGroup.setBounds(0, 0, getResources().getDimensionPixelSize(2131362071), getResources().getDimensionPixelSize(2131362070));
    int i = getResources().getDimensionPixelSize(2131362074);
    ((TextView)paramLayoutInflater.findViewById(2131689971)).setCompoundDrawables(paramViewGroup, null, null, null);
    ((TextView)paramLayoutInflater.findViewById(2131689971)).setCompoundDrawablePadding(i);
    ((TextView)paramLayoutInflater.findViewById(2131689972)).setCompoundDrawables(paramViewGroup, null, null, null);
    ((TextView)paramLayoutInflater.findViewById(2131689972)).setCompoundDrawablePadding(i);
    ((TextView)paramLayoutInflater.findViewById(2131689973)).setCompoundDrawables(paramViewGroup, null, null, null);
    ((TextView)paramLayoutInflater.findViewById(2131689973)).setCompoundDrawablePadding(i);
    ((TextView)paramLayoutInflater.findViewById(2131689974)).setCompoundDrawables(paramViewGroup, null, null, null);
    ((TextView)paramLayoutInflater.findViewById(2131689974)).setCompoundDrawablePadding(i);
    ((TextView)paramLayoutInflater.findViewById(2131689975)).setCompoundDrawables(paramViewGroup, null, null, null);
    ((TextView)paramLayoutInflater.findViewById(2131689975)).setCompoundDrawablePadding(i);
    paramLayoutInflater.findViewById(2131689976).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LiveTvCompleteVerificationFragment.a(LiveTvCompleteVerificationFragment.this);
      }
    });
    paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131689977);
    if (AuthStatusManager.e())
    {
      localSpannableStringBuilder = new SpannableStringBuilder(getString(2131230838) + " ");
      i = localSpannableStringBuilder.length();
      localSpannableStringBuilder.append(getString(2131231259));
      localSpannableStringBuilder.setSpan(new NoUnderlineClickableSpan()
      {
        public final void onClick(View paramAnonymousView)
        {
          LiveTvCompleteVerificationFragment.b(LiveTvCompleteVerificationFragment.this);
        }
      }, i, localSpannableStringBuilder.length(), 33);
      paramViewGroup.setMovementMethod(LinkMovementMethod.getInstance());
      paramViewGroup.setText(localSpannableStringBuilder);
    }
    for (;;)
    {
      paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131689978);
      if (!a) {
        break;
      }
      paramViewGroup.setVisibility(8);
      return paramLayoutInflater;
      paramViewGroup.setVisibility(8);
    }
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(getString(2131231220));
    localSpannableStringBuilder.setSpan(new NoUnderlineClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        LiveTvCompleteVerificationFragment.c(LiveTvCompleteVerificationFragment.this);
      }
    }, 0, localSpannableStringBuilder.length(), 33);
    paramViewGroup.setMovementMethod(LinkMovementMethod.getInstance());
    paramViewGroup.setText(localSpannableStringBuilder);
    return paramLayoutInflater;
  }
  
  public static LiveTvCompleteVerificationFragment a(boolean paramBoolean, MVPDConfig paramMVPDConfig)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("ARG_FORCE_USER_REG_FLOW", paramBoolean);
    localBundle.putParcelable("mvpd", paramMVPDConfig);
    paramMVPDConfig = new LiveTvCompleteVerificationFragment();
    paramMVPDConfig.setArguments(localBundle);
    return paramMVPDConfig;
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
    a = getArguments().getBoolean("ARG_FORCE_USER_REG_FLOW", false);
    d = ((MVPDConfig)getArguments().getParcelable("mvpd"));
    new StringBuilder("onCreate: ForceUserRegFlow = ").append(a);
    for (;;)
    {
      try
      {
        b = ((BaseFragmentCallBack)getParentFragment());
        HashMap localHashMap = new HashMap();
        if (a)
        {
          paramBundle = "live tv|required account verfied";
          localHashMap.put("pageTitle", paramBundle);
          localHashMap.put("evar_6", "liveTV|provider|verified");
          if (!a) {
            break label187;
          }
          paramBundle = "provider_verified_cbsreg";
          localHashMap.put("evar_10", paramBundle);
          if (d == null) {
            break label193;
          }
          paramBundle = d.getMvpd();
          localHashMap.put("evar_32", paramBundle);
          localHashMap.put("pageView", Boolean.TRUE.toString());
          AnalyticsManager.a(getActivity(), Action.dg, localHashMap);
          return;
        }
      }
      catch (Exception paramBundle)
      {
        throw new ClassCastException("must implement BaseFragmentCallBack");
      }
      paramBundle = "live tv|optional account verified";
      continue;
      label187:
      paramBundle = "provider_verified";
      continue;
      label193:
      paramBundle = "";
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
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvCompleteVerificationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */