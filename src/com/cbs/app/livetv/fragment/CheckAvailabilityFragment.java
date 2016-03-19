package com.cbs.app.livetv.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import android.widget.Toast;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.controllers.SyncbakController;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.livetv.widget.NoUnderlineClickableSpan;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;

public class CheckAvailabilityFragment
  extends UpSellDataFragment
  implements View.OnClickListener
{
  private static final String b = CheckAvailabilityFragment.class.getSimpleName();
  protected BaseFragmentCallBack a;
  private boolean c = false;
  private boolean d = false;
  private boolean e;
  private boolean f = false;
  private boolean g = false;
  private int h;
  private MVPDConfig i;
  private ContentFlipper j;
  private SyncbakController k;
  
  public static CheckAvailabilityFragment a(int paramInt)
  {
    new StringBuilder("newInstance() called with: mode = [").append(paramInt).append("]");
    Bundle localBundle = new Bundle();
    localBundle.putInt("mode", paramInt);
    CheckAvailabilityFragment localCheckAvailabilityFragment = new CheckAvailabilityFragment();
    localCheckAvailabilityFragment.setArguments(localBundle);
    return localCheckAvailabilityFragment;
  }
  
  public static CheckAvailabilityFragment a(MVPDConfig paramMVPDConfig)
  {
    new StringBuilder("newInstance() called with: mvpdConfig = [").append(paramMVPDConfig).append("]");
    Bundle localBundle = new Bundle();
    localBundle.putInt("mode", 1);
    localBundle.putParcelable("mvpd", paramMVPDConfig);
    paramMVPDConfig = new CheckAvailabilityFragment();
    paramMVPDConfig.setArguments(localBundle);
    return paramMVPDConfig;
  }
  
  private void a(final Context paramContext)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle(getString(2131231091));
    localBuilder.setMessage(getString(2131231094)).setCancelable(true).setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        CheckAvailabilityFragment.k(CheckAvailabilityFragment.this);
        CheckAvailabilityFragment.f(CheckAvailabilityFragment.this).setDisplayedChild(2);
      }
    }).setPositiveButton(getString(2131231095), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        if (Util.a(paramContext, paramAnonymousDialogInterface))
        {
          paramContext.startActivity(paramAnonymousDialogInterface);
          return;
        }
        Toast.makeText(paramContext, getString(2131231092), 1).show();
      }
    }).setNegativeButton(getString(2131231093), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
        CheckAvailabilityFragment.k(CheckAvailabilityFragment.this);
        CheckAvailabilityFragment.f(CheckAvailabilityFragment.this).setDisplayedChild(2);
      }
    });
    localBuilder.create().show();
  }
  
  private void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    j.setContentView(paramLayoutInflater.inflate(2130903141, paramViewGroup, false));
    paramViewGroup = j;
    TextView localTextView1;
    TextView localTextView2;
    if (!g)
    {
      j.setDisplayedChild(1);
      localTextView1 = (TextView)paramViewGroup.findViewById(2131689894);
      LinearLayout localLinearLayout = (LinearLayout)paramViewGroup.findViewById(2131690097);
      localTextView2 = (TextView)paramViewGroup.findViewById(2131689895);
      TextView localTextView3 = (TextView)paramViewGroup.findViewById(2131689896);
      if (e) {
        break label379;
      }
      paramLayoutInflater = new SpannableStringBuilder(getString(2131230833, new Object[] { getString(2131231157), getString(2131231154), getString(2131231160) }));
      label130:
      String str = paramLayoutInflater.toString();
      NoUnderlineClickableSpan local2 = new NoUnderlineClickableSpan()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (a != null) {
            a.a(1105, getString(2131231203));
          }
        }
      };
      NoUnderlineClickableSpan local3 = new NoUnderlineClickableSpan()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (a != null) {
            a.a(1105, getString(2131231321));
          }
        }
      };
      NoUnderlineClickableSpan local4 = new NoUnderlineClickableSpan()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (a != null) {
            a.a(1105, getString(2131231369));
          }
        }
      };
      a(str, 2131231157, local3, paramLayoutInflater);
      a(str, 2131231154, local2, paramLayoutInflater);
      a(str, 2131231160, local4, paramLayoutInflater);
      if (e) {
        break label470;
      }
      localTextView1.setText(getString(2131230949));
      a(true);
      localTextView2.setText(getString(2131230996) + "\n\n" + getString(2131231207));
      localTextView3.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView3.setText(paramLayoutInflater, TextView.BufferType.SPANNABLE);
      localTextView3.setSelected(true);
      localLinearLayout.setVisibility(0);
      ((Button)paramViewGroup.findViewById(2131690098)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CheckAvailabilityFragment.j(CheckAvailabilityFragment.this);
        }
      });
    }
    for (;;)
    {
      paramViewGroup.findViewById(2131689897).setOnClickListener(this);
      paramViewGroup.findViewById(2131689980).setOnClickListener(this);
      paramViewGroup.findViewById(2131689979).findViewById(2131690098).setOnClickListener(this);
      paramViewGroup.findViewById(2131690098).setOnClickListener(this);
      paramViewGroup.findViewById(2131689981).setOnClickListener(this);
      return;
      j.setDisplayedChild(2);
      break;
      label379:
      paramLayoutInflater = new SpannableStringBuilder(getString(2131230996) + " " + getString(2131231207) + " " + getString(2131230833, new Object[] { getString(2131231157), getString(2131231154), getString(2131231160) }));
      break label130;
      label470:
      localTextView1.setText(getString(2131230951));
      a(false);
      localTextView2.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView2.setText(paramLayoutInflater, TextView.BufferType.SPANNABLE);
      localTextView2.setSelected(true);
    }
  }
  
  private void a(String paramString, int paramInt, NoUnderlineClickableSpan paramNoUnderlineClickableSpan, SpannableStringBuilder paramSpannableStringBuilder)
  {
    String str = getString(paramInt);
    paramInt = paramString.indexOf(str);
    paramSpannableStringBuilder.setSpan(paramNoUnderlineClickableSpan, paramInt, str.length() + paramInt, 0);
    paramSpannableStringBuilder.setSpan(new ForegroundColorSpan(getResources().getColor(2131558451)), paramInt, str.length() + paramInt, 33);
  }
  
  private void a(boolean paramBoolean)
  {
    int n = 0;
    LinearLayout localLinearLayout = (LinearLayout)j.findViewById(2131689898);
    Button localButton = (Button)j.findViewById(2131689897);
    if (paramBoolean)
    {
      m = 8;
      localButton.setVisibility(m);
      if (!paramBoolean) {
        break label63;
      }
    }
    label63:
    for (int m = n;; m = 8)
    {
      localLinearLayout.setVisibility(m);
      return;
      m = 0;
      break;
    }
  }
  
  private void c()
  {
    if (a != null) {
      e();
    }
  }
  
  private void d()
  {
    if (!d)
    {
      a(true);
      c = true;
      d = true;
      if ((e) || (i == null)) {
        break label105;
      }
      k.a(i.getAdobeId());
    }
    for (;;)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("events", "event19");
      localHashMap.put("evar_6", g());
      localHashMap.put("evar_10", h());
      AnalyticsManager.a(getActivity(), Action.cK, localHashMap);
      return;
      label105:
      k.f();
    }
  }
  
  private void f()
  {
    HashMap localHashMap = new HashMap();
    String str;
    if (g) {
      if (i != null) {
        str = "live-tv|provider|unknown location";
      }
    }
    for (;;)
    {
      localHashMap.put("pageTitle", str);
      localHashMap.put("evar_6", g());
      localHashMap.put("evar_10", h());
      localHashMap.put("pageView", Boolean.TRUE.toString());
      if (!g) {
        break label139;
      }
      if (i == null) {
        break;
      }
      AnalyticsManager.a(getActivity(), Action.cR, localHashMap);
      return;
      str = "live-tv|unknown location|modal";
      continue;
      if (i != null) {
        str = "live-tv|provider|check availability";
      } else {
        str = "live-tv|check availability|modal";
      }
    }
    AnalyticsManager.a(getActivity(), Action.cM, localHashMap);
    return;
    label139:
    if (i != null)
    {
      AnalyticsManager.a(getActivity(), Action.cP, localHashMap);
      return;
    }
    AnalyticsManager.a(getActivity(), Action.cJ, localHashMap);
  }
  
  private String g()
  {
    if (g)
    {
      if (i != null) {
        return "liveTV|provider|unknown location";
      }
      return "liveTV|upsell|unknown location";
    }
    if (i != null) {
      return "liveTV|provider|availability";
    }
    return "liveTV|upsell|check availability";
  }
  
  private String h()
  {
    if (g)
    {
      if (i != null) {
        return "provider_unknown";
      }
      return "livtv_unknown";
    }
    if (i != null) {
      return "provider_availability";
    }
    return "livtv_availability";
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
      if (a != null) {
        a.a(1105, localBundle);
      }
      paramUpsellEndpointResponse = new HashMap();
      paramUpsellEndpointResponse.put("events", "event19");
      paramUpsellEndpointResponse.put("evar_6", g());
      paramUpsellEndpointResponse.put("evar_10", h());
      if (!g) {
        break label140;
      }
      if (i != null) {
        AnalyticsManager.a(getActivity(), Action.cS, paramUpsellEndpointResponse);
      }
    }
    else
    {
      return;
    }
    AnalyticsManager.a(getActivity(), Action.cN, paramUpsellEndpointResponse);
    return;
    label140:
    if (i != null)
    {
      AnalyticsManager.a(getActivity(), Action.cQ, paramUpsellEndpointResponse);
      return;
    }
    AnalyticsManager.a(getActivity(), Action.cL, paramUpsellEndpointResponse);
  }
  
  public void onClick(View paramView)
  {
    new StringBuilder("onClick() called with: v = [").append(paramView).append("]");
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131689980: 
      g = false;
      j.setDisplayedChild(1);
      d();
      paramView = new HashMap();
      paramView.put("events", "event19");
      paramView.put("evar_6", g());
      paramView.put("evar_10", h());
      if (i != null)
      {
        AnalyticsManager.a(getActivity(), Action.cT, paramView);
        return;
      }
      AnalyticsManager.a(getActivity(), Action.cO, paramView);
      return;
    case 2131690098: 
      c();
      return;
    case 2131689981: 
      a(getContext());
      return;
    }
    d();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a((LayoutInflater)getActivity().getSystemService("layout_inflater"), (ViewGroup)getView());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    boolean bool2 = true;
    new StringBuilder("onCreate() called with: savedInstanceState = [").append(paramBundle).append("]");
    super.onCreate(paramBundle);
    h = getArguments().getInt("mode", 1);
    if (h == 0)
    {
      bool1 = true;
      e = bool1;
      i = ((MVPDConfig)getArguments().getParcelable("mvpd"));
      if (e) {
        break label130;
      }
    }
    label130:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      c = bool1;
      d = false;
      k = new SyncbakController(getContext());
      k.a(new SyncbakCallback()
      {
        public final void a(int paramAnonymousInt, String paramAnonymousString)
        {
          if (!isAdded()) {}
          do
          {
            return;
            CheckAvailabilityFragment.a(CheckAvailabilityFragment.this);
            switch (paramAnonymousInt)
            {
            }
          } while (a == null);
          a.a(2012, paramAnonymousString);
          return;
          CheckAvailabilityFragment.c(CheckAvailabilityFragment.this);
          CheckAvailabilityFragment.f(CheckAvailabilityFragment.this).setDisplayedChild(2);
          CheckAvailabilityFragment.g(CheckAvailabilityFragment.this);
          return;
          CheckAvailabilityFragment.c(CheckAvailabilityFragment.this);
          CheckAvailabilityFragment.a(CheckAvailabilityFragment.this, getContext());
        }
        
        public final void a(boolean paramAnonymousBoolean)
        {
          if (!isAdded()) {}
          do
          {
            return;
            CheckAvailabilityFragment.b();
            new StringBuilder("onChannelsAvailabilityChecked() called with: isAvailable = [").append(paramAnonymousBoolean).append("]");
            CheckAvailabilityFragment.a(CheckAvailabilityFragment.this);
            if (paramAnonymousBoolean)
            {
              CheckAvailabilityFragment.b(CheckAvailabilityFragment.this);
              return;
            }
            CheckAvailabilityFragment.c(CheckAvailabilityFragment.this);
          } while (a == null);
          if (CheckAvailabilityFragment.d(CheckAvailabilityFragment.this))
          {
            a.a(2012, null);
            return;
          }
          a.a(1002, Integer.valueOf(CheckAvailabilityFragment.e(CheckAvailabilityFragment.this)));
        }
        
        public final void a(boolean paramAnonymousBoolean1, boolean paramAnonymousBoolean2)
        {
          if (!isAdded()) {}
          do
          {
            return;
            CheckAvailabilityFragment.b();
            new StringBuilder("onMvpdSupported() called with: isSupported = [").append(paramAnonymousBoolean1).append("]");
          } while (a == null);
          if (paramAnonymousBoolean2)
          {
            if (!paramAnonymousBoolean1)
            {
              a.a(1013, null);
              return;
            }
            CheckAvailabilityFragment.h(CheckAvailabilityFragment.this);
            CheckAvailabilityFragment.i(CheckAvailabilityFragment.this).f();
            return;
          }
          a.a(1014, null);
        }
      });
      f();
      return;
      bool1 = false;
      break;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    j = new ContentFlipper(getActivity(), 2130903164);
    a(paramLayoutInflater, paramViewGroup);
    return j;
  }
  
  public void onDestroy()
  {
    k.c();
    a = null;
    super.onDestroy();
  }
  
  public void onPause()
  {
    d = false;
    a = null;
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    if (a == null) {}
    try
    {
      a = ((BaseFragmentCallBack)getParentFragment());
      new StringBuilder("onResume: mCheckAvailabilitySelected = ").append(c).append(", mCheckingAvailability = ").append(d).append(", mShowError = ").append(g);
      if ((c) && (!d) && (!g)) {
        d();
      }
      return;
    }
    catch (Exception localException)
    {
      throw new ClassCastException("must implement BaseFragmentCallBack");
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.CheckAvailabilityFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */