package com.cbs.app.livetv.fragment;

import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.livetv.controllers.SignInSignUpController;
import com.cbs.app.livetv.model.Person;
import com.cbs.app.livetv.model.SocialNames;
import com.cbs.app.livetv.util.MessageUtil;
import com.cbs.app.livetv.widget.NoUnderlineClickableSpan;
import com.cbs.app.view.AbstractFragmentActivity;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.model.MVPDConfig;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;

public class SignUpFragment
  extends Fragment
  implements SignInSignUpCallBack
{
  private static final String b = SignUpFragment.class.getSimpleName();
  private View A;
  public MVPDConfig a;
  private final int c = 6;
  private SimpleDateFormat d = new SimpleDateFormat("MMM d, yyyy", Locale.US);
  private TextInputLayout e;
  private TextInputLayout f;
  private TextInputLayout g;
  private TextInputLayout h;
  private TextInputLayout i;
  private TextInputLayout j;
  private EditText k;
  private TextInputLayout l;
  private CheckBox m;
  private ScrollView n;
  private Person o;
  private SignInSignUpController p;
  private BaseFragmentCallBack q;
  private EditText r;
  private EditText s;
  private BackButtonListener t = new BackButtonListener()
  {
    public final boolean c()
    {
      if (SignUpFragment.a(SignUpFragment.this) != null) {
        SignUpFragment.a(SignUpFragment.this).a(1007, null);
      }
      return true;
    }
    
    public final String getTag()
    {
      return SignUpFragment.a();
    }
  };
  private Calendar u;
  private Spinner v;
  private Spinner w;
  private boolean x;
  private String y;
  private boolean z;
  
  public static SignUpFragment a(MVPDConfig paramMVPDConfig, boolean paramBoolean1, String paramString, boolean paramBoolean2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("mvpd", paramMVPDConfig);
    localBundle.putBoolean("ARG_FROM_UPSELL_TRIAL", paramBoolean1);
    localBundle.putBoolean("ARG_SHOW_REGISTER_LATER", paramBoolean2);
    localBundle.putString("ARG_SKU", paramString);
    paramMVPDConfig = new SignUpFragment();
    paramMVPDConfig.setArguments(localBundle);
    return paramMVPDConfig;
  }
  
  public final void a(int paramInt, Object paramObject)
  {
    if (!isAdded()) {}
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            switch (paramInt)
            {
            default: 
              return;
            }
          } while (q == null);
          q.a(1007, null);
          return;
        } while (q == null);
        q.a(1007, null);
        return;
      } while (q == null);
      q.a(1007, paramObject);
      return;
      MessageUtil.a(getView(), getString(2131231115));
      return;
    } while ((paramObject == null) || (!(paramObject instanceof String)));
    MessageUtil.a(getView(), (String)paramObject);
    return;
    MessageUtil.a(getView(), getString(2131231122));
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getActivity().getWindow().setSoftInputMode(16);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (p != null) {
      p.a(paramInt1);
    }
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
    a = ((MVPDConfig)getArguments().getParcelable("mvpd"));
    x = getArguments().getBoolean("ARG_FROM_UPSELL_TRIAL");
    z = getArguments().getBoolean("ARG_SHOW_REGISTER_LATER");
    y = getArguments().getString("ARG_SKU");
    new StringBuilder("onCreate: fromUpsellTrial = ").append(x);
    HashMap localHashMap = new HashMap();
    localHashMap.put("pageTitle", "live-tv|cbsreg|sign up");
    localHashMap.put("evar_6", "liveTV|cbsreg|sign up");
    localHashMap.put("evar_10", "cbsreg_signup");
    localHashMap.put("pageView", Boolean.TRUE.toString());
    if (a != null) {}
    for (paramBundle = a.getMvpd();; paramBundle = "")
    {
      localHashMap.put("evar_32", paramBundle);
      AnalyticsManager.a(getActivity(), Action.dr, localHashMap);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    o = new Person();
    p = new SignInSignUpController(getContext(), "liveTv");
    p.setSignInSignUpCallback(this);
    return paramLayoutInflater.inflate(2130903183, paramViewGroup, false);
  }
  
  public void onDestroy()
  {
    p.a();
    if (q != null) {
      q.a(1010, t);
    }
    q = null;
    super.onDestroy();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    ((AbstractFragmentActivity)getActivity()).a(t);
    o = new Person();
    n = ((ScrollView)paramView.findViewById(2131689598));
    paramView.findViewById(2131690060).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignUpFragment.a(SignUpFragment.this, SocialNames.a);
      }
    });
    paramView.findViewById(2131690061).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignUpFragment.a(SignUpFragment.this, SocialNames.c);
      }
    });
    paramView.findViewById(2131690062).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignUpFragment.a(SignUpFragment.this, SocialNames.b);
      }
    });
    u = Calendar.getInstance();
    k = ((EditText)paramView.findViewById(2131690333));
    k.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignUpFragment.b(SignUpFragment.this).setError(null);
        paramAnonymousView = new DatePickerDialog(getActivity(), new DatePickerDialog.OnDateSetListener()
        {
          public final void onDateSet(DatePicker paramAnonymous2DatePicker, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            SignUpFragment.c(SignUpFragment.this).set(paramAnonymous2Int1, paramAnonymous2Int2, paramAnonymous2Int3);
            SignUpFragment.b(SignUpFragment.this).setText(SignUpFragment.d(SignUpFragment.this).format(SignUpFragment.c(SignUpFragment.this).getTime()));
          }
        }, SignUpFragment.c(SignUpFragment.this).get(1), SignUpFragment.c(SignUpFragment.this).get(2), SignUpFragment.c(SignUpFragment.this).get(5));
        paramAnonymousView.getDatePicker().setMaxDate(System.currentTimeMillis());
        paramAnonymousView.setOnDismissListener(new DialogInterface.OnDismissListener()
        {
          public final void onDismiss(DialogInterface paramAnonymous2DialogInterface)
          {
            SignUpFragment.e(SignUpFragment.this).requestFocus();
            SignUpFragment.e(SignUpFragment.this).performClick();
          }
        });
        paramAnonymousView.show();
      }
    });
    e = ((TextInputLayout)paramView.findViewById(2131690325));
    e.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SignUpFragment.f(SignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    f = ((TextInputLayout)paramView.findViewById(2131690328));
    f.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        SignUpFragment.g(SignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SignUpFragment.g(SignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    g = ((TextInputLayout)paramView.findViewById(2131690063));
    g.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SignUpFragment.h(SignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    h = ((TextInputLayout)paramView.findViewById(2131690330));
    h.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SignUpFragment.i(SignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    i = ((TextInputLayout)paramView.findViewById(2131690065));
    i.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SignUpFragment.j(SignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    j = ((TextInputLayout)paramView.findViewById(2131690332));
    j.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SignUpFragment.k(SignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    s = ((EditText)paramView.findViewById(2131690331));
    s.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 5)
        {
          SignUpFragment.l(SignUpFragment.this);
          SignUpFragment.b(SignUpFragment.this).performClick();
        }
        return false;
      }
    });
    l = ((TextInputLayout)paramView.findViewById(2131690336));
    l.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SignUpFragment.m(SignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    v = ((Spinner)paramView.findViewById(2131690334));
    paramBundle = ArrayAdapter.createFromResource(getActivity(), 2131623955, 17367048);
    paramBundle.setDropDownViewResource(17367049);
    v.setAdapter(paramBundle);
    v.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        ((TextView)SignUpFragment.e(SignUpFragment.this).getSelectedView()).setError(null);
        if (paramAnonymousInt != 0)
        {
          SignUpFragment.e(SignUpFragment.this).clearFocus();
          SignUpFragment.l(SignUpFragment.this);
          SignUpFragment.n(SignUpFragment.this).requestFocus();
          SignUpFragment.n(SignUpFragment.this).performClick();
        }
      }
      
      public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
    });
    r = ((EditText)paramView.findViewById(2131690337));
    w = ((Spinner)paramView.findViewById(2131690335));
    paramBundle = ArrayAdapter.createFromResource(getActivity(), 2131623965, 17367048);
    paramBundle.setDropDownViewResource(17367049);
    w.setAdapter(paramBundle);
    w.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        ((TextView)SignUpFragment.n(SignUpFragment.this).getSelectedView()).setError(null);
        if (paramAnonymousInt != 0)
        {
          SignUpFragment.n(SignUpFragment.this).clearFocus();
          SignUpFragment.o(SignUpFragment.this).requestFocus();
          SignUpFragment.p(SignUpFragment.this);
        }
      }
      
      public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
    });
    paramBundle = (TextView)paramView.findViewById(2131690072);
    Object localObject = new SpannableString(getString(2131230822));
    int i1 = getString(2131230822).indexOf(getString(2131231320));
    int i2 = getString(2131231320).length();
    ((SpannableString)localObject).setSpan(new NoUnderlineClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignUpFragment.a(SignUpFragment.this, getString(2131231321));
      }
    }, i1, i2 + i1, 33);
    i1 = getString(2131230822).indexOf(getString(2131231202));
    i2 = getString(2131231202).length();
    ((SpannableString)localObject).setSpan(new NoUnderlineClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignUpFragment.a(SignUpFragment.this, getString(2131231203));
      }
    }, i1, i2 + i1, 33);
    i1 = getString(2131230822).indexOf(getString(2131231368));
    i2 = getString(2131231368).length();
    ((SpannableString)localObject).setSpan(new NoUnderlineClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignUpFragment.a(SignUpFragment.this, getString(2131231369));
      }
    }, i1, i2 + i1, 33);
    paramBundle.setMovementMethod(LinkMovementMethod.getInstance());
    paramBundle.setText((CharSequence)localObject);
    paramView.findViewById(2131689976).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignUpFragment.q(SignUpFragment.this);
      }
    });
    m = ((CheckBox)paramView.findViewById(2131690071));
    paramBundle = (TextView)paramView.findViewById(2131689977);
    localObject = new SpannableStringBuilder(getString(2131230838) + " ");
    i1 = ((SpannableStringBuilder)localObject).length();
    ((SpannableStringBuilder)localObject).append(getString(2131231259));
    ((SpannableStringBuilder)localObject).setSpan(new NoUnderlineClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        SignUpFragment.r(SignUpFragment.this);
      }
    }, i1, ((SpannableStringBuilder)localObject).length(), 33);
    paramBundle.setMovementMethod(LinkMovementMethod.getInstance());
    paramBundle.setText((CharSequence)localObject);
    A = paramView.findViewById(2131690070);
    if (z)
    {
      A.setVisibility(0);
      A.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SignUpFragment.s(SignUpFragment.this);
        }
      });
      return;
    }
    A.setVisibility(8);
  }
  
  public void setFragmentCallback(BaseFragmentCallBack paramBaseFragmentCallBack)
  {
    q = paramBaseFragmentCallBack;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SignUpFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */