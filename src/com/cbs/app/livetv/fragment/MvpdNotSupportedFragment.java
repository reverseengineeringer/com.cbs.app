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

public class MvpdNotSupportedFragment
  extends UpSellDataFragment
{
  private static final String a = MvpdNotSupportedFragment.class.getSimpleName();
  private LiveTvContentFlipper b;
  private BaseFragmentCallBack c;
  private MVPDConfig d;
  private Button e;
  private Button f;
  
  public static MvpdNotSupportedFragment a(MVPDConfig paramMVPDConfig)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("mvpd", paramMVPDConfig);
    paramMVPDConfig = new MvpdNotSupportedFragment();
    paramMVPDConfig.setArguments(localBundle);
    return paramMVPDConfig;
  }
  
  private void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    b.setContentView(paramLayoutInflater.inflate(2130903173, paramViewGroup, false));
    paramLayoutInflater = b;
    b.setDisplayedChild(0);
    paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131689977);
    if (AuthStatusManager.e())
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(getString(2131230838) + " ");
      int i = localSpannableStringBuilder.length();
      localSpannableStringBuilder.append(getString(2131231259));
      localSpannableStringBuilder.setSpan(new NoUnderlineClickableSpan()
      {
        public final void onClick(View paramAnonymousView)
        {
          MvpdNotSupportedFragment.a(MvpdNotSupportedFragment.this);
        }
      }, i, localSpannableStringBuilder.length(), 33);
      paramViewGroup.setMovementMethod(LinkMovementMethod.getInstance());
      paramViewGroup.setText(localSpannableStringBuilder);
    }
    for (;;)
    {
      paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131690026);
      e = ((Button)paramLayoutInflater.findViewById(2131690098));
      f = ((Button)paramLayoutInflater.findViewById(2131690003));
      if (AuthStatusManager.d()) {
        paramViewGroup.setText(getString(2131231312));
      }
      e();
      return;
      paramViewGroup.setVisibility(8);
    }
  }
  
  protected final void a()
  {
    b.setDisplayedChild(2);
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
        final Object localObject = localUpsellInfo.getActionTarget();
        int i = -1;
        switch (((String)localObject).hashCode())
        {
        }
        for (;;)
        {
          switch (i)
          {
          default: 
            break;
          case 0: 
            localObject = getView();
            if (localObject == null) {
              break;
            }
            ((View)localObject).findViewById(2131690028).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                MvpdNotSupportedFragment.a(MvpdNotSupportedFragment.this, localUpsellInfo.getContentId());
              }
            });
            ((TextView)((View)localObject).findViewById(2131690025)).setText(localUpsellInfo.getUpsellMessage());
            ((TextView)((View)localObject).findViewById(2131690027)).setText(localUpsellInfo.getUpsellMessage2());
            break;
            if (((String)localObject).equals("android_content_1"))
            {
              i = 0;
              continue;
              if (((String)localObject).equals("android_content_6"))
              {
                i = 1;
                continue;
                if (((String)localObject).equals("android_content_7")) {
                  i = 2;
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
            MvpdNotSupportedFragment.b(MvpdNotSupportedFragment.this, localUpsellInfo.getCallToActionURL());
          }
        });
        continue;
        localObject = localUpsellInfo.getProductID();
        if (localUpsellInfo.getCallToAction() != null)
        {
          f.setVisibility(0);
          f.setText(localUpsellInfo.getCallToAction());
          f.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              MvpdNotSupportedFragment.c(MvpdNotSupportedFragment.this, localObject);
            }
          });
        }
      }
    }
    b.setDisplayedChild(1);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a((LayoutInflater)getActivity().getSystemService("layout_inflater"), (ViewGroup)getView());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    d = ((MVPDConfig)getArguments().getParcelable("mvpd"));
    try
    {
      c = ((BaseFragmentCallBack)getParentFragment());
      if (c == null) {
        c = ((BaseFragmentCallBack)getActivity());
      }
      paramBundle = new HashMap();
      paramBundle.put("events", "event89");
      paramBundle.put("pageTitle", "live-tv|provider|not supported");
      paramBundle.put("evar_6", "liveTV|provider|notsupported");
      paramBundle.put("evar_10", "provider_notsupported");
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
    b = new LiveTvContentFlipper(getActivity());
    a(paramLayoutInflater, paramViewGroup);
    return b;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    c = null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.MvpdNotSupportedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */