package com.cbs.app.view.fragments.show;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.IwantToSeeDialogFrag.IwantToSeeResponse;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.show.model.Group;
import com.cbs.app.view.fragments.show.model.ShowGroups;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.fragments.show.model.Shows;
import com.cbs.app.view.utils.Util;
import java.util.ArrayList;
import java.util.HashMap;

public class ShowBrowseFragment
  extends Fragment
  implements IwantToSeeDialogFrag.IwantToSeeResponse, ShowServiceManager.ShowServiceManagerListener
{
  private static final String j = ShowBrowseFragment.class.getSimpleName();
  protected ShowBrowseListener a;
  protected RecyclerView b;
  protected ShowAdapter c;
  protected ShowServiceManager d;
  protected BackButtonListener e = new BackButtonListener()
  {
    public final boolean c()
    {
      ShowBrowseFragment.f();
      ((NavigationActivity)h).k();
      return true;
    }
    
    public final String getTag()
    {
      return ShowBrowseFragment.f();
    }
  };
  protected boolean f;
  protected MenuItem g;
  protected Activity h;
  protected ProgressDialog i;
  private GridLayoutManager k;
  private int l;
  private int m = 0;
  private int n;
  private int o;
  private int p;
  private int q;
  private int r;
  
  private void a(Action paramAction)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event19");
    localHashMap.put("appState", paramAction.getAppState());
    AnalyticsManager.a(h, paramAction, localHashMap);
  }
  
  private void g()
  {
    if ((h != null) && (!h.isFinishing()))
    {
      if (i == null)
      {
        i = new ProgressDialog(getActivity(), 2131427747);
        i.setIndeterminate(true);
        i.setCanceledOnTouchOutside(false);
        i.setProgressStyle(16973853);
        i.setIndeterminateDrawable(getResources().getDrawable(2130837778));
      }
      i.show();
    }
  }
  
  private int h()
  {
    DisplayMetrics localDisplayMetrics = h.getResources().getDisplayMetrics();
    int i1;
    if (Util.l(h)) {
      if (Util.e(h))
      {
        o = ((int)(widthPixels * 0.025F));
        n = ((int)((widthPixels - o * 3.0F) / 2.0F));
        i1 = 2;
      }
    }
    for (;;)
    {
      p = ((int)(n * 1.2664757F));
      r = ((int)(o * 0.9F));
      if (n <= 400) {
        break;
      }
      q = ((int)(n / 2.0F));
      return i1;
      o = ((int)(widthPixels * 0.015F));
      n = ((int)((widthPixels - o * 4.0F) / 3.0F));
      i1 = 3;
      continue;
      if (Util.e(h))
      {
        o = ((int)(widthPixels * 0.015F));
        n = ((int)((widthPixels - o * 5.0F) / 4.0F));
        i1 = 4;
      }
      else
      {
        o = ((int)(widthPixels * 0.006F));
        n = ((int)((widthPixels - o * 6.0F) / 5.0F));
        i1 = 5;
      }
    }
    q = n;
    return i1;
  }
  
  private void i()
  {
    if (b != null)
    {
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)b.getLayoutParams();
      rightMargin = (o / 2);
      leftMargin = o;
    }
  }
  
  public void a()
  {
    if (isAdded()) {
      d();
    }
  }
  
  public final void a(int paramInt)
  {
    new StringBuilder("showIsLoaded() called with: showsId = [").append(paramInt).append("]");
    if (isAdded())
    {
      new StringBuilder("showIsLoaded: itemcount = ").append(agroup.showGroupItems.size());
      c.a(agroup.showGroupItems);
      if (ShowServiceManager.a != null)
      {
        View localView = getView();
        if (localView != null) {
          ((TextView)localView.findViewById(2131690056)).setText(agroup.title);
        }
      }
      b.scrollToPosition(0);
      d();
    }
  }
  
  public final void b()
  {
    f = false;
  }
  
  public final void b(int paramInt)
  {
    g();
    f = false;
    m = paramInt;
    if (a != null) {
      a.a(paramInt);
    }
    d.a(paramInt);
    Action localAction = Action.bZ;
    String str = ashowGroups.get(paramInt)).title;
    if (str != null)
    {
      str = "ShowsBrowse" + str + "Tapped";
      localAction.setName(str);
      localAction.setAppState(str);
    }
    a(localAction);
    localAction.getName();
  }
  
  protected boolean c()
  {
    return false;
  }
  
  protected final void d()
  {
    if ((i != null) && (i.isShowing())) {
      i.dismiss();
    }
  }
  
  public void e()
  {
    if ((h != null) && ((h instanceof NavigationActivity))) {
      ((NavigationActivity)getActivity()).a(-1L, Util.c("ShowBrowse"));
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    h = paramActivity;
    f = false;
    g();
    if ((h instanceof ShowBrowseListener))
    {
      a = ((ShowBrowseListener)h);
      d = new ShowServiceManager(h);
      d.setShowServiceListener(this);
      d.getEverything();
      return;
    }
    throw new ClassCastException(h.toString() + " must implement ShowBrowseFragment.ShowBrowseListener");
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    l = h();
    k.setSpanCount(l);
    i();
    c.notifyDataSetChanged();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getArguments() != null) {
      m = getArguments().getInt("position", 0);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = (LinearLayout)paramLayoutInflater.inflate(2130903181, paramViewGroup, false);
    b = ((RecyclerView)paramLayoutInflater.findViewById(2131690057));
    l = h();
    b.setHasFixedSize(true);
    k = new GridLayoutManager(h, l, 1, false);
    if (b.getAdapter() == null)
    {
      c = new ShowAdapter();
      b.setAdapter(c);
    }
    k.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup()
    {
      public final int getSpanSize(int paramAnonymousInt)
      {
        if (c.a(paramAnonymousInt)) {
          return ShowBrowseFragment.a(ShowBrowseFragment.this);
        }
        return 1;
      }
    });
    b.setLayoutManager(k);
    b.addItemDecoration(new RecyclerSpacer());
    i();
    if ((getActivity() != null) && ((getActivity() instanceof NavigationActivity))) {
      ((NavigationActivity)h).a(e);
    }
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    if (a != null) {
      a.c(e);
    }
    d.c();
    super.onDestroy();
    c = null;
    b = null;
    a = null;
  }
  
  public void onResume()
  {
    super.onResume();
    f = false;
    AccountUIHelper.i(h);
    e();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    d.setLastId(m);
    paramView = getView();
    Object localObject;
    if (paramView != null)
    {
      localObject = getResources().getDisplayMetrics();
      if (!Util.e(h)) {
        break label246;
      }
    }
    label246:
    for (float f1 = 0.048F;; f1 = 0.038F)
    {
      f1 *= Math.min(widthPixels, heightPixels);
      paramBundle = getResources().getDrawable(2130837608);
      if (paramBundle != null)
      {
        int i1 = (int)(0.7F * f1);
        paramBundle.setBounds(0, (int)(i1 * 0.15F), (int)(i1 * 1.7F), i1);
      }
      f1 /= density;
      localObject = (TextView)paramView.findViewById(2131690056);
      ((TextView)localObject).setTextSize(f1);
      ((TextView)paramView.findViewById(2131690055)).setTextSize(f1);
      ((TextView)localObject).setCompoundDrawables(null, null, paramBundle, null);
      ((TextView)localObject).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if ((d.a()) && (!f))
          {
            f = true;
            int j = ashowGroups.size();
            paramAnonymousView = new String[j];
            int i = 0;
            while (i < j)
            {
              paramAnonymousView[i] = ashowGroups.get(i)).title;
              i += 1;
            }
            a.a(ShowBrowseFragment.b(ShowBrowseFragment.this), paramAnonymousView, ShowBrowseFragment.this);
            ShowBrowseFragment.a(ShowBrowseFragment.this, Action.bZ);
          }
        }
      });
      paramView.findViewById(2131690054).setVisibility(0);
      paramView.setBackgroundColor(getResources().getColor(2131558569));
      b.setVisibility(0);
      if ((!c()) && (d.b()) && (c.getItemCount() == 0)) {
        d.a(m);
      }
      return;
    }
  }
  
  public void setAlreadyClicked(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public class RecyclerSpacer
    extends RecyclerView.ItemDecoration
  {
    public RecyclerSpacer() {}
    
    public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
    {
      top = ShowBrowseFragment.f(ShowBrowseFragment.this);
    }
  }
  
  public class ShowAdapter
    extends RecyclerView.Adapter<ViewHolder>
  {
    private ArrayList<ShowItem> b;
    
    public ShowAdapter()
    {
      f = false;
    }
    
    private static void a(ViewHolder paramViewHolder, String paramString, int paramInt)
    {
      d.setVisibility(0);
      String str = String.valueOf(paramInt);
      if (paramInt > 999) {
        str = "999+";
      }
      b.setText(str);
      str = paramString;
      if (paramInt > 1) {
        str = paramString + "s";
      }
      c.setText(str);
    }
    
    public final void a(ArrayList<ShowItem> paramArrayList)
    {
      f = false;
      if (paramArrayList != null)
      {
        b = paramArrayList;
        notifyDataSetChanged();
      }
    }
    
    public final boolean a(int paramInt)
    {
      if (b != null) {
        if (b.size() != paramInt) {}
      }
      while (paramInt == 0)
      {
        return true;
        return false;
      }
      return false;
    }
    
    public int getItemCount()
    {
      if (b != null) {
        return b.size() + 1;
      }
      return 0;
    }
    
    public int getItemViewType(int paramInt)
    {
      if (a(paramInt)) {
        return 0;
      }
      return 1;
    }
    
    public class ViewHolder
      extends RecyclerView.ViewHolder
      implements View.OnClickListener
    {
      ImageView a;
      TextView b;
      TextView c;
      LinearLayout d;
      ObjectAnimator e;
      int f;
      
      public ViewHolder(FrameLayout paramFrameLayout, int paramInt)
      {
        super();
        if (paramInt == 1)
        {
          getLayoutParamswidth = ShowBrowseFragment.c(ShowBrowseFragment.this);
          a = ((ImageView)paramFrameLayout.findViewById(2131690293));
          b = ((TextView)paramFrameLayout.findViewById(2131690295));
          d = ((LinearLayout)paramFrameLayout.findViewById(2131690294));
          c = ((TextView)paramFrameLayout.findViewById(2131690296));
          d.getLayoutParams().width = ShowBrowseFragment.c(ShowBrowseFragment.this);
          ViewGroup.LayoutParams localLayoutParams = a.getLayoutParams();
          width = ShowBrowseFragment.c(ShowBrowseFragment.this);
          height = ShowBrowseFragment.d(ShowBrowseFragment.this);
          paramFrameLayout.setOnClickListener(this);
          e = ObjectAnimator.ofFloat(a, View.ALPHA, new float[] { 0.0F, 1.0F });
          e.setDuration(500L);
          e.start();
          return;
        }
        paramFrameLayout.setMinimumHeight((int)(ShowBrowseFragment.d(ShowBrowseFragment.this) / 2.0F));
      }
      
      public void onClick(View paramView)
      {
        if (!f)
        {
          f = true;
          a.a((ShowItem)ShowBrowseFragment.ShowAdapter.a(ShowBrowseFragment.ShowAdapter.this).get(f));
          if (g != null) {
            g.collapseActionView();
          }
        }
      }
    }
  }
  
  public static abstract interface ShowBrowseListener
  {
    public abstract void a(int paramInt);
    
    public abstract void a(int paramInt, String[] paramArrayOfString, IwantToSeeDialogFrag.IwantToSeeResponse paramIwantToSeeResponse);
    
    public abstract void a(ShowItem paramShowItem);
    
    public abstract void c(BackButtonListener paramBackButtonListener);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.ShowBrowseFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */