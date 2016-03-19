package com.cbs.app.view.fragments.show.cast;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.ShowFragmentV2;
import com.cbs.app.view.model.DeviceCast;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.rest.DeviceCastEndpointResponse;
import com.cbs.app.view.model.rest.DeviceCastResponse;
import com.cbs.app.view.utils.GoogleAppIndexDeepLinkUtil;
import com.cbs.app.view.utils.Util;
import com.google.android.gms.appindexing.c;
import com.google.android.gms.common.api.b.a;
import java.util.ArrayList;
import java.util.List;

public class CastFragment
  extends AbstractAsyncFragment
{
  private static final String j = CastFragment.class.getSimpleName();
  private static Uri k = null;
  private static Uri l = null;
  public boolean h = false;
  ResponseModelListener i = new ResponseModelListener()
  {
    public final void a()
    {
      Log.e(CastFragment.g(), "fail");
      f();
      h = true;
      Log.e(CastFragment.g(), "after");
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      Log.e(CastFragment.g(), "castListener success");
      if ((paramAnonymousResponseModel instanceof DeviceCastEndpointResponse))
      {
        paramAnonymousResponseModel = (DeviceCastEndpointResponse)paramAnonymousResponseModel;
        DeviceCastResponse localDeviceCastResponse = paramAnonymousResponseModel.getCastResponse();
        if (localDeviceCastResponse != null) {
          CastFragment.a(CastFragment.this, localDeviceCastResponse.getCastList());
        }
        paramAnonymousResponseModel = paramAnonymousResponseModel.getHostResponse();
        if (paramAnonymousResponseModel != null) {
          CastFragment.b(CastFragment.this, paramAnonymousResponseModel.getCastList());
        }
      }
      h = true;
      CastFragment.a(CastFragment.this);
    }
  };
  private Show m;
  private LayoutInflater n = null;
  private ViewGroup o = null;
  private View p = null;
  private int q = 0;
  private List<DeviceCast> r = null;
  private List<DeviceCast> s = null;
  private com.google.android.gms.common.api.b t;
  private DeviceCast u;
  private boolean v = false;
  private BackButtonListener w = new BackButtonListener()
  {
    public final boolean c()
    {
      CastFragment.g();
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (CastFragment.b(CastFragment.this) != null)
      {
        bool1 = bool2;
        if (CastFragment.c(CastFragment.this))
        {
          if ((!Util.g(CastFragment.d(CastFragment.this))) && (!Util.f(CastFragment.e(CastFragment.this)))) {
            break label184;
          }
          switch (CastFragment.f(CastFragment.this))
          {
          default: 
            CastFragment.g();
          }
        }
      }
      for (;;)
      {
        bool1 = true;
        label184:
        do
        {
          return bool1;
          CastFragment.g();
          localObject = getActivity().getSupportFragmentManager().findFragmentByTag("fragment_show_home");
          if ((localObject != null) && ((localObject instanceof ShowFragmentV2)))
          {
            localObject = (ShowFragmentV2)localObject;
            ((ShowFragmentV2)localObject).e();
            ((ShowFragmentV2)localObject).f();
          }
          return true;
          CastFragment.g();
          CastFragment.a(CastFragment.this);
          break;
          CastFragment.g();
          CastFragment.g(CastFragment.this);
          break;
          CastFragment.g();
          CastFragment.a();
          break;
          if (Util.i(CastFragment.h(CastFragment.this))) {
            break label212;
          }
          bool1 = bool2;
        } while (!Util.j(CastFragment.i(CastFragment.this)));
        label212:
        Object localObject = getActivity().getSupportFragmentManager().findFragmentByTag("fragment_show_home");
        if ((localObject != null) && ((localObject instanceof ShowFragmentV2))) {
          ((ShowFragmentV2)localObject).e();
        }
      }
    }
    
    public final String getTag()
    {
      return CastFragment.g();
    }
  };
  
  public CastFragment()
  {
    setRetainInstance(true);
  }
  
  public static void a() {}
  
  private void a(String paramString)
  {
    if (p != null)
    {
      Object localObject = p.findViewById(2131689682);
      if ((localObject != null) && ((localObject instanceof ViewGroup)))
      {
        localObject = (ViewGroup)localObject;
        ((ViewGroup)localObject).removeAllViews();
        ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
        ((ViewGroup)localObject).setPadding(Util.a(g, 12.0D), Util.a(g, 12.0D), Util.a(g, 12.0D), Util.a(g, 12.0D));
        TextView localTextView = new TextView(g);
        localTextView.setText(paramString);
        localTextView.setTypeface(null, 1);
        paramString = new DisplayMetrics();
        g.getWindowManager().getDefaultDisplay().getMetrics(paramString);
        localTextView.setTextSize(0, (int)g.getResources().getDimension(2131361811));
        ((ViewGroup)localObject).addView(localTextView, localLayoutParams);
      }
    }
  }
  
  private void h()
  {
    q = 0;
    if ((v) && (g != null) && (p != null))
    {
      if (((r == null) || (r.size() <= 0)) && ((s == null) || (s.size() <= 0))) {
        break label295;
      }
      Object localObject = new Bundle();
      ((Bundle)localObject).putParcelableArrayList("deviceCastList", (ArrayList)r);
      ((Bundle)localObject).putParcelableArrayList("deviceHostList", (ArrayList)s);
      CastMemberListFragment localCastMemberListFragment = new CastMemberListFragment();
      localCastMemberListFragment.setArguments((Bundle)localObject);
      localObject = getChildFragmentManager().beginTransaction();
      int i1 = 2131689684;
      if ((Util.g(g)) || (Util.f(g))) {
        i1 = 2131689683;
      }
      if (p.findViewById(i1) != null)
      {
        ((FragmentTransaction)localObject).replace(i1, localCastMemberListFragment);
        ((FragmentTransaction)localObject).commitAllowingStateLoss();
      }
      if ((!Util.g(g)) && (!Util.f(g))) {
        if ((r != null) && (r.size() > 0))
        {
          if (u != null) {
            break label275;
          }
          setDeviceCast((DeviceCast)r.get(0));
        }
      }
    }
    for (;;)
    {
      if ((s != null) && (s.size() > 0))
      {
        if (u != null) {
          break;
        }
        setDeviceCast((DeviceCast)s.get(0));
      }
      return;
      label275:
      setDeviceCast(u);
    }
    setDeviceCast(u);
    return;
    label295:
    u = null;
    a("No Cast Members");
  }
  
  private void i()
  {
    q = 1;
    if ((p != null) && (v))
    {
      Object localObject = new Bundle();
      ((Bundle)localObject).putParcelable("deviceCast", u);
      CastMemberComboFragment localCastMemberComboFragment = new CastMemberComboFragment();
      localCastMemberComboFragment.setArguments((Bundle)localObject);
      localObject = getChildFragmentManager().beginTransaction();
      if (p.findViewById(2131689683) != null)
      {
        ((FragmentTransaction)localObject).replace(2131689683, localCastMemberComboFragment);
        ((FragmentTransaction)localObject).commitAllowingStateLoss();
      }
    }
  }
  
  public final void e()
  {
    q = 2;
    if ((p != null) && (v))
    {
      Object localObject = new Bundle();
      ((Bundle)localObject).putParcelable("deviceCast", u);
      CastMemberTweetFragment localCastMemberTweetFragment = new CastMemberTweetFragment();
      localCastMemberTweetFragment.setArguments((Bundle)localObject);
      localObject = getChildFragmentManager().beginTransaction();
      if (p.findViewById(2131689683) != null)
      {
        ((FragmentTransaction)localObject).replace(2131689683, localCastMemberTweetFragment);
        ((FragmentTransaction)localObject).commitAllowingStateLoss();
      }
    }
  }
  
  public final void f()
  {
    u = null;
    a("Unable to retrieve the data for this view. Please try again later.");
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if ((Util.a(paramConfiguration)) || (Util.b(paramConfiguration)))
    {
      paramConfiguration = n.inflate(2130903080, null);
      ViewGroup localViewGroup = (ViewGroup)getView();
      localViewGroup.removeAllViews();
      if (paramConfiguration != null) {
        localViewGroup.addView(paramConfiguration);
      }
      v = true;
      h();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    v = true;
    if ((Util.i(g)) || (Util.j(g))) {
      c = true;
    }
    n = paramLayoutInflater;
    o = paramViewGroup;
    p = n.inflate(2130903080, o, false);
    if ((g instanceof NavigationActivity)) {
      ((NavigationActivity)g).a(w);
    }
    m = ((Show)getArguments().getParcelable("show"));
    if ((m != null) && (m != null)) {
      new ShowServiceImpl().d(g, Long.valueOf(m.getShowId()).toString(), i);
    }
    t = new b.a(g).a(com.google.android.gms.appindexing.b.b).b();
    return p;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if ((g instanceof NavigationActivity)) {
      ((NavigationActivity)g).b(w);
    }
    p = null;
    n = null;
    o = null;
  }
  
  public void onDetach()
  {
    super.onDetach();
  }
  
  public void onPause()
  {
    super.onPause();
    v = false;
  }
  
  public void onResume()
  {
    d = Action.l;
    if (m != null)
    {
      e = m.getTitle();
      f = Long.valueOf(m.getId()).toString();
    }
    super.onResume();
    v = true;
  }
  
  public void onStart()
  {
    super.onStart();
    t.c();
    String str1 = GoogleAppIndexDeepLinkUtil.a(m, null, "cast");
    String str2 = GoogleAppIndexDeepLinkUtil.b(m, null, "cast");
    if ((str1 != null) && (str2 != null))
    {
      k = Uri.parse(str1);
      l = Uri.parse(str2);
      str1 = m.getTitle() + " cast - CBS.com";
      com.google.android.gms.appindexing.b.c.a(t, k, str1, l);
    }
  }
  
  public void onStop()
  {
    super.onStop();
    com.google.android.gms.appindexing.b.c.a(t, k);
    t.d();
  }
  
  public void setDeviceCast(DeviceCast paramDeviceCast)
  {
    new StringBuilder("setDeviceCast: ").append(paramDeviceCast.getId()).append(" ").append(paramDeviceCast.getTitle());
    Bundle localBundle;
    if ((p != null) && (v))
    {
      u = paramDeviceCast;
      localBundle = new Bundle();
      localBundle.putParcelable("deviceCast", u);
      localBundle.putParcelable("show", m);
      if ((!Util.g(g)) && (!Util.f(g))) {
        break label104;
      }
      i();
    }
    label104:
    FragmentTransaction localFragmentTransaction;
    do
    {
      do
      {
        return;
        paramDeviceCast = p.findViewById(2131689687);
        localObject = p.findViewById(2131689688);
      } while ((paramDeviceCast == null) || (localObject == null));
      localFragmentTransaction = getChildFragmentManager().beginTransaction();
    } while (u == null);
    Object localObject = u.getTwitterScreenName();
    paramDeviceCast = (DeviceCast)localObject;
    if (localObject != null) {
      paramDeviceCast = ((String)localObject).replace(" ", "");
    }
    if ((paramDeviceCast != null) && (!paramDeviceCast.equals("")) && (!paramDeviceCast.equals("null")))
    {
      paramDeviceCast = new CastMemberComboFragment();
      paramDeviceCast.setArguments(localBundle);
      localFragmentTransaction.replace(2131689687, paramDeviceCast, "castmember_combo_fragment");
      paramDeviceCast = new CastMemberTweetFragment();
      paramDeviceCast.setArguments(localBundle);
      localFragmentTransaction.replace(2131689688, paramDeviceCast, "castmember_tweet_fragment");
    }
    for (;;)
    {
      localFragmentTransaction.commitAllowingStateLoss();
      return;
      paramDeviceCast = new CastMemberImageFragment();
      paramDeviceCast.setArguments(localBundle);
      localFragmentTransaction.replace(2131689687, paramDeviceCast, "castmember_image_fragment");
      paramDeviceCast = new CastMemberComboFragment();
      localBundle.putBoolean("showImage", false);
      paramDeviceCast.setArguments(localBundle);
      localFragmentTransaction.replace(2131689688, paramDeviceCast, "castmember_bio_fragment");
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */