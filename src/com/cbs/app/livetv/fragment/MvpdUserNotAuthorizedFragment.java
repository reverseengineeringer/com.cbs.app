package com.cbs.app.livetv.fragment;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.livetv.widget.LiveTvContentFlipper;
import com.cbs.app.livetv.widget.NoUnderlineClickableSpan;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class MvpdUserNotAuthorizedFragment
  extends UpSellDataFragment
{
  private static final String a = MvpdUserNotAuthorizedFragment.class.getSimpleName();
  private MVPDConfig b;
  private LiveTvContentFlipper c;
  private BaseFragmentCallBack d;
  private Button e;
  private Button f;
  private View g;
  private TextView h;
  private TextView i;
  
  private void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    c.setContentView(paramLayoutInflater.inflate(2130903174, paramViewGroup, false));
    paramLayoutInflater = c;
    c.setDisplayedChild(0);
    paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131689977);
    if (AuthStatusManager.e())
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(getString(2131230838) + " ");
      int j = localSpannableStringBuilder.length();
      localSpannableStringBuilder.append(getString(2131231259));
      localSpannableStringBuilder.setSpan(new NoUnderlineClickableSpan()
      {
        public final void onClick(View paramAnonymousView)
        {
          MvpdUserNotAuthorizedFragment.a(MvpdUserNotAuthorizedFragment.this);
        }
      }, j, localSpannableStringBuilder.length(), 33);
      paramViewGroup.setMovementMethod(LinkMovementMethod.getInstance());
      paramViewGroup.setText(localSpannableStringBuilder);
    }
    for (;;)
    {
      g = paramLayoutInflater.findViewById(2131690028);
      e = ((Button)paramLayoutInflater.findViewById(2131690098));
      f = ((Button)paramLayoutInflater.findViewById(2131690003));
      h = ((TextView)getView().findViewById(2131690027));
      i = ((TextView)getView().findViewById(2131690029));
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131690026);
      if (AuthStatusManager.d()) {
        paramLayoutInflater.setText(getString(2131231312));
      }
      e();
      return;
      paramViewGroup.setVisibility(8);
    }
  }
  
  public static MvpdUserNotAuthorizedFragment b()
  {
    return new MvpdUserNotAuthorizedFragment();
  }
  
  protected final void a()
  {
    c.setDisplayedChild(2);
  }
  
  protected final void a(UpsellEndpointResponse paramUpsellEndpointResponse)
  {
    paramUpsellEndpointResponse = paramUpsellEndpointResponse.getUpsellInfo();
    if (paramUpsellEndpointResponse != null)
    {
      paramUpsellEndpointResponse = paramUpsellEndpointResponse.iterator();
      while (paramUpsellEndpointResponse.hasNext())
      {
        final UpsellInfo localUpsellInfo = (UpsellInfo)paramUpsellEndpointResponse.next();
        final String str = localUpsellInfo.getActionTarget();
        int j = -1;
        switch (str.hashCode())
        {
        }
        for (;;)
        {
          switch (j)
          {
          default: 
            break;
          case 0: 
            g.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                MvpdUserNotAuthorizedFragment.a(MvpdUserNotAuthorizedFragment.this, localUpsellInfo.getContentId());
              }
            });
            h.setText(localUpsellInfo.getUpsellMessage2());
            i.setText(localUpsellInfo.getUpsellMessage3());
            break;
            if (str.equals("android_content_1"))
            {
              j = 0;
              continue;
              if (str.equals("android_content_6"))
              {
                j = 1;
                continue;
                if (str.equals("android_content_7")) {
                  j = 2;
                }
              }
            }
            break;
          }
        }
        e.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            MvpdUserNotAuthorizedFragment.b(MvpdUserNotAuthorizedFragment.this, localUpsellInfo.getCallToActionURL());
          }
        });
        continue;
        str = localUpsellInfo.getProductID();
        if (localUpsellInfo.getCallToAction() != null)
        {
          f.setVisibility(0);
          f.setText(localUpsellInfo.getCallToAction());
          f.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              MvpdUserNotAuthorizedFragment.c(MvpdUserNotAuthorizedFragment.this, str);
            }
          });
        }
      }
    }
    c.setDisplayedChild(1);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a((LayoutInflater)getActivity().getSystemService("layout_inflater"), (ViewGroup)getView());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getArguments() != null) {
      b = ((MVPDConfig)getArguments().getParcelable("mvpd"));
    }
    try
    {
      d = ((BaseFragmentCallBack)getParentFragment());
      if (d == null) {
        d = ((BaseFragmentCallBack)getActivity());
      }
      paramBundle = new HashMap();
      paramBundle.put("events", "event89");
      paramBundle.put("pageTitle", "live-tv|provider|cbs not authorized");
      paramBundle.put("evar_6", "liveTV|provider|notauthorized");
      paramBundle.put("evar_10", "provider_notauthorized");
      paramBundle.put("pageView", Boolean.TRUE.toString());
      AnalyticsManager.a(getActivity(), Action.da, paramBundle);
      return;
    }
    catch (Exception paramBundle)
    {
      throw new ClassCastException("must implement BaseFragmentCallBack");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = new LiveTvContentFlipper(getActivity());
    return c;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    d = null;
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    a(LayoutInflater.from(paramView.getContext()), (ViewGroup)paramView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.MvpdUserNotAuthorizedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */