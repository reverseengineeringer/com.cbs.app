package com.cbs.app.view;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AppCompatActivity;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import java.util.HashMap;

public abstract class AbstractAsyncFragment
  extends Fragment
  implements AsyncActivity
{
  protected static final String a = AbstractAsyncFragment.class.getSimpleName();
  public boolean b = false;
  public boolean c = false;
  protected Action d = null;
  protected String e = null;
  protected String f = null;
  protected AppCompatActivity g;
  private ProgressDialog h;
  
  public void b()
  {
    c();
  }
  
  public void c()
  {
    if ((getActivity() != null) && (!getActivity().isFinishing()))
    {
      if (h == null)
      {
        h = new ProgressDialog(getActivity(), 2131427747);
        h.setIndeterminate(true);
        h.setCanceledOnTouchOutside(false);
        h.setProgressStyle(16973853);
        h.setIndeterminateDrawable(getResources().getDrawable(2130837778));
      }
      h.show();
      new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
      {
        public final void run()
        {
          if ((AbstractAsyncFragment.a(AbstractAsyncFragment.this) != null) && (AbstractAsyncFragment.a(AbstractAsyncFragment.this).isShowing()) && (getActivity() != null) && (!getActivity().isFinishing())) {
            AbstractAsyncFragment.a(AbstractAsyncFragment.this).cancel();
          }
        }
      }, 15000L);
    }
  }
  
  public void d()
  {
    if ((g != null) && (!g.isFinishing()) && (h != null) && (h.isShowing())) {
      h.cancel();
    }
  }
  
  public MainApplication getApplicationContext()
  {
    Object localObject2 = null;
    FragmentActivity localFragmentActivity = getActivity();
    Object localObject1 = localObject2;
    if (localFragmentActivity != null)
    {
      Context localContext = localFragmentActivity.getApplicationContext();
      localObject1 = localObject2;
      if (localContext != null)
      {
        localObject1 = localObject2;
        if ((localContext instanceof MainApplication)) {
          localObject1 = (MainApplication)localFragmentActivity.getApplicationContext();
        }
      }
    }
    return (MainApplication)localObject1;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    g = ((AppCompatActivity)paramActivity);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onDetach()
  {
    super.onDetach();
    g = null;
  }
  
  public void onPause()
  {
    super.onPause();
    if ((h != null) && (h.isShowing())) {
      h.dismiss();
    }
    h = null;
  }
  
  public void onResume()
  {
    super.onResume();
    if (d != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("pageView", "anything");
      if (e != null) {
        localHashMap.put("ShowTitle", e);
      }
      if (f != null) {
        localHashMap.put("showId", f);
      }
      if ((e != null) && (f != null))
      {
        String str = "cbscom:" + f + "|" + e;
        localHashMap.put("evar_63", str);
        localHashMap.put("prop_63", str);
      }
      AnalyticsManager.a(getActivity(), d, localHashMap);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    FragmentActivity localFragmentActivity = getActivity();
    if ((c) && (!b) && (localFragmentActivity != null))
    {
      InterstitialAdManagerV2.a(localFragmentActivity);
      b = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.AbstractAsyncFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */