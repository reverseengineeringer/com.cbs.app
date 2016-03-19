package com.cbs.app.livetv.fragment;

import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.SpannableString;
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
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.livetv.controllers.SignInSignUpController;
import com.cbs.app.livetv.model.Person;
import com.cbs.app.livetv.util.MessageUtil;
import com.cbs.app.livetv.widget.NoUnderlineClickableSpan;
import com.cbs.app.view.AbstractFragmentActivity;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.utils.Util;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;

public class SocialSignUpFragment
  extends Fragment
  implements SignInSignUpCallBack
{
  private static final String a = SocialSignUpFragment.class.getSimpleName();
  private final int b = 6;
  private MVPDConfig c;
  private SimpleDateFormat d = new SimpleDateFormat("MMM d, yyyy", Locale.US);
  private TextInputLayout e;
  private TextInputLayout f;
  private TextInputLayout g;
  private TextInputLayout h;
  private TextInputLayout i;
  private CheckBox j;
  private ScrollView k;
  private BaseFragmentCallBack l;
  private SignInSignUpController m;
  private Person n;
  private EditText o;
  private EditText p;
  private BackButtonListener q = new BackButtonListener()
  {
    public final boolean c()
    {
      if (SocialSignUpFragment.a(SocialSignUpFragment.this) != null)
      {
        AccountUIHelper.a(getActivity(), null);
        SocialSignUpFragment.a(SocialSignUpFragment.this).a(1007, null);
      }
      return true;
    }
    
    public final String getTag()
    {
      return SocialSignUpFragment.a();
    }
  };
  private Spinner r;
  private Spinner s;
  
  public static SocialSignUpFragment a(MVPDConfig paramMVPDConfig)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("mvpd", paramMVPDConfig);
    paramMVPDConfig = new SocialSignUpFragment();
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
        return;
        switch (paramInt)
        {
        default: 
          return;
        }
      } while (l == null);
      l.a(1008, null);
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
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = ((MVPDConfig)getArguments().getParcelable("mvpd"));
    HashMap localHashMap = new HashMap();
    localHashMap.put("pageTitle", "live-tv|cbsreg|update");
    localHashMap.put("evar_6", "liveTV|cbsreg|update");
    localHashMap.put("evar_10", "cbsreg_update");
    localHashMap.put("pageView", Boolean.TRUE.toString());
    if (c != null) {}
    for (paramBundle = c.getMvpd();; paramBundle = "")
    {
      localHashMap.put("evar_32", paramBundle);
      AnalyticsManager.a(getActivity(), Action.dx, localHashMap);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    m = new SignInSignUpController(getContext(), "Live TV");
    m.setSignInSignUpCallback(this);
    return paramLayoutInflater.inflate(2130903184, paramViewGroup, false);
  }
  
  public void onDestroy()
  {
    m.a();
    if (l != null) {
      l.a(1010, q);
    }
    l = null;
    super.onDestroy();
  }
  
  public void onViewCreated(View paramView, final Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    ((AbstractFragmentActivity)getActivity()).a(q);
    n = new Person();
    paramBundle = getArguments();
    if (paramBundle != null)
    {
      n.i.b = paramBundle.getString("provider_token", null);
      n.i.c = paramBundle.getString("provider_secret", null);
      i1 = paramBundle.getInt("provider_name");
      n.i.a = com.cbs.app.livetv.model.SocialNames.values()[i1];
    }
    k = ((ScrollView)paramView.findViewById(2131689598));
    paramBundle = Calendar.getInstance();
    o = ((EditText)paramView.findViewById(2131690333));
    o.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SocialSignUpFragment.b(SocialSignUpFragment.this).setError(null);
        paramAnonymousView = new DatePickerDialog(getActivity(), new DatePickerDialog.OnDateSetListener()
        {
          public final void onDateSet(DatePicker paramAnonymous2DatePicker, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3)
          {
            a.set(paramAnonymous2Int1, paramAnonymous2Int2, paramAnonymous2Int3);
            SocialSignUpFragment.b(SocialSignUpFragment.this).setText(SocialSignUpFragment.c(SocialSignUpFragment.this).format(a.getTime()));
            SocialSignUpFragment.d(SocialSignUpFragment.this).requestFocus();
            SocialSignUpFragment.d(SocialSignUpFragment.this).performClick();
          }
        }, paramBundle.get(1), paramBundle.get(2), paramBundle.get(5));
        paramAnonymousView.getDatePicker().setMaxDate(System.currentTimeMillis());
        paramAnonymousView.show();
      }
    });
    e = ((TextInputLayout)paramView.findViewById(2131690325));
    e.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SocialSignUpFragment.e(SocialSignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    f = ((TextInputLayout)paramView.findViewById(2131690328));
    f.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        SocialSignUpFragment.f(SocialSignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SocialSignUpFragment.f(SocialSignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    g = ((TextInputLayout)paramView.findViewById(2131690063));
    g.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SocialSignUpFragment.g(SocialSignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    h = ((TextInputLayout)paramView.findViewById(2131690330));
    h.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SocialSignUpFragment.h(SocialSignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    h.a().setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 5)
        {
          Util.a(getActivity());
          SocialSignUpFragment.b(SocialSignUpFragment.this).requestFocus();
          SocialSignUpFragment.b(SocialSignUpFragment.this).performClick();
        }
        return false;
      }
    });
    i = ((TextInputLayout)paramView.findViewById(2131690336));
    i.a().addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SocialSignUpFragment.i(SocialSignUpFragment.this).setErrorEnabled(false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    r = ((Spinner)paramView.findViewById(2131690334));
    Object localObject = ArrayAdapter.createFromResource(getActivity(), 2131623955, 17367048);
    ((ArrayAdapter)localObject).setDropDownViewResource(17367049);
    r.setAdapter((SpinnerAdapter)localObject);
    r.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        ((TextView)SocialSignUpFragment.d(SocialSignUpFragment.this).getSelectedView()).setError(null);
        if (paramAnonymousInt != 0)
        {
          SocialSignUpFragment.d(SocialSignUpFragment.this).clearFocus();
          Util.a(getActivity());
          SocialSignUpFragment.j(SocialSignUpFragment.this).requestFocus();
          SocialSignUpFragment.j(SocialSignUpFragment.this).performClick();
        }
      }
      
      public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
    });
    p = ((EditText)paramView.findViewById(2131690337));
    s = ((Spinner)paramView.findViewById(2131690335));
    localObject = ArrayAdapter.createFromResource(getActivity(), 2131623965, 17367048);
    ((ArrayAdapter)localObject).setDropDownViewResource(17367049);
    s.setAdapter((SpinnerAdapter)localObject);
    s.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        ((TextView)SocialSignUpFragment.j(SocialSignUpFragment.this).getSelectedView()).setError(null);
        if (paramAnonymousInt != 0)
        {
          SocialSignUpFragment.j(SocialSignUpFragment.this).clearFocus();
          SocialSignUpFragment.k(SocialSignUpFragment.this).requestFocus();
          SocialSignUpFragment.l(SocialSignUpFragment.this);
        }
      }
      
      public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
    });
    localObject = (TextView)paramView.findViewById(2131690072);
    SpannableString localSpannableString = new SpannableString(getString(2131230822));
    int i1 = getString(2131230822).indexOf(getString(2131231320));
    int i2 = getString(2131231320).length();
    localSpannableString.setSpan(new NoUnderlineClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        SocialSignUpFragment.a(SocialSignUpFragment.this, getString(2131231321));
      }
    }, i1, i2 + i1, 33);
    i1 = getString(2131230822).indexOf(getString(2131231202));
    i2 = getString(2131231202).length();
    localSpannableString.setSpan(new NoUnderlineClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        SocialSignUpFragment.a(SocialSignUpFragment.this, getString(2131231203));
      }
    }, i1, i2 + i1, 33);
    i1 = getString(2131230822).indexOf(getString(2131231368));
    i2 = getString(2131231368).length();
    localSpannableString.setSpan(new NoUnderlineClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        SocialSignUpFragment.a(SocialSignUpFragment.this, getString(2131231369));
      }
    }, i1, i2 + i1, 33);
    ((TextView)localObject).setMovementMethod(LinkMovementMethod.getInstance());
    ((TextView)localObject).setText(localSpannableString);
    j = ((CheckBox)paramView.findViewById(2131690071));
    paramView.findViewById(2131690073).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SocialSignUpFragment.a(SocialSignUpFragment.this, paramBundle, SocialSignUpFragment.d(SocialSignUpFragment.this), SocialSignUpFragment.j(SocialSignUpFragment.this));
      }
    });
    paramView.findViewById(2131690070).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SocialSignUpFragment.m(SocialSignUpFragment.this);
      }
    });
  }
  
  public void setFragmentCallback(BaseFragmentCallBack paramBaseFragmentCallBack)
  {
    l = paramBaseFragmentCallBack;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SocialSignUpFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */