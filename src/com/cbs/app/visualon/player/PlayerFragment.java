package com.cbs.app.visualon.player;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.MediaRouteButton;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.controllers.SyncbakController;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.show.videos.VideosFragment;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.model.syncbak.SyncbakStream;
import com.cbs.app.view.utils.GoogleAppIndexDeepLinkUtil;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.b.a;
import com.google.android.libraries.cast.companionlibrary.cast.a.d;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_STATUS;

public class PlayerFragment
  extends Fragment
{
  private static final String a = PlayerFragment.class.getSimpleName();
  private static Uri b = null;
  private Activity c;
  private boolean d;
  private MediaRouteButton e;
  private FullScreenButtonListener f = new FullScreenButtonListener()
  {
    public final PlayerRect a(int paramAnonymousInt)
    {
      PlayerFragment.a();
      PlayerRect localPlayerRect = null;
      if ((PlayerFragment.a(PlayerFragment.this) instanceof PlayerActivityV2))
      {
        PlayerFragment.a();
        localPlayerRect = new PlayerRect();
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        PlayerFragment.a(PlayerFragment.this).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
        a = widthPixels;
        b = heightPixels;
      }
      return localPlayerRect;
    }
    
    public final void a()
    {
      PlayerFragment.a();
      MediaRouteButton localMediaRouteButton;
      if ((isAdded()) && (Util.H(PlayerFragment.a(PlayerFragment.this))) && (PlayerFragment.b(PlayerFragment.this) != null))
      {
        localMediaRouteButton = PlayerFragment.b(PlayerFragment.this);
        if (!MainApplication.d()) {
          break label79;
        }
      }
      label79:
      for (int i = 0;; i = 8)
      {
        localMediaRouteButton.setVisibility(i);
        PlayerFragment.a();
        new StringBuilder("castPresent: ").append(MainApplication.d());
        return;
      }
    }
    
    public final void b()
    {
      PlayerFragment.a();
      if ((isAdded()) && (Util.H(PlayerFragment.a(PlayerFragment.this))) && (PlayerFragment.b(PlayerFragment.this) != null))
      {
        PlayerFragment.b(PlayerFragment.this).setVisibility(8);
        PlayerFragment.a();
      }
    }
  };
  private SyncbakController g;
  private com.google.android.libraries.cast.companionlibrary.cast.a.c h = null;
  private com.google.android.gms.common.api.b i;
  private VideoData j = null;
  private Affiliate k = null;
  private SyncbakStream l = null;
  private SyncbakChannel m = null;
  private String n = null;
  private String o = null;
  private long p = -1L;
  private int q = 0;
  private boolean r = false;
  private boolean s = false;
  private RelativeLayout t;
  private boolean u;
  private boolean v = false;
  private boolean w = false;
  private final SurfaceHolder.Callback x = new SurfaceHolder.Callback()
  {
    public final void surfaceChanged(SurfaceHolder paramAnonymousSurfaceHolder, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public final void surfaceCreated(SurfaceHolder paramAnonymousSurfaceHolder)
    {
      PlayerFragment.a();
      if (PlayerFragment.c(PlayerFragment.this))
      {
        boolean bool = false;
        if (Util.H(PlayerFragment.a(PlayerFragment.this))) {
          bool = com.google.android.libraries.cast.companionlibrary.cast.c.B().j();
        }
        if (!bool) {
          new Handler().postDelayed(new Runnable()
          {
            public final void run()
            {
              PlayerFragment.d(PlayerFragment.this);
            }
          }, 100L);
        }
      }
      PlayerFragment.a(PlayerFragment.this, true);
    }
    
    public final void surfaceDestroyed(SurfaceHolder paramAnonymousSurfaceHolder)
    {
      PlayerFragment.a();
      PlayerFragment.a(PlayerFragment.this, false);
      CBSPlayer.f();
    }
  };
  private boolean y = true;
  private boolean z = false;
  
  public static PlayerFragment a(SyncbakChannel paramSyncbakChannel, Affiliate paramAffiliate, SyncbakStream paramSyncbakStream)
  {
    Bundle localBundle = new Bundle();
    PlayerFragment localPlayerFragment = new PlayerFragment();
    localBundle.putParcelable("syncbakChannel", paramSyncbakChannel);
    localBundle.putParcelable("syncbakStream", paramSyncbakStream);
    localBundle.putParcelable("syncbakAffiliate", paramAffiliate);
    localBundle.putString("showName", null);
    localBundle.putString("episodeName", null);
    localPlayerFragment.setArguments(localBundle);
    return localPlayerFragment;
  }
  
  private void b()
  {
    if (!u)
    {
      u = true;
      if (CBSPlayer.getPlayerStatus() == VOOSMPType.VO_OSMP_STATUS.VO_OSMP_STATUS_PLAYING) {
        s = true;
      }
      new StringBuilder("wasPlaying: ").append(s);
      if (l == null) {
        break label121;
      }
      r = CBSPlayer.y();
      if (r) {
        CBSPlayer.a(false);
      }
      CBSPlayer.t();
      z = false;
    }
    for (;;)
    {
      if ((((ConnectivityManager)c.getSystemService("connectivity")).getActiveNetworkInfo() == null) && (CBSPlayer.a()))
      {
        if (!Util.h(c)) {
          break;
        }
        CBSPlayer.t();
        CBSPlayer.b(c);
      }
      return;
      label121:
      q = 1;
      p = CBSPlayer.getPosition();
      CBSPlayer.setResumeMode(q);
      CBSPlayer.setResumeTime(p);
      CBSPlayer.s();
      CBSPlayer.u();
    }
    c.finish();
  }
  
  private void c()
  {
    if (Util.h(c))
    {
      Object localObject = ((NavigationActivity)c).getSupportFragmentManager();
      if (localObject != null)
      {
        localObject = ((FragmentManager)localObject).findFragmentByTag("fragment_show_home");
        if (localObject != null)
        {
          localObject = ((Fragment)localObject).getChildFragmentManager();
          if (localObject != null)
          {
            localObject = ((FragmentManager)localObject).findFragmentByTag("fragment_show_videos");
            if ((localObject != null) && ((localObject instanceof VideosFragment))) {
              ((VideosFragment)localObject).h();
            }
          }
        }
      }
    }
    if (j != null) {
      VideoUtil.a(c, j, CBSPlayer.getPosition(), true);
    }
    for (;;)
    {
      if (CBSPlayer.a()) {
        CBSPlayer.t();
      }
      if (Util.e(c)) {
        c.finish();
      }
      return;
      if ((m != null) && (l != null)) {
        VideoUtil.a(c, m, k, n, o, true);
      }
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    c = paramActivity;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    CBSPlayer.a(orientation);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null)
    {
      Parcelable localParcelable = paramBundle.getParcelable("videoData");
      if ((localParcelable instanceof VideoData)) {
        j = ((VideoData)localParcelable);
      }
      d = paramBundle.getBoolean("EXTRA_DISABLE_FULLSCREEN_BUTTON", false);
      m = ((SyncbakChannel)paramBundle.getParcelable("syncbakChannel"));
      l = ((SyncbakStream)paramBundle.getParcelable("syncbakStream"));
      k = ((Affiliate)paramBundle.getParcelable("syncbakAffiliate"));
      n = paramBundle.getString("showName");
      o = paramBundle.getString("episodeName");
      p = paramBundle.getLong("resumeTime");
      q = paramBundle.getInt("resumeMode");
      new StringBuilder("oncreate resumeTime: ").append(p);
      new StringBuilder("resumeMode: ").append(q);
      paramBundle = paramBundle.getString("pid", null);
      if (j == null) {
        break label243;
      }
      new StringBuilder("videoData: ").append(j.getPid());
      m = null;
      l = null;
      k = null;
    }
    for (;;)
    {
      i = new b.a(c).a(com.google.android.gms.appindexing.b.b).b();
      return;
      label243:
      if ((m != null) && (l != null))
      {
        new StringBuilder("channel: ").append(m.getName());
        new StringBuilder("stream:").append(l.getUrl());
        j = null;
      }
      else if (paramBundle != null)
      {
        j = null;
        m = null;
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    t = ((RelativeLayout)paramLayoutInflater.inflate(2130903088, paramViewGroup, false));
    g = new SyncbakController(getActivity());
    g.a(new SyncbakCallback()
    {
      public final void a(int paramAnonymousInt, String paramAnonymousString)
      {
        PlayerFragment.e(PlayerFragment.this);
      }
      
      public final void a(SyncbakStream paramAnonymousSyncbakStream)
      {
        PlayerFragment.e(PlayerFragment.this);
        PlayerFragment.a(PlayerFragment.this, paramAnonymousSyncbakStream);
        if (PlayerFragment.f(PlayerFragment.this)) {
          new Handler().postDelayed(new Runnable()
          {
            public final void run()
            {
              PlayerFragment.d(PlayerFragment.this);
            }
          }, 100L);
        }
      }
    });
    return t;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (Util.H(c)) {
      MainApplication.getVideoCastManager().b(h);
    }
    CBSPlayer.b(f);
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (CBSPlayer.a())
    {
      CBSPlayer.t();
      z = false;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
  }
  
  public void onPause()
  {
    super.onPause();
    b();
  }
  
  public void onResume()
  {
    super.onResume();
    u = false;
    if (!z)
    {
      CBSPlayer.c = c.getResources().getConfiguration().orientation;
      c.getWindow().setFlags(128, 128);
      if ((q != 0) && (p > 5000L))
      {
        CBSPlayer.setResumeMode(q);
        CBSPlayer.setResumeTime(p);
        new StringBuilder("resumeTime: ").append(p);
        new StringBuilder("resumeMode: ").append(q);
        if (j == null) {
          break label424;
        }
        CBSPlayer.a(c, t, j);
        label138:
        Object localObject = (SurfaceView)t.findViewById(2131689720);
        CBSPlayer.g = (SurfaceView)localObject;
        localObject = ((SurfaceView)localObject).getHolder();
        CBSPlayer.h = (SurfaceHolder)localObject;
        ((SurfaceHolder)localObject).addCallback(x);
        new StringBuilder("View getWidth = ").append(t.getWidth()).append(" , height").append(t.getHeight());
        if ((Util.e(c)) || (d)) {
          t.findViewById(2131689734).setVisibility(8);
        }
        z = true;
      }
    }
    else
    {
      VideoUtil.a(c, VideoUtil.b(c));
      CBSPlayer.A();
      if (!Util.H(c)) {
        break label519;
      }
    }
    label317:
    label424:
    label519:
    for (boolean bool = com.google.android.libraries.cast.companionlibrary.cast.c.B().j();; bool = false)
    {
      if (!bool) {
        if ((l != null) && (!y))
        {
          w = false;
          g.a(m);
          new StringBuilder("surfaceCreated: ").append(v).append(" dataIsLoaded: ").append(w);
          if ((v) && (w)) {
            new Handler().postDelayed(new Runnable()
            {
              public final void run()
              {
                PlayerFragment.d(PlayerFragment.this);
              }
            }, 100L);
          }
          if ((Util.h(c)) && (r)) {
            CBSPlayer.a(true);
          }
        }
      }
      for (;;)
      {
        y = false;
        return;
        CBSPlayer.setResumeMode(0);
        CBSPlayer.setResumeTime(-1L);
        break;
        if ((m == null) || (l == null) || (l.getUrl() == null)) {
          break label138;
        }
        new StringBuilder("setting up ").append(l.getUrl());
        CBSPlayer.a(c, t, m, l.getUrl());
        break label138;
        w = true;
        break label317;
        if (Util.e(c)) {
          c();
        }
      }
    }
  }
  
  public void onStart()
  {
    super.onStart();
    new StringBuilder("is Player active : ").append(CBSPlayer.a());
    i.c();
    if (j != null)
    {
      Object localObject = GoogleAppIndexDeepLinkUtil.a(null, j, "Videos");
      String str = GoogleAppIndexDeepLinkUtil.b(null, j, "Videos");
      if ((localObject != null) && (str != null))
      {
        b = Uri.parse((String)localObject);
        localObject = Uri.parse(str);
        str = j.getTitle() + " - CBS.com";
        com.google.android.gms.appindexing.b.c.a(i, b, str, (Uri)localObject);
      }
    }
  }
  
  public void onStop()
  {
    super.onStop();
    b();
    if (b != null) {
      com.google.android.gms.appindexing.b.c.a(i, b);
    }
    i.d();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    e = ((MediaRouteButton)paramView.findViewById(2131689725));
    int i1;
    if (Util.H(getActivity()))
    {
      final boolean bool = Util.e(c);
      paramView = e;
      if (bool)
      {
        i1 = 0;
        paramView.setVisibility(i1);
        paramView = MainApplication.getVideoCastManager();
        h = new d()
        {
          public final void a(ApplicationMetadata paramAnonymousApplicationMetadata, String paramAnonymousString, boolean paramAnonymousBoolean)
          {
            super.a(paramAnonymousApplicationMetadata, paramAnonymousString, paramAnonymousBoolean);
            if (isAdded()) {
              PlayerFragment.g(PlayerFragment.this);
            }
          }
          
          public final void a(boolean paramAnonymousBoolean)
          {
            int i = 8;
            super.a(paramAnonymousBoolean);
            if (isAdded())
            {
              boolean bool1 = CBSPlayer.y();
              boolean bool2 = CBSPlayer.i();
              PlayerFragment.a();
              if ((bool) || ((bool1 | bool2)))
              {
                MediaRouteButton localMediaRouteButton = PlayerFragment.b(PlayerFragment.this);
                if (paramAnonymousBoolean) {
                  i = 0;
                }
                localMediaRouteButton.setVisibility(i);
              }
            }
            else
            {
              return;
            }
            PlayerFragment.b(PlayerFragment.this).setVisibility(8);
          }
          
          public final void b(String paramAnonymousString)
          {
            super.b(paramAnonymousString);
            if (isAdded()) {
              PlayerFragment.b(PlayerFragment.this).setVisibility(8);
            }
          }
          
          public final void c(int paramAnonymousInt)
          {
            super.c(paramAnonymousInt);
            PlayerFragment.a();
          }
        };
        paramView.a(h);
        paramView.a(e);
        paramView.g(15);
      }
    }
    for (;;)
    {
      CBSPlayer.a(f);
      CBSPlayer.k();
      return;
      i1 = 8;
      break;
      e.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.PlayerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */