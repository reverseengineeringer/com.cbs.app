package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.cbs.app.adobepass.MvpdLogoutActivity;
import com.cbs.app.analytics.Action;
import com.cbs.app.livetv.callbacks.MVPDCallbacks;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.livetv.fragment.MVPDSettingsLogOutFragment;
import com.cbs.app.livetv.fragment.MVPDSettingsLogOutFragment.OnLogOutSelectedListener;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.ArrayList;

public class SettingsFragment
  extends AbstractAsyncFragment
  implements MVPDSettingsLogOutFragment.OnLogOutSelectedListener
{
  private static final String i = SettingsFragment.class.getSimpleName();
  private static ArrayList<MenuHolder> j = new ArrayList();
  AccountUIHelper.RefreshAccountListener h = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      SettingsFragment.f();
      AccountUIHelper.setReconcileDialogShowing(false);
    }
  };
  private int k = 0;
  private View l;
  private boolean m = false;
  private final BackButtonListener n = new BackButtonListener()
  {
    public final boolean c()
    {
      SettingsFragment.f();
      boolean bool2 = false;
      boolean bool1 = bool2;
      Bundle localBundle;
      if (SettingsFragment.a(SettingsFragment.this) != null)
      {
        bool1 = bool2;
        if (SettingsFragment.b(SettingsFragment.this))
        {
          if ((!Util.i(SettingsFragment.c(SettingsFragment.this))) && (!Util.j(SettingsFragment.d(SettingsFragment.this)))) {
            break label177;
          }
          if (SettingsFragment.e(SettingsFragment.this) != 1) {
            break label135;
          }
          SettingsFragment.f(SettingsFragment.this);
          localBundle = new Bundle();
          if (!Util.m(SettingsFragment.g(SettingsFragment.this))) {
            break label116;
          }
          a(2131690211, "settingsaccount_fragment", localBundle, AccountFragment.class, "");
          bool1 = true;
        }
      }
      label116:
      label135:
      label177:
      do
      {
        do
        {
          do
          {
            do
            {
              return bool1;
              a(2131690211, "settingsappversion_fragment", localBundle, AppVersionFragment.class, "");
              break;
              bool1 = bool2;
            } while (SettingsFragment.h(SettingsFragment.this) == null);
            bool1 = bool2;
          } while (!(SettingsFragment.i(SettingsFragment.this) instanceof NavigationActivity));
          ((NavigationActivity)SettingsFragment.j(SettingsFragment.this)).k();
          return true;
          if (SettingsFragment.e(SettingsFragment.this) == 1)
          {
            SettingsFragment.f(SettingsFragment.this);
            a(2131690211, "settingsmenu_fragment", null, MenuFragment.class, "");
            return true;
          }
          bool1 = bool2;
        } while (SettingsFragment.k(SettingsFragment.this) == null);
        bool1 = bool2;
      } while (!(SettingsFragment.l(SettingsFragment.this) instanceof NavigationActivity));
      ((NavigationActivity)SettingsFragment.m(SettingsFragment.this)).k();
      return true;
    }
    
    public final String getTag()
    {
      return SettingsFragment.f();
    }
  };
  private MVPDCallbacks o = new MVPDCallbacks()
  {
    public final boolean a()
    {
      return true;
    }
    
    public final boolean a(String paramAnonymousString)
    {
      return true;
    }
    
    public final boolean a(ArrayList<MVPDConfig> paramAnonymousArrayList, boolean paramAnonymousBoolean)
    {
      return true;
    }
    
    public final boolean a(boolean paramAnonymousBoolean)
    {
      SettingsFragment.a(SettingsFragment.this, paramAnonymousBoolean);
      return true;
    }
    
    public final boolean b(String paramAnonymousString)
    {
      Intent localIntent = new Intent(getActivity(), MvpdLogoutActivity.class);
      localIntent.putExtra("url", paramAnonymousString);
      getParentFragment().startActivityForResult(localIntent, 9002);
      return true;
    }
    
    public final boolean b(boolean paramAnonymousBoolean)
    {
      return true;
    }
  };
  
  public SettingsFragment()
  {
    setRetainInstance(true);
  }
  
  public final void a()
  {
    new Handler().postDelayed(new Runnable()
    {
      public final void run()
      {
        SettingsFragment.a(SettingsFragment.this, false);
      }
    }, 100L);
  }
  
  public final void a(int paramInt)
  {
    if (((Util.i(g)) || (Util.j(g))) && (paramInt == 0)) {}
    MenuHolder localMenuHolder;
    for (k = 0;; k = 1)
    {
      if ((j != null) && (j.size() > paramInt))
      {
        localMenuHolder = (MenuHolder)j.get(paramInt);
        if ((localMenuHolder != null) && ((paramInt != 0) || ((!Util.g(g)) && (!Util.f(g))))) {
          break;
        }
      }
      return;
    }
    if (MenuHolder.a(localMenuHolder) == null)
    {
      VideoUtil.a(g);
      return;
    }
    a(2131690211, MenuHolder.b(localMenuHolder), null, MenuHolder.a(localMenuHolder), MenuHolder.c(localMenuHolder));
  }
  
  public final void a(int paramInt, String paramString1, Bundle paramBundle, Class<? extends Fragment> paramClass, String paramString2)
  {
    new StringBuilder("replace:").append(paramInt).append(" tag:").append(paramString1).append(" classType:").append(paramClass.getSimpleName());
    FragmentTransaction localFragmentTransaction;
    if ((m) && (l != null) && (l.findViewById(paramInt) != null))
    {
      localFragmentTransaction = getChildFragmentManager().beginTransaction();
      if ((Util.h(g)) && (!paramString1.equals("settingsmenu_fragment")) && (!paramString1.equals("settingsaccount_fragment"))) {
        localFragmentTransaction.addToBackStack(null);
      }
      if (paramString2.equals("")) {
        break label167;
      }
      paramClass = new Bundle();
      paramClass.putString("pageUrl", paramString2);
      paramBundle = new SettingsWebviewFragment();
      paramBundle.setArguments(paramClass);
    }
    for (;;)
    {
      localFragmentTransaction.replace(paramInt, paramBundle, paramString1);
      localFragmentTransaction.commitAllowingStateLoss();
      return;
      label167:
      paramBundle = Fragment.instantiate(g, paramClass.getName(), paramBundle);
    }
  }
  
  public final void e()
  {
    k = 0;
    Bundle localBundle = new Bundle();
    if ((Util.i(g)) || (Util.j(g)))
    {
      a(2131690212, "settingsmenu_fragment", localBundle, MenuFragment.class, "");
      a(2131690211, "settingsaccount_fragment", localBundle, AccountFragment.class, "");
      return;
    }
    a(2131690211, "settingsmenu_fragment", localBundle, MenuFragment.class, "");
  }
  
  public ArrayList<MenuHolder> getMenuItems()
  {
    return j;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    new StringBuilder("onActivityResult: requestCode = ").append(paramInt1).append(", resultCode = ").append(paramInt2);
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    Fragment localFragment;
    do
    {
      do
      {
        return;
        localFragment = getChildFragmentManager().findFragmentByTag("settingsdisconnectprovider_fragment");
      } while ((localFragment == null) || (!(localFragment instanceof MVPDSettingsLogOutFragment)));
      localFragment.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      localFragment = getChildFragmentManager().findFragmentByTag("settingsdebug_fragment");
    } while ((localFragment == null) || (!(localFragment instanceof DebugFragment)));
    localFragment.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    MVPDController.getInstance().setMVPDCallbacks(o);
    MVPDController.getInstance().h();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    AccountUIHelper.a(h);
    m = true;
    l = paramLayoutInflater.inflate(2130903254, paramViewGroup, false);
    if ((g instanceof NavigationActivity)) {
      ((NavigationActivity)g).a(n);
    }
    return l;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    MVPDController.getInstance().setMVPDCallbacks(null);
    if ((g instanceof NavigationActivity)) {
      ((NavigationActivity)g).b(n);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    m = false;
  }
  
  public void onResume()
  {
    d = Action.p;
    super.onResume();
    m = true;
    AccountUIHelper.setReconcileDialogShowing(false);
    AccountUIHelper.i(g);
    FragmentActivity localFragmentActivity = getActivity();
    if ((localFragmentActivity != null) && ((localFragmentActivity instanceof NavigationActivity))) {
      ((NavigationActivity)localFragmentActivity).a(-1L, Util.c("settings_fragment"));
    }
  }
  
  public static class MenuHolder
  {
    private String a;
    private String b;
    private String c;
    private Class<? extends Fragment> d;
    
    public MenuHolder(String paramString1, String paramString2, Class<? extends Fragment> paramClass, String paramString3)
    {
      if (paramClass != null)
      {
        SettingsFragment.f();
        new StringBuilder("contstructor name:").append(paramString1).append(" tag:").append(paramString2).append(" classType:").append(paramClass.getSimpleName());
      }
      b = paramString1;
      a = paramString2;
      d = paramClass;
      c = paramString3;
    }
    
    public String getName()
    {
      return b;
    }
    
    public String getTag()
    {
      return a;
    }
    
    public void setName(String paramString)
    {
      b = paramString;
    }
    
    public void setTag(String paramString)
    {
      a = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.SettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */