package com.cbs.app.livetv.fragment;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.livetv.controllers.SignInSignUpController;
import com.cbs.app.livetv.model.Person;
import com.cbs.app.livetv.model.SocialNames;
import com.cbs.app.livetv.util.MessageUtil;
import com.cbs.app.view.AbstractFragmentActivity;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.model.MVPDConfig;
import java.util.HashMap;

public class SignInFragment
  extends Fragment
  implements SignInSignUpCallBack
{
  private static final String a = SignInFragment.class.getSimpleName();
  private SignInSignUpController b;
  private Person c;
  private BaseFragmentCallBack d;
  private TextInputLayout e;
  private TextInputLayout f;
  private ScrollView g;
  private Boolean h;
  private MVPDConfig i;
  private Button j;
  private BackButtonListener k = new BackButtonListener()
  {
    public final boolean c()
    {
      if (SignInFragment.a(SignInFragment.this) != null) {
        SignInFragment.a(SignInFragment.this).a(1015, null);
      }
      return true;
    }
    
    public final String getTag()
    {
      return SignInFragment.a();
    }
  };
  private String l;
  private boolean m;
  private View n;
  
  public static SignInFragment a(MVPDConfig paramMVPDConfig, boolean paramBoolean1, String paramString, boolean paramBoolean2)
  {
    Bundle localBundle = new Bundle();
    SignInFragment localSignInFragment = new SignInFragment();
    localBundle.putParcelable("mvpd", paramMVPDConfig);
    localBundle.putBoolean("ARG_FROM_UPSELL_TRIAL", paramBoolean1);
    localBundle.putBoolean("ARG_SHOW_REGISTER_LATER", paramBoolean2);
    localBundle.putString("ARG_SKU", paramString);
    localSignInFragment.setArguments(localBundle);
    return localSignInFragment;
  }
  
  private void b()
  {
    getActivity().runOnUiThread(new Runnable()
    {
      public final void run()
      {
        SignInFragment.d(SignInFragment.this).setClickable(true);
        SignInFragment.d(SignInFragment.this).setEnabled(true);
      }
    });
  }
  
  public final void a(int paramInt, Object paramObject)
  {
    if (!isAdded()) {}
    do
    {
      return;
      HashMap localHashMap;
      switch (paramInt)
      {
      default: 
        return;
      case 1004: 
        localHashMap = new HashMap();
        localHashMap.put("events", "event19");
        localHashMap.put("evar_6", "liveTV|cbsreg|sign in");
        localHashMap.put("evar_10", "cbsreg_signin");
        if (i == null) {
          break;
        }
      case 1009: 
        for (paramObject = i.getMvpd();; paramObject = "")
        {
          localHashMap.put("evar_32", paramObject);
          AnalyticsManager.a(getActivity(), Action.dp, localHashMap);
          if (d != null) {
            d.a(1006, h);
          }
          h = Boolean.valueOf(false);
          return;
        }
      }
    } while (d == null);
    d.a(1007, paramObject);
    return;
    MessageUtil.a(getView(), getString(2131231115));
    b();
    return;
    MessageUtil.a(getView(), getString(2131231120));
    b();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getActivity().getWindow().setSoftInputMode(16);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    b.a(paramInt1);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = getView().findViewById(2131690059);
    if (paramConfiguration != null)
    {
      paramConfiguration.getLayoutParams();
      int i1 = getResources().getDimensionPixelSize(2131361891);
      int i2 = getResources().getDimensionPixelSize(2131361916);
      paramConfiguration.setPadding(i1, i2, i1, i2);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i = ((MVPDConfig)getArguments().getParcelable("mvpd"));
    getArguments().getBoolean("ARG_FROM_UPSELL_TRIAL");
    m = getArguments().getBoolean("ARG_SHOW_REGISTER_LATER");
    l = getArguments().getString("ARG_SKU");
    paramBundle = new HashMap();
    paramBundle.put("pageTitle", "live-tv|cbsreg|sign in");
    paramBundle.put("evar_6", "liveTV|cbsreg|sign in");
    paramBundle.put("evar_10", "cbsreg_signin");
    paramBundle.put("pageView", Boolean.TRUE.toString());
    AnalyticsManager.a(getActivity(), Action.dl, paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    b = new SignInSignUpController(getContext(), "Live Tv");
    b.setSignInSignUpCallback(this);
    c = new Person();
    return paramLayoutInflater.inflate(2130903182, paramViewGroup, false);
  }
  
  public void onDestroy()
  {
    b.a();
    if (d != null) {
      d.a(1010, k);
    }
    d = null;
    super.onDestroy();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    ((AbstractFragmentActivity)getActivity()).a(k);
    g = ((ScrollView)paramView.findViewById(2131689598));
    e = ((TextInputLayout)paramView.findViewById(2131690063));
    e.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SignInFragment.b(SignInFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    f = ((TextInputLayout)paramView.findViewById(2131690065));
    f.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SignInFragment.c(SignInFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    paramView.findViewById(2131690060).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignInFragment.a(SignInFragment.this, SocialNames.a);
      }
    });
    paramView.findViewById(2131690061).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignInFragment.a(SignInFragment.this, SocialNames.c);
      }
    });
    paramView.findViewById(2131690062).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignInFragment.a(SignInFragment.this, SocialNames.b);
      }
    });
    j = ((Button)paramView.findViewById(2131690068));
    j.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignInFragment.d(SignInFragment.this).setClickable(false);
        SignInFragment.d(SignInFragment.this).setEnabled(false);
        SignInFragment.e(SignInFragment.this);
      }
    });
    paramBundle = (TextView)paramView.findViewById(2131690069);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(getString(2131231003) + " ");
    int i1 = localSpannableStringBuilder.length();
    localSpannableStringBuilder.append(getString(2131231267));
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(getResources().getColor(2131558451)), i1, localSpannableStringBuilder.length(), 33);
    paramBundle.setMovementMethod(LinkMovementMethod.getInstance());
    paramBundle.setText(localSpannableStringBuilder);
    paramView.findViewById(2131690069).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignInFragment.f(SignInFragment.this);
      }
    });
    n = paramView.findViewById(2131690070);
    if (m)
    {
      n.setVisibility(0);
      n.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SignInFragment.g(SignInFragment.this);
        }
      });
    }
    for (;;)
    {
      paramView.findViewById(2131690067).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SignInFragment.h(SignInFragment.this);
        }
      });
      return;
      n.setVisibility(8);
    }
  }
  
  public void setFragmentCallback(BaseFragmentCallBack paramBaseFragmentCallBack)
  {
    d = paramBaseFragmentCallBack;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SignInFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */