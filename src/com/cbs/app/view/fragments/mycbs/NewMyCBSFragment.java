package com.cbs.app.view.fragments.mycbs;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.menu.DrawerStatusListener;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;

public class NewMyCBSFragment
  extends AbstractAsyncFragment
{
  public static boolean h = false;
  private static final String n = NewMyCBSFragment.class.getSimpleName();
  private static int o;
  TabHost i = null;
  ViewPager j = null;
  boolean k = false;
  ViewPager.OnPageChangeListener l = new ViewPager.OnPageChangeListener()
  {
    public final void onPageScrollStateChanged(int paramAnonymousInt) {}
    
    public final void onPageScrolled(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
    
    public final void onPageSelected(int paramAnonymousInt)
    {
      NewMyCBSFragment.a();
      if ((i != null) && (j != null))
      {
        NewMyCBSFragment.a();
        i.setCurrentTab(paramAnonymousInt);
        b(paramAnonymousInt);
      }
    }
  };
  TabHost.OnTabChangeListener m = new TabHost.OnTabChangeListener()
  {
    public final void onTabChanged(String paramAnonymousString)
    {
      NewMyCBSFragment.a();
      if ((NewMyCBSFragment.this.i != null) && (j != null))
      {
        NewMyCBSFragment.a();
        int i = NewMyCBSFragment.this.i.getCurrentTab();
        j.setCurrentItem(i);
        a(i);
        paramAnonymousString = NewMyCBSFragment.this;
        if (i != 0) {
          break label75;
        }
      }
      label75:
      for (boolean bool = true;; bool = false)
      {
        paramAnonymousString.a(bool);
        return;
      }
    }
  };
  private final BackButtonListener p = new BackButtonListener()
  {
    public final boolean c()
    {
      d();
      NewMyCBSFragment.a();
      if (i.getCurrentTab() == 0)
      {
        if ((NewMyCBSFragment.a(NewMyCBSFragment.this) != null) && ((NewMyCBSFragment.b(NewMyCBSFragment.this) instanceof NavigationActivity)))
        {
          ((NavigationActivity)NewMyCBSFragment.c(NewMyCBSFragment.this)).k();
          return true;
        }
      }
      else if (i.getCurrentTab() == 1)
      {
        Fragment localFragment = getChildFragmentManager().findFragmentByTag("fragment_my_cbs");
        if ((localFragment != null) && ((localFragment instanceof NewMyCBSFragment)))
        {
          i.setCurrentTab(0);
          b(0);
          return true;
        }
      }
      return false;
    }
    
    public final String getTag()
    {
      return NewMyCBSFragment.a();
    }
  };
  private boolean q = false;
  private RelativeLayout r = null;
  private DrawerStatusListener s = new DrawerStatusListener()
  {
    public final void a()
    {
      NewMyCBSFragment.a();
    }
    
    public final void b()
    {
      NewMyCBSFragment.a();
      NewMyCBSFragment localNewMyCBSFragment;
      if (NewMyCBSFragment.d(NewMyCBSFragment.this) != null)
      {
        int i = NewMyCBSFragment.this.i.getCurrentTab();
        localNewMyCBSFragment = NewMyCBSFragment.this;
        if (i != 0) {
          break label42;
        }
      }
      label42:
      for (boolean bool = true;; bool = false)
      {
        localNewMyCBSFragment.a(bool);
        return;
      }
    }
  };
  private MyShowVideoFragment.MenuChangeListener t = new MyShowVideoFragment.MenuChangeListener()
  {
    public final void a(int paramAnonymousInt)
    {
      NewMyCBSFragment.c(paramAnonymousInt);
      if (Util.e(getContext())) {
        NewMyCBSFragment.e(NewMyCBSFragment.this).invalidateOptionsMenu();
      }
    }
  };
  
  public NewMyCBSFragment()
  {
    setRetainInstance(false);
  }
  
  private Fragment d(int paramInt)
  {
    FragmentPagerAdapter localFragmentPagerAdapter = (FragmentPagerAdapter)j.getAdapter();
    return getChildFragmentManager().findFragmentByTag("android:switcher:" + j.getId() + ":" + localFragmentPagerAdapter.getItemId(paramInt));
  }
  
  public final void a(int paramInt)
  {
    Action localAction;
    HashMap localHashMap;
    if (paramInt == 0)
    {
      localAction = Action.y;
      localHashMap = new HashMap();
      localHashMap.put("pageView", "anything");
      if (g != null) {
        AnalyticsManager.a(g, localAction, localHashMap);
      }
    }
    do
    {
      return;
      localAction = Action.x;
      localHashMap = new HashMap();
      localHashMap.put("pageView", "anything");
    } while (g == null);
    AnalyticsManager.a(g, localAction, localHashMap);
  }
  
  public final void a(boolean paramBoolean)
  {
    Button localButton2 = null;
    Button localButton1;
    if ((g != null) && (Util.h(g)))
    {
      localButton1 = (Button)g.findViewById(2131689489);
      localButton2 = (Button)g.findViewById(2131689488);
    }
    for (;;)
    {
      int i1;
      if (paramBoolean)
      {
        if (localButton1 != null) {
          localButton1.setVisibility(0);
        }
        if (localButton2 != null) {
          localButton2.setVisibility(8);
        }
        if (q) {
          i1 = 1;
        }
      }
      for (o = i1;; o = 2)
      {
        if (Util.e(g)) {
          g.invalidateOptionsMenu();
        }
        return;
        i1 = 0;
        break;
        if (localButton2 != null) {
          localButton2.setVisibility(0);
        }
        if (localButton1 != null) {
          localButton1.setVisibility(8);
        }
      }
      localButton1 = null;
    }
  }
  
  public final void b(int paramInt)
  {
    if (paramInt == 0) {
      if ((g != null) && ((g instanceof NavigationActivity))) {
        ((NavigationActivity)g).a(-1L, Util.c("fragment_my_shows_cbs"));
      }
    }
    while ((g == null) || (!(g instanceof NavigationActivity))) {
      return;
    }
    ((NavigationActivity)g).a(-1L, Util.c("recently_watched_fragment"));
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    setHasOptionsMenu(true);
    if ((paramActivity instanceof NavigationActivity)) {
      ((NavigationActivity)paramActivity).setDrawerStatusListner(s);
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if (Util.e(getActivity()))
    {
      paramMenuInflater = null;
      if (i.getCurrentTab() == 1) {
        o = 2;
      }
      switch (o)
      {
      }
    }
    for (;;)
    {
      if (paramMenuInflater != null) {
        paramMenuInflater.setShowAsAction(2);
      }
      if (h) {
        paramMenu.removeItem(2131689481);
      }
      return;
      paramMenuInflater = paramMenu.add(0, 2131689481, 10, "Edit");
      continue;
      paramMenuInflater = paramMenu.add(0, 2131689480, 20, "Done");
      continue;
      paramMenuInflater = paramMenu.add(0, 2131689478, 30, "Clear History");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if ((g instanceof NavigationActivity)) {
      ((NavigationActivity)g).a(p);
    }
    paramLayoutInflater = new RelativeLayout.LayoutParams(-1, -1);
    r = new RelativeLayout(g);
    r.setId(g.getResources().getInteger(2131492881));
    r.setLayoutParams(paramLayoutInflater);
    return r;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if ((g != null) && ((g instanceof NavigationActivity))) {
      ((NavigationActivity)g).b(p);
    }
    d();
  }
  
  public void onDetach()
  {
    d();
    super.onDetach();
    r = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    case 2131689479: 
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131689481: 
      paramMenuItem = d(0);
      if (paramMenuItem != null) {
        ((MyShowVideoFragment)paramMenuItem).h();
      }
      q = true;
      return true;
    case 2131689480: 
      paramMenuItem = d(0);
      if (paramMenuItem != null) {}
      for (boolean bool = ((MyShowVideoFragment)paramMenuItem).g();; bool = false)
      {
        q = bool;
        return true;
      }
    }
    paramMenuItem = d(1);
    if (paramMenuItem != null) {
      ((MyRecentlyWatchedFragment)paramMenuItem).a();
    }
    return true;
  }
  
  public void onResume()
  {
    d = null;
    super.onResume();
    new StringBuilder("onResume").append(k);
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramView = new RelativeLayout.LayoutParams(-1, -1);
    Object localObject2;
    if (g != null)
    {
      i = new TabHost(g);
      i.setId(g.getResources().getInteger(2131492882));
      paramBundle = new LinearLayout(g);
      paramBundle.setOrientation(1);
      localObject2 = new TabWidget(g);
      ((TabWidget)localObject2).setId(16908307);
      ((TabWidget)localObject2).setVisibility(0);
      ((TabWidget)localObject2).setOrientation(0);
      if (!Util.e(g)) {
        break label564;
      }
      paramBundle.addView((View)localObject2, new LinearLayout.LayoutParams(-1, -2, 0.0F));
    }
    for (;;)
    {
      Object localObject1 = new FrameLayout(g);
      ((FrameLayout)localObject1).setId(16908305);
      ((FrameLayout)localObject1).setVisibility(0);
      paramBundle.addView((View)localObject1, new LinearLayout.LayoutParams(0, 0, 0.0F));
      j = new ViewPager(g);
      j.setId(getActivity().getResources().getInteger(2131492883));
      localObject1 = new Vector();
      localObject2 = new Bundle();
      Object localObject3 = (MyShowVideoFragment)Fragment.instantiate(g, MyShowVideoFragment.class.getName(), (Bundle)localObject2);
      ((MyShowVideoFragment)localObject3).setMenuChangeListener(t);
      ((List)localObject1).add(localObject3);
      ((List)localObject1).add(Fragment.instantiate(g, MyRecentlyWatchedFragment.class.getName(), (Bundle)localObject2));
      localObject1 = new FragmentsPagerAdapter(getChildFragmentManager(), (List)localObject1);
      j.setAdapter((PagerAdapter)localObject1);
      j.setOnPageChangeListener(l);
      localObject1 = new LinearLayout.LayoutParams(-1, 0, 1.0F);
      gravity = 80;
      paramBundle.addView(j, (ViewGroup.LayoutParams)localObject1);
      i.addView(paramBundle, new FrameLayout.LayoutParams(-1, -1));
      i.setup();
      paramBundle = i.newTabSpec("My Shows");
      localObject1 = LayoutInflater.from(g).inflate(2130903230, null);
      if (localObject1 != null) {
        ((TextView)((View)localObject1).findViewById(2131690170)).setText("My Shows");
      }
      paramBundle.setIndicator((View)localObject1);
      paramBundle.setContent(new a(g));
      i.addTab(paramBundle);
      paramBundle = i.newTabSpec("Recently Watched");
      localObject1 = g.getLayoutInflater().inflate(2130903230, null);
      if (localObject1 != null)
      {
        ((TextView)((View)localObject1).findViewById(2131690170)).setText("Recently Watched");
        paramBundle.setIndicator((View)localObject1);
      }
      paramBundle.setContent(new a(g));
      i.addTab(paramBundle);
      i.setOnTabChangedListener(m);
      r.addView(i, paramView);
      k = true;
      a(0);
      b(0);
      a(true);
      return;
      label564:
      localObject1 = new RelativeLayout(g);
      ((RelativeLayout)localObject1).setBackgroundColor(Color.parseColor("#000000"));
      localObject3 = new RelativeLayout.LayoutParams(Util.a(g, 400.0D), -1);
      ((RelativeLayout.LayoutParams)localObject3).addRule(9);
      ((RelativeLayout)localObject1).addView((View)localObject2, (ViewGroup.LayoutParams)localObject3);
      localObject2 = new Button(g);
      ((Button)localObject2).setWidth(100);
      ((Button)localObject2).setId(2131689489);
      ((Button)localObject2).setText("EDIT");
      ((Button)localObject2).setBackgroundResource(2130837676);
      ((Button)localObject2).setTextSize(2, 16.0F);
      ((Button)localObject2).setTextColor(-14145496);
      ((Button)localObject2).setVisibility(8);
      localObject3 = new RelativeLayout.LayoutParams(-2, Util.a(g, 42.0D));
      ((RelativeLayout.LayoutParams)localObject3).addRule(11);
      ((RelativeLayout.LayoutParams)localObject3).setMargins(Util.a(g, 4.0D), Util.a(g, 4.0D), Util.a(g, 5.0D), Util.a(g, 4.0D));
      ((RelativeLayout)localObject1).addView((View)localObject2, (ViewGroup.LayoutParams)localObject3);
      localObject2 = new Button(g);
      ((Button)localObject2).setId(2131689488);
      ((Button)localObject2).setText("Clear History");
      ((Button)localObject2).setTextSize(2, 14.0F);
      ((Button)localObject2).setBackgroundResource(2130837676);
      ((Button)localObject2).setTextColor(Color.parseColor("#282828"));
      ((Button)localObject2).setVisibility(8);
      localObject3 = new RelativeLayout.LayoutParams(-2, Util.a(g, 42.0D));
      ((RelativeLayout.LayoutParams)localObject3).addRule(11);
      ((RelativeLayout.LayoutParams)localObject3).setMargins(Util.a(g, 4.0D), Util.a(g, 4.0D), Util.a(g, 5.0D), Util.a(g, 4.0D));
      ((RelativeLayout)localObject1).addView((View)localObject2, (ViewGroup.LayoutParams)localObject3);
      paramBundle.addView((View)localObject1, new LinearLayout.LayoutParams(-1, Util.a(g, 50.0D), 0.0F));
    }
  }
  
  static final class a
    implements TabHost.TabContentFactory
  {
    private final Context a;
    
    public a(Context paramContext)
    {
      a = paramContext;
    }
    
    public final View createTabContent(String paramString)
    {
      paramString = new View(a);
      paramString.setMinimumWidth(0);
      paramString.setMinimumHeight(0);
      return paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.NewMyCBSFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */