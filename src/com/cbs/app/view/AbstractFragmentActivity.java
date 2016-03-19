package com.cbs.app.view;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.AppCompatActivity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import com.cbs.app.GlobalConstants;
import com.cbs.app.cast.CBSMiniController;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.github.amlcurran.showcaseview.ShowcaseView;
import com.github.amlcurran.showcaseview.ShowcaseView.a;
import com.github.amlcurran.showcaseview.a.a;
import com.github.amlcurran.showcaseview.a.b;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.libraries.cast.companionlibrary.cast.c;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractFragmentActivity
  extends AppCompatActivity
  implements AsyncActivity, VideoEnabledWebView.WebVideoListener
{
  protected static final String a = AbstractFragmentActivity.class.getSimpleName();
  protected String b = "";
  protected boolean c;
  protected MenuItem d;
  com.google.android.libraries.cast.companionlibrary.cast.a.d e = new com.google.android.libraries.cast.companionlibrary.cast.a.d()
  {
    public final void a(ApplicationMetadata paramAnonymousApplicationMetadata, String paramAnonymousString, boolean paramAnonymousBoolean)
    {
      super.a(paramAnonymousApplicationMetadata, paramAnonymousString, paramAnonymousBoolean);
      paramAnonymousApplicationMetadata = AbstractFragmentActivity.a;
    }
    
    public final void c(int paramAnonymousInt)
    {
      super.c(paramAnonymousInt);
      String str = AbstractFragmentActivity.a;
    }
    
    public final void d()
    {
      super.d();
      String str = AbstractFragmentActivity.a;
      b();
    }
    
    public final void e()
    {
      super.e();
      Object localObject = AbstractFragmentActivity.a;
      localObject = MainApplication.getVideoCastManager();
      CBSMiniController localCBSMiniController = (CBSMiniController)findViewById(2131690175);
      ((c)localObject).b(localCBSMiniController);
      localCBSMiniController.setVisibility(8);
      c();
    }
  };
  ShowcaseView f;
  private final ArrayList<BackButtonListener> g = new ArrayList();
  private boolean h = false;
  private boolean i;
  private VideoEnabledWebView j = null;
  private boolean k = false;
  
  private void d()
  {
    if ((f != null) && (f.d())) {
      f.b();
    }
    k = false;
  }
  
  public final List<Episode> a(long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = getIntent().getExtras();
    if (localObject != null)
    {
      localObject = ((Bundle)localObject).getParcelableArray("episodeSchedule");
      if ((localObject != null) && (localObject.length > 0))
      {
        int n = localObject.length;
        int m = 0;
        for (;;)
        {
          if (m < n)
          {
            Episode localEpisode = localObject[m];
            if ((localEpisode instanceof Episode)) {
              localEpisode = (Episode)localEpisode;
            }
            try
            {
              if ((localEpisode.getShow_id() != null) && (!localEpisode.getShow_id().equals("null")) && (Long.valueOf(localEpisode.getShow_id()).longValue() == paramLong)) {
                localArrayList.add(localEpisode);
              }
              m += 1;
            }
            catch (NumberFormatException localNumberFormatException)
            {
              for (;;)
              {
                localNumberFormatException.printStackTrace();
              }
            }
          }
        }
      }
    }
    return localArrayList;
  }
  
  public final void a()
  {
    Object localObject = null;
    if (d != null) {
      localObject = d.getActionView();
    }
    if (localObject != null)
    {
      k = true;
      Preferences.a(this, "seen_chromecast_intro");
      localObject = new b((View)localObject);
      if (f == null)
      {
        f = new ShowcaseView.a(this).b().a((a)localObject).a(getString(2131231331)).c().a();
        f.c();
      }
    }
    else
    {
      return;
    }
    f.setTarget((a)localObject);
    f.invalidate();
  }
  
  public final void a(BackButtonListener paramBackButtonListener)
  {
    g.add(paramBackButtonListener);
  }
  
  public final void a(VideoEnabledWebView paramVideoEnabledWebView)
  {
    i = true;
    j = paramVideoEnabledWebView;
  }
  
  public abstract void b();
  
  public final void b(BackButtonListener paramBackButtonListener)
  {
    g.remove(paramBackButtonListener);
  }
  
  public final void b(VideoEnabledWebView paramVideoEnabledWebView)
  {
    i = false;
    j = paramVideoEnabledWebView;
  }
  
  public abstract void c();
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((Util.H(this)) && (MainApplication.getVideoCastManager().a(paramKeyEvent, 0.1D))) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public MainApplication getApplicationContext()
  {
    return (MainApplication)super.getApplicationContext();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131755009, paramMenu);
    d = paramMenu.findItem(2131690449);
    boolean bool1;
    boolean bool2;
    if (Util.H(this))
    {
      MainApplication.getVideoCastManager().a(paramMenu, 2131690449);
      DrawerLayout localDrawerLayout = (DrawerLayout)findViewById(2131690171);
      ListView localListView = (ListView)findViewById(2131690173);
      if (((localDrawerLayout == null) || (localListView == null) || (!localDrawerLayout.isDrawerOpen(localListView))) && (!c))
      {
        bool1 = Util.v(this);
        bool2 = Preferences.a(this, "upsell_dialog_seen", false);
        if (Preferences.a(this, "seen_chromecast_intro", false)) {
          break label173;
        }
      }
    }
    label173:
    for (int m = 1;; m = 0)
    {
      if (((f != null) && (f.d())) || ((bool2) && (bool1) && (m != 0))) {
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            a();
          }
        }, 900L);
      }
      return super.onCreateOptionsMenu(paramMenu);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    h = true;
    if (Util.H(this))
    {
      c localc = MainApplication.getVideoCastManager();
      CBSMiniController localCBSMiniController = (CBSMiniController)findViewById(2131690175);
      localc.b(localCBSMiniController);
      localCBSMiniController.setVisibility(8);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    if (paramInt == 4)
    {
      if ((GlobalConstants.b) && (!isFinishing()))
      {
        Util.O(this);
        finish();
        return bool2;
      }
      if (!i)
      {
        if (k)
        {
          d();
          return true;
        }
        paramInt = g.size() - 1;
        label64:
        if (paramInt < 0) {
          break label173;
        }
        paramKeyEvent = (BackButtonListener)g.get(paramInt);
        if (paramKeyEvent.c()) {
          new StringBuilder("handleBackListeners: handled by listener ").append(paramKeyEvent);
        }
      }
    }
    label173:
    for (paramInt = 1;; paramInt = 0)
    {
      if (paramInt == 0) {
        finish();
      }
      for (bool1 = true;; bool1 = false)
      {
        return bool1;
        paramInt -= 1;
        break label64;
        if (k) {
          d();
        }
        for (;;)
        {
          bool2 = bool1;
          if (j == null) {
            break;
          }
          j.a();
          return bool1;
          return super.onKeyDown(paramInt, paramKeyEvent);
          bool1 = false;
        }
      }
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    if (Util.H(this))
    {
      c localc = MainApplication.getVideoCastManager();
      localc.h();
      localc.b(e);
      CBSMiniController localCBSMiniController = (CBSMiniController)findViewById(2131690175);
      localc.b(localCBSMiniController);
      localCBSMiniController.setVisibility(8);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (Util.H(this))
    {
      com.google.android.libraries.cast.companionlibrary.a.d.a(this);
      c localc = MainApplication.getVideoCastManager();
      localc.g();
      localc.a((CBSMiniController)findViewById(2131690175));
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.AbstractFragmentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */