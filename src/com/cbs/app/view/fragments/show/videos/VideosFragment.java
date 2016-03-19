package com.cbs.app.view.fragments.show.videos;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Toast;
import com.cbs.app.GlobalConstants;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.AbstractFragmentActivity;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.ShowFragmentV2;
import com.cbs.app.view.fragments.ShowFragmentV2.NewViewInfo;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.Asset;
import com.cbs.app.view.model.AssetCarouselItem;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.ShowSeasonAvailabilityItem;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.GoogleAppIndexDeepLinkUtil;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.view.utils.VideoUtil.PlayVideoListener;
import com.cbs.app.visualon.player.CBSPlayer;
import com.cbs.app.visualon.player.FullScreenButtonListener;
import com.cbs.app.visualon.player.PlayerActivityV2;
import com.cbs.app.visualon.player.PlayerRect;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.b.a;
import com.google.android.libraries.cast.companionlibrary.cast.a.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

public class VideosFragment
  extends AbstractAsyncFragment
{
  private static final String j = VideosFragment.class.getSimpleName();
  private static Uri k = null;
  private int A = 0;
  private int B = 0;
  private boolean C = false;
  private com.google.android.gms.common.api.b D;
  private ArrayList<Integer> E = null;
  private long F = -1L;
  private int G = 0;
  private final BackButtonListener H = new BackButtonListener()
  {
    public final boolean c()
    {
      VideosFragment.j();
      new StringBuilder("onBack:").append(VideosFragment.A(VideosFragment.this));
      if ((VideosFragment.B(VideosFragment.this) != null) && (VideosFragment.C(VideosFragment.this)))
      {
        if (!GlobalConstants.b) {
          break label72;
        }
        Util.O(VideosFragment.D(VideosFragment.this));
        VideosFragment.E(VideosFragment.this).finish();
      }
      label72:
      do
      {
        return false;
        if (Util.e(VideosFragment.F(VideosFragment.this)))
        {
          switch (VideosFragment.A(VideosFragment.this))
          {
          case 0: 
          default: 
            return false;
          case 1: 
            VideosFragment.a(VideosFragment.this, Util.c("fragment_show_videos"));
            g();
            return true;
          case 2: 
            i();
            return true;
          }
          VideosFragment.f();
          return true;
        }
      } while (!Util.h(VideosFragment.G(VideosFragment.this)));
      VideosFragment.j();
      new StringBuilder(" On tablet:").append(VideosFragment.A(VideosFragment.this));
      if (CBSPlayer.y())
      {
        CBSPlayer.z();
        return true;
      }
      VideosFragment.j();
      new StringBuilder("Screen in tablet:").append(VideosFragment.A(VideosFragment.this));
      switch (VideosFragment.A(VideosFragment.this))
      {
      case 0: 
      default: 
        return false;
      case 1: 
        h();
        return true;
      }
      VideosFragment.f();
      return true;
    }
    
    public final String getTag()
    {
      return VideosFragment.j();
    }
  };
  private ResponseModelListener I = new ResponseModelListener()
  {
    public final void a()
    {
      VideosFragment.j();
      d();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      int i = 0;
      VideosFragment.j();
      int j;
      if ((paramAnonymousResponseModel instanceof VideoEndpointResponse))
      {
        paramAnonymousResponseModel = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
        if ((paramAnonymousResponseModel == null) || (paramAnonymousResponseModel.size() <= 0)) {
          break label151;
        }
        new StringBuilder("videodata sizeM: ").append(paramAnonymousResponseModel.size());
        paramAnonymousResponseModel = (VideoData)paramAnonymousResponseModel.get(0);
        j = paramAnonymousResponseModel.getSeasonNum();
        if (!paramAnonymousResponseModel.getFullEpisode()) {
          break label125;
        }
        j = VideosFragment.H(VideosFragment.this).indexOf(Integer.valueOf(j));
        VideosFragment.j();
        VideosFragment localVideosFragment = VideosFragment.this;
        if (j >= 0) {
          break label120;
        }
        localVideosFragment.setSelection(i);
      }
      for (;;)
      {
        a(paramAnonymousResponseModel);
        return;
        label120:
        i = j;
        break;
        label125:
        setSelection(VideosFragment.H(VideosFragment.this).indexOf(Integer.valueOf(1111)));
      }
      label151:
      Util.a(VideosFragment.I(VideosFragment.this), getApplicationContext());
    }
  };
  d h = new d()
  {
    public final void a(ApplicationMetadata paramAnonymousApplicationMetadata, String paramAnonymousString, boolean paramAnonymousBoolean)
    {
      super.a(paramAnonymousApplicationMetadata, paramAnonymousString, paramAnonymousBoolean);
      VideosFragment.j();
      a();
    }
    
    public final void c(int paramAnonymousInt)
    {
      super.c(paramAnonymousInt);
      VideosFragment.j();
      VideosFragment.this.e();
    }
    
    public final void e()
    {
      super.e();
      VideosFragment.j();
      VideosFragment.this.e();
    }
  };
  FullScreenButtonListener i = new FullScreenButtonListener()
  {
    public final PlayerRect a(int paramAnonymousInt)
    {
      VideosFragment.j();
      PlayerRect localPlayerRect = new PlayerRect();
      Object localObject;
      int i;
      int j;
      if (VideosFragment.u(VideosFragment.this) != null)
      {
        localObject = getApplicationContext().getResources().getDisplayMetrics();
        VideosFragment.v(VideosFragment.this).getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
        i = Util.b(VideosFragment.w(VideosFragment.this));
        VideosFragment.j();
        VideosFragment.j();
        new StringBuilder("screen size: ").append(widthPixels).append(" ").append(heightPixels);
        j = Math.round(getResources().getDimension(2131361986));
        if ((CBSPlayer.y()) || (Util.e(VideosFragment.x(VideosFragment.this))))
        {
          a = widthPixels;
          b = heightPixels;
        }
      }
      else
      {
        return localPlayerRect;
      }
      if (paramAnonymousInt == 2)
      {
        localObject = new TypedValue();
        getResources().getValue(2131361831, (TypedValue)localObject, true);
        float f = ((TypedValue)localObject).getFloat();
        double d2 = 0.0D;
        double d1 = d2;
        if (Util.a())
        {
          d1 = d2;
          if (Util.h(VideosFragment.y(VideosFragment.this)))
          {
            d1 = d2;
            if (Build.VERSION.SDK_INT <= 15) {
              d1 = Util.a(VideosFragment.z(VideosFragment.this), 55.0D);
            }
          }
        }
        paramAnonymousInt = (int)Math.round(f * i);
        VideosFragment.j();
        VideosFragment.j();
        VideosFragment.j();
        d2 = i;
        double d3 = paramAnonymousInt;
        paramAnonymousInt = (int)Math.round(d2 - (d1 + (j * 2.0D + d3)));
        VideosFragment.j();
        i = (int)Math.round(paramAnonymousInt * 0.5625D);
        VideosFragment.j();
        a = paramAnonymousInt;
        b = i;
        VideosFragment.j();
        new StringBuilder("view size2: ").append(a).append(" ").append(b);
        return localPlayerRect;
      }
      a = ((int)Math.round(widthPixels - j * 2.0D));
      b = ((int)Math.round(a * 0.5625D));
      return localPlayerRect;
    }
    
    public final void a()
    {
      VideosFragment.j();
      Object localObject2 = getView();
      FrameLayout localFrameLayout;
      RelativeLayout localRelativeLayout1;
      RelativeLayout localRelativeLayout2;
      View localView;
      if ((VideosFragment.a(VideosFragment.this) != null) && (!VideosFragment.b(VideosFragment.this).isFinishing()) && (localObject2 != null))
      {
        VideosFragment.j();
        localObject1 = (LinearLayout)((View)localObject2).findViewById(2131690416);
        localFrameLayout = (FrameLayout)VideosFragment.c(VideosFragment.this).findViewById(2131690432);
        localRelativeLayout1 = (RelativeLayout)VideosFragment.d(VideosFragment.this).findViewById(2131690423);
        localRelativeLayout2 = (RelativeLayout)VideosFragment.e(VideosFragment.this).findViewById(2131689939);
        localObject2 = (ImageView)((View)localObject2).findViewById(2131690413);
        int i = VideosFragment.f(VideosFragment.this).getResources().getInteger(2131492887);
        localView = VideosFragment.g(VideosFragment.this).findViewById(i);
        if ((localObject1 != null) && (localFrameLayout != null) && (localRelativeLayout1 != null) && (localRelativeLayout2 != null) && (localObject2 != null)) {}
      }
      else
      {
        return;
      }
      VideosFragment.h(VideosFragment.this).getWindow().setFlags(1024, 1024);
      VideosFragment.i(VideosFragment.this).getSupportActionBar().hide();
      ((LinearLayout)localObject1).setVisibility(8);
      localRelativeLayout1.setVisibility(8);
      localRelativeLayout2.setVisibility(8);
      ((ImageView)localObject2).setVisibility(8);
      localFrameLayout.setVisibility(8);
      if (localView != null)
      {
        localView.setVisibility(8);
        localView.setBackgroundColor(VideosFragment.j(VideosFragment.this).getResources().getColor(17170445));
      }
      Object localObject1 = VideosFragment.k(VideosFragment.this).getResources().getConfiguration();
      a(orientation);
    }
    
    public final void b()
    {
      VideosFragment.j();
      View localView = getView();
      FrameLayout localFrameLayout;
      RelativeLayout localRelativeLayout1;
      RelativeLayout localRelativeLayout2;
      ImageView localImageView;
      if ((VideosFragment.l(VideosFragment.this) != null) && (!VideosFragment.m(VideosFragment.this).isFinishing()) && (localView != null))
      {
        VideosFragment.j();
        VideosFragment.n(VideosFragment.this).getSupportActionBar().show();
        VideosFragment.o(VideosFragment.this).getWindow().clearFlags(1024);
        localObject = (LinearLayout)localView.findViewById(2131690416);
        localFrameLayout = (FrameLayout)VideosFragment.p(VideosFragment.this).findViewById(2131690432);
        localRelativeLayout1 = (RelativeLayout)VideosFragment.q(VideosFragment.this).findViewById(2131690423);
        localRelativeLayout2 = (RelativeLayout)VideosFragment.r(VideosFragment.this).findViewById(2131689939);
        localImageView = (ImageView)localView.findViewById(2131690413);
        localView = localView.findViewById(VideosFragment.s(VideosFragment.this).getResources().getInteger(2131492887));
        if ((localObject != null) && (localFrameLayout != null) && (localRelativeLayout1 != null) && (localRelativeLayout2 != null) && (localImageView != null)) {}
      }
      else
      {
        return;
      }
      ((LinearLayout)localObject).setVisibility(0);
      localRelativeLayout1.setVisibility(0);
      localRelativeLayout2.setVisibility(0);
      localImageView.setVisibility(0);
      localFrameLayout.setVisibility(0);
      if (localView != null) {
        localView.setVisibility(0);
      }
      Object localObject = VideosFragment.t(VideosFragment.this).getResources().getConfiguration();
      a(orientation);
    }
  };
  private ShowItem l;
  private Show m;
  private View n;
  private ShowSeasonAvailabilityItem[] o = null;
  private VideoData p = null;
  private String q = null;
  private ShowConfig r = null;
  private Asset[] s = null;
  private int t = 0;
  private AssetCarouselItem[] u;
  private int v;
  private boolean w = false;
  private String x = null;
  private boolean y = false;
  private int z = 0;
  
  public VideosFragment()
  {
    setRetainInstance(true);
  }
  
  private void b(VideoData paramVideoData)
  {
    G = 0;
    F = -1L;
    b(paramVideoData, G, F);
  }
  
  public static void f() {}
  
  private void k()
  {
    int i7 = 0;
    int i3 = 0;
    if ((o != null) && (o.length > 0))
    {
      ShowSeasonAvailabilityItem[] arrayOfShowSeasonAvailabilityItem = o;
      int i8 = arrayOfShowSeasonAvailabilityItem.length;
      int i4 = 0;
      int i2 = 0;
      for (int i1 = 0;; i1 = i5 + i1)
      {
        i7 = i3;
        i6 = i2;
        i5 = i1;
        if (i4 >= i8) {
          break;
        }
        ShowSeasonAvailabilityItem localShowSeasonAvailabilityItem = arrayOfShowSeasonAvailabilityItem[i4];
        i5 = localShowSeasonAvailabilityItem.getTotalCount();
        i6 = localShowSeasonAvailabilityItem.getPremiumCount();
        i7 = localShowSeasonAvailabilityItem.getDelayCount();
        i4 += 1;
        i3 = i7 + i3;
        i2 = i6 + i2;
      }
    }
    int i6 = 0;
    int i5 = 0;
    z = i5;
    A = i6;
    B = i7;
    new StringBuilder("total:").append(z).append(" premium:").append(A);
  }
  
  private void l()
  {
    ViewGroup localViewGroup = (ViewGroup)n.findViewById(2131690430);
    View localView1 = n.findViewById(2131690431);
    View localView2 = n.findViewById(2131690432);
    int i2 = Util.b(g);
    Object localObject1 = new TypedValue();
    getResources().getValue(2131361831, (TypedValue)localObject1, true);
    int i1 = (int)Math.round(((TypedValue)localObject1).getFloat() * i2);
    int i3 = Math.round(getResources().getDimension(2131361986));
    int i4 = i1 - i3;
    new StringBuilder("containerWidth222: ").append(i2).append(" leftWidth: ").append(i1).append(" cbsSpacing:").append(i3).append(" detailsWidth:").append(i2 - (i1 + i3)).append(" leftMargin:").append(i4);
    localObject1 = new RelativeLayout.LayoutParams(i4, -1);
    ((RelativeLayout.LayoutParams)localObject1).addRule(9);
    i2 = g.getResources().getInteger(2131492887);
    Object localObject2 = localViewGroup.findViewById(i2);
    if (localObject2 == null)
    {
      localObject2 = new View(g);
      ((View)localObject2).setId(i2);
      localViewGroup.addView((View)localObject2, (ViewGroup.LayoutParams)localObject1);
    }
    for (;;)
    {
      localObject1 = new RelativeLayout.LayoutParams(i1, -1);
      ((RelativeLayout.LayoutParams)localObject1).addRule(9);
      localObject2 = new RelativeLayout.LayoutParams(-1, -1);
      ((RelativeLayout.LayoutParams)localObject2).addRule(1, i2);
      localView1.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      localView1.setVisibility(0);
      localView2.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      localView2.setVisibility(0);
      localViewGroup.invalidate();
      return;
      ((View)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
    }
  }
  
  private void m()
  {
    int i3 = 0;
    int i2 = 0;
    E = null;
    E = new ArrayList();
    if (l.showId == 25748L)
    {
      E.add(Integer.valueOf(2222));
      new StringBuilder("final size: ").append(E.size());
      return;
    }
    int i1 = i3;
    if (o != null)
    {
      i1 = i3;
      if (m != null)
      {
        i1 = i3;
        if (m.getCategory() != null) {
          if (!m.getCategory().equalsIgnoreCase("Classics")) {
            break label281;
          }
        }
      }
    }
    label279:
    label281:
    for (i1 = 1;; i1 = 0)
    {
      ShowSeasonAvailabilityItem[] arrayOfShowSeasonAvailabilityItem = o;
      i3 = arrayOfShowSeasonAvailabilityItem.length;
      while (i2 < i3)
      {
        ShowSeasonAvailabilityItem localShowSeasonAvailabilityItem = arrayOfShowSeasonAvailabilityItem[i2];
        int i4 = localShowSeasonAvailabilityItem.getSeasonNum();
        if ((!E.contains(Integer.valueOf(i4))) && (i4 != 0) && (localShowSeasonAvailabilityItem.getTotalCount() > 0)) {
          E.add(Integer.valueOf(i4));
        }
        i2 += 1;
      }
      if (E.size() > 0)
      {
        new StringBuilder("we got size: ").append(E.size());
        Collections.sort(E);
        if (i1 == 0) {
          Collections.reverse(E);
        }
      }
      for (;;)
      {
        if (i1 != 0) {
          break label279;
        }
        E.add(Integer.valueOf(1111));
        break;
        E.add(Integer.valueOf(2222));
      }
      break;
    }
  }
  
  public final void a()
  {
    if ((g != null) && ((g instanceof AbstractFragmentActivity))) {
      ((AbstractFragmentActivity)g).b();
    }
  }
  
  public final void a(int paramInt)
  {
    Object localObject2;
    View localView1;
    View localView2;
    if (Util.i(g))
    {
      localObject2 = (ViewGroup)n.findViewById(2131690430);
      localView1 = n.findViewById(2131690431);
      localView2 = n.findViewById(2131690432);
      if (CBSPlayer.y())
      {
        localView1.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        localView1.setVisibility(0);
        localView2.setVisibility(8);
      }
    }
    for (;;)
    {
      Object localObject1 = getChildFragmentManager();
      localObject2 = ((FragmentManager)localObject1).findFragmentByTag("show_video_list_fragment");
      if ((localObject2 != null) && ((localObject2 instanceof VideoListFragment))) {
        ((VideoListFragment)localObject2).b(paramInt);
      }
      localObject2 = ((FragmentManager)localObject1).findFragmentByTag("show_video_details_fragment");
      if ((localObject2 != null) && ((localObject2 instanceof VideoDetailsFragment))) {
        ((VideoDetailsFragment)localObject2).a(paramInt);
      }
      localObject1 = ((FragmentManager)localObject1).findFragmentByTag("show_details_fragment");
      if ((localObject1 != null) && ((localObject1 instanceof ShowDetailsFragment)))
      {
        new StringBuilder("found ShowDetailsFragment2totalEpisodeCount: ").append(z).append("premiumEpisodeCount: ").append(A);
        ((ShowDetailsFragment)localObject1).a(paramInt);
      }
      return;
      int i1;
      if (paramInt == 1)
      {
        i1 = Util.a(g, 420.0D);
        if (CBSPlayer.y()) {}
        for (localObject1 = new RelativeLayout.LayoutParams(-1, -1);; localObject1 = new RelativeLayout.LayoutParams(-1, i1))
        {
          localView1.setLayoutParams((ViewGroup.LayoutParams)localObject1);
          localView1.setVisibility(0);
          localObject1 = new RelativeLayout.LayoutParams(-1, -1);
          ((RelativeLayout.LayoutParams)localObject1).addRule(3, localView1.getId());
          localView2.setLayoutParams((ViewGroup.LayoutParams)localObject1);
          localView2.setVisibility(0);
          ((ViewGroup)localObject2).invalidate();
          break;
        }
      }
      l();
      continue;
      localObject2 = (ViewGroup)n.findViewById(2131690430);
      localView1 = n.findViewById(2131690431);
      localView2 = n.findViewById(2131690432);
      if (CBSPlayer.y())
      {
        localView1.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        localView1.setVisibility(0);
      }
      else
      {
        if (paramInt == 1)
        {
          i1 = Util.a(g, 540.0D);
          if (CBSPlayer.y()) {}
          for (localObject1 = new RelativeLayout.LayoutParams(-1, -1);; localObject1 = new RelativeLayout.LayoutParams(-1, i1))
          {
            RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
            if (localView1 != null)
            {
              localView1.setLayoutParams((ViewGroup.LayoutParams)localObject1);
              localView1.setVisibility(0);
              localLayoutParams.addRule(3, localView1.getId());
            }
            if (localView2 != null)
            {
              localView2.setLayoutParams(localLayoutParams);
              localView2.setVisibility(0);
            }
            ((ViewGroup)localObject2).invalidate();
            break;
          }
        }
        l();
      }
    }
  }
  
  public final void a(ShowFragmentV2.NewViewInfo paramNewViewInfo)
  {
    l = a;
    m = c;
    if ((d != null) && ((d instanceof Asset[]))) {}
    for (s = ((Asset[])d);; s = null)
    {
      if ((f != null) && ((f instanceof ShowSeasonAvailabilityItem[])))
      {
        o = ((ShowSeasonAvailabilityItem[])f);
        if ((o != null) && (o.length != 0)) {
          k();
        }
      }
      m();
      if ((e != null) && ((e instanceof AssetCarouselItem[]))) {
        u = ((AssetCarouselItem[])e);
      }
      if ((n != null) && (y))
      {
        paramNewViewInfo = getChildFragmentManager();
        if ((Util.i(g)) || (Util.j(g)))
        {
          Fragment localFragment = paramNewViewInfo.findFragmentByTag("show_details_fragment");
          if ((localFragment != null) && ((localFragment instanceof ShowDetailsFragment)))
          {
            new StringBuilder("found ShowDetailsFragment2totalEpisodeCount: ").append(z).append("premiumEpisodeCount: ").append(A);
            ((ShowDetailsFragment)localFragment).a(u, z, A, B);
          }
        }
        paramNewViewInfo = paramNewViewInfo.findFragmentByTag("show_video_list_fragment");
        if ((paramNewViewInfo != null) && ((paramNewViewInfo instanceof VideoListFragment))) {
          ((VideoListFragment)paramNewViewInfo).a(E, v);
        }
      }
      return;
    }
  }
  
  public final void a(VideoData paramVideoData)
  {
    VideoUtil.PlayVideoListener local5 = new VideoUtil.PlayVideoListener()
    {
      public final void a(VideoData paramAnonymousVideoData, ShowItem paramAnonymousShowItem, int paramAnonymousInt, long paramAnonymousLong)
      {
        boolean bool = false;
        if (Util.H(VideosFragment.J(VideosFragment.this))) {
          bool = com.google.android.libraries.cast.companionlibrary.cast.c.B().j();
        }
        if (bool)
        {
          VideoUtil.a(VideosFragment.K(VideosFragment.this), paramAnonymousVideoData, CBSPlayer.getPosition(), true);
          paramAnonymousShowItem = Action.bY;
          HashMap localHashMap = new HashMap();
          localHashMap.put("events", "event91");
          localHashMap.put("appState", paramAnonymousShowItem.getAppState());
          localHashMap.put("ChromecastVideoTitle", VideoUtil.b(paramAnonymousVideoData));
          AnalyticsManager.a(getActivity(), paramAnonymousShowItem, localHashMap);
          VideosFragment.j();
          return;
        }
        if (Util.e(VideosFragment.L(VideosFragment.this)))
        {
          g();
          b(paramAnonymousVideoData, paramAnonymousInt, paramAnonymousLong);
          return;
        }
        VideosFragment.a(VideosFragment.this, paramAnonymousVideoData);
        VideosFragment.a(VideosFragment.this, paramAnonymousInt);
        VideosFragment.a(VideosFragment.this, paramAnonymousLong);
        i();
      }
    };
    VideoUtil.a(g, paramVideoData, l, local5);
  }
  
  public final void a(VideoData paramVideoData, int paramInt, long paramLong)
  {
    G = paramInt;
    F = paramLong;
    p = paramVideoData;
    if (p != null)
    {
      i();
      if (CBSPlayer.getActivePid() != null) {
        break label54;
      }
      new StringBuilder("setSelectedVideo:").append(p.getPid());
    }
    label54:
    while (p.getPid().equals(CBSPlayer.getActivePid())) {
      return;
    }
    new StringBuilder("setSelectedVideo:").append(p.getPid()).append("Active PID:").append(CBSPlayer.getActivePid());
  }
  
  public final void b(VideoData paramVideoData, int paramInt, long paramLong)
  {
    int i1 = 1;
    G = paramInt;
    F = paramLong;
    if (((Util.g(g)) || (Util.f(g))) && (paramVideoData != null))
    {
      if (CBSPlayer.getActivePid() != null) {
        break label145;
      }
      new StringBuilder("setSelectedVideo:").append(paramVideoData.getPid());
      paramInt = i1;
    }
    for (;;)
    {
      if (paramInt != 0)
      {
        Intent localIntent = new Intent(g, PlayerActivityV2.class);
        localIntent.putExtra("videoData", paramVideoData);
        if (GlobalConstants.b) {
          localIntent.setFlags(268468224);
        }
        localIntent.putExtra("resumeTime", F);
        localIntent.putExtra("resumeMode", G);
        g.startActivity(localIntent);
      }
      return;
      label145:
      if (!paramVideoData.getPid().equals(CBSPlayer.getActivePid()))
      {
        new StringBuilder("setSelectedVideo:").append(paramVideoData.getPid()).append("Active PID:").append(CBSPlayer.getActivePid());
        paramInt = i1;
      }
      else
      {
        Toast.makeText(g, "You are already watching this video.", 1).show();
        paramInt = 0;
      }
    }
  }
  
  public final void e()
  {
    if ((g != null) && ((g instanceof AbstractFragmentActivity))) {
      ((AbstractFragmentActivity)g).c();
    }
  }
  
  public final void g()
  {
    new StringBuilder("showVideoData :").append(v);
    t = 0;
    if ((y) && (n != null) && (g != null))
    {
      if ((Util.g(g)) || (Util.f(g)))
      {
        localObject = getActivity().getSupportFragmentManager().findFragmentByTag("fragment_show_home");
        if ((localObject != null) && ((localObject instanceof ShowFragmentV2))) {
          ((ShowFragmentV2)localObject).setVideoShowing(null);
        }
      }
      Object localObject = getChildFragmentManager().beginTransaction();
      int i1 = 2131690429;
      if ((Util.i(g)) || (Util.j(g))) {
        i1 = 2131690432;
      }
      if (n.findViewById(i1) != null)
      {
        VideoListFragment localVideoListFragment = new VideoListFragment();
        localVideoListFragment.setShowItem(l);
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("show", m);
        localBundle.putParcelableArray("showSeasons", o);
        localBundle.putIntegerArrayList("orderedShowSeasonNumbers", E);
        localBundle.putInt("selection", v);
        localBundle.putParcelable("selectedVideo", p);
        localVideoListFragment.setArguments(localBundle);
        ((FragmentTransaction)localObject).replace(i1, localVideoListFragment, "show_video_list_fragment");
        ((FragmentTransaction)localObject).commitAllowingStateLoss();
      }
    }
  }
  
  public final void h()
  {
    t = 0;
    if ((y) && (n != null))
    {
      Object localObject = getActivity().getSupportFragmentManager().findFragmentByTag("fragment_show_home");
      if ((localObject != null) && ((localObject instanceof ShowFragmentV2))) {
        ((ShowFragmentV2)localObject).setVideoShowing(null);
      }
      localObject = new Bundle();
      ((Bundle)localObject).putParcelable("show", m);
      ((Bundle)localObject).putParcelable("configuration", r);
      ((Bundle)localObject).putParcelableArray("assets", s);
      ((Bundle)localObject).putParcelableArray("assetCarousel", u);
      new StringBuilder("Bundle Values: total").append(z).append(" premium:").append(A);
      ((Bundle)localObject).putInt("totalEpisodeCount", z);
      ((Bundle)localObject).putInt("premiumEpisodeCount", A);
      ((Bundle)localObject).putInt("delayedEpisodeCount", B);
      FragmentTransaction localFragmentTransaction = getChildFragmentManager().beginTransaction();
      ShowDetailsFragment localShowDetailsFragment = new ShowDetailsFragment();
      localShowDetailsFragment.setArguments((Bundle)localObject);
      int i1 = 2131690429;
      if ((Util.i(g)) || (Util.j(g))) {
        i1 = 2131690431;
      }
      if (n.findViewById(i1) != null)
      {
        localFragmentTransaction.replace(i1, localShowDetailsFragment, "show_details_fragment");
        localFragmentTransaction.commitAllowingStateLoss();
      }
    }
  }
  
  public final void i()
  {
    t = 1;
    Object localObject1;
    if ((y) && (n != null))
    {
      localObject1 = getActivity().getSupportFragmentManager().findFragmentByTag("fragment_show_home");
      if ((localObject1 != null) && ((localObject1 instanceof ShowFragmentV2))) {
        ((ShowFragmentV2)localObject1).setVideoShowing(p);
      }
      localObject1 = new Bundle();
      ((Bundle)localObject1).putParcelable("show", m);
      new StringBuilder("show: ").append(m);
      ((Bundle)localObject1).putString("pid", x);
      new StringBuilder("pid: ").append(x);
      if (!C) {
        break label249;
      }
      new StringBuilder("isRefreshing: ").append(C);
      ((Bundle)localObject1).putParcelable("videoData", AccountUIHelper.getVideoData());
    }
    for (;;)
    {
      F = -1L;
      G = 0;
      if (g != null)
      {
        Object localObject2 = getChildFragmentManager();
        if (localObject2 != null)
        {
          localObject2 = ((FragmentManager)localObject2).beginTransaction();
          VideoDetailsFragment localVideoDetailsFragment = new VideoDetailsFragment();
          localVideoDetailsFragment.setArguments((Bundle)localObject1);
          int i1 = 2131690429;
          if (Util.h(g)) {
            i1 = 2131690431;
          }
          if (n.findViewById(i1) != null)
          {
            ((FragmentTransaction)localObject2).replace(i1, localVideoDetailsFragment, "show_video_details_fragment");
            ((FragmentTransaction)localObject2).commitAllowingStateLoss();
          }
        }
      }
      return;
      label249:
      ((Bundle)localObject1).putParcelable("videoData", p);
      ((Bundle)localObject1).putParcelable("configuration", r);
      ((Bundle)localObject1).putParcelableArray("assets", s);
      ((Bundle)localObject1).putLong("resumeTime", F);
      ((Bundle)localObject1).putInt("resumeMode", G);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    Util.d(g);
    if ((Util.a(paramConfiguration)) || (Util.b(paramConfiguration))) {
      a(orientation);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    y = true;
    CBSPlayer.k();
    n = paramLayoutInflater.inflate(2130903308, paramViewGroup, false);
    if (g != null)
    {
      if ((p == null) && (q == null) && ((Util.i(g)) || (Util.j(g)))) {
        c = true;
      }
      if ((g instanceof NavigationActivity)) {
        ((NavigationActivity)g).a(H);
      }
      paramLayoutInflater = getArguments();
      paramViewGroup = paramLayoutInflater.getBundle("show_item");
      if (l == null) {
        l = new ShowItem();
      }
      l.setBundle(paramViewGroup);
      m = ((Show)paramLayoutInflater.getParcelable("show"));
      x = paramLayoutInflater.getString("pid");
      r = ((ShowConfig)paramLayoutInflater.getParcelable("configuration"));
      C = paramLayoutInflater.getBoolean("isRefreshing");
      paramViewGroup = paramLayoutInflater.getParcelableArray("assets");
      if ((paramViewGroup != null) && (paramViewGroup.length > 0) && ((paramViewGroup instanceof Asset[]))) {
        s = ((Asset[])paramViewGroup);
      }
      paramViewGroup = paramLayoutInflater.getParcelableArray("showSeasons");
      if ((paramViewGroup != null) && ((paramViewGroup instanceof ShowSeasonAvailabilityItem[])))
      {
        o = ((ShowSeasonAvailabilityItem[])paramViewGroup);
        new StringBuilder("showSeasons.size: ").append(o.length);
        k();
      }
      m();
      paramViewGroup = paramLayoutInflater.getParcelableArray("carousel");
      if ((paramViewGroup != null) && (paramViewGroup.length > 0) && ((paramViewGroup instanceof AssetCarouselItem[]))) {
        u = ((AssetCarouselItem[])paramViewGroup);
      }
      p = ((VideoData)paramLayoutInflater.getParcelable("selectedVideo"));
      q = paramLayoutInflater.getString("selectedVideoId");
      F = paramLayoutInflater.getLong("resumeTime");
      G = paramLayoutInflater.getInt("resumeMode");
      paramLayoutInflater.remove("resumeTime");
      paramLayoutInflater.remove("resumeMode");
      if (p != null)
      {
        new StringBuilder("selectedVideo: ").append(p.getPid());
        paramLayoutInflater.remove("selectedVideo");
      }
      if (paramLayoutInflater.getBoolean("dontShowPlayer", false)) {
        w = true;
      }
      if ((Util.e(g)) && (p != null) && (!w))
      {
        b(p);
        w = true;
      }
      d();
      if ((n != null) && (y))
      {
        if ((!Util.i(g)) && (!Util.j(g))) {
          break label609;
        }
        g();
        if ((p == null) && (x == null)) {
          break label583;
        }
        i();
      }
    }
    for (;;)
    {
      if (Util.h(g)) {
        a(g.getResources().getConfiguration().orientation);
      }
      D = new b.a(g).a(com.google.android.gms.appindexing.b.b).b();
      if (Util.H(g)) {
        MainApplication.getVideoCastManager().a(h);
      }
      return n;
      label583:
      if (C)
      {
        i();
        C = false;
      }
      else
      {
        h();
        continue;
        label609:
        if ((p != null) && (!w))
        {
          g();
          b(p);
          w = true;
        }
        else if (p != null)
        {
          setSelectedVideo(p);
        }
        else
        {
          g();
        }
      }
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    d();
    if ((g instanceof NavigationActivity)) {
      ((NavigationActivity)g).b(H);
    }
    n = null;
    if (Util.H(g)) {
      MainApplication.getVideoCastManager().b(h);
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
  }
  
  public void onPause()
  {
    d();
    super.onPause();
    CBSPlayer.b(i);
    y = false;
  }
  
  public void onResume()
  {
    CBSPlayer.a(i);
    if (l != null)
    {
      e = l.title;
      f = String.valueOf(l.showId);
    }
    d = Action.j;
    super.onResume();
    y = true;
  }
  
  public void onStart()
  {
    super.onStart();
    try
    {
      D.c();
      Object localObject1 = GoogleAppIndexDeepLinkUtil.a(m, null, null);
      Object localObject2 = GoogleAppIndexDeepLinkUtil.b(m, null, null);
      if ((localObject1 != null) && (localObject2 != null))
      {
        localObject1 = Uri.parse((String)localObject1);
        localObject2 = Uri.parse((String)localObject2);
        String str = m.getTitle() + " - CBS.com";
        com.google.android.gms.appindexing.b.c.a(D, (Uri)localObject1, str, (Uri)localObject2);
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onStop()
  {
    super.onStop();
    try
    {
      com.google.android.gms.appindexing.b.c.a(D, k);
      D.d();
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    if (q != null)
    {
      new StringBuilder("selectedVideoId: ").append(q);
      new ShowServiceImpl().g(g, q, I);
      getArguments().remove("selectedVideoId");
    }
  }
  
  public void setArguments(Bundle paramBundle)
  {
    if (l != null) {
      paramBundle.putBundle("show_item", l.getBundle());
    }
    super.setArguments(paramBundle);
  }
  
  public void setSelectedVideo(VideoData paramVideoData)
  {
    G = 0;
    F = -1L;
    a(paramVideoData, G, F);
  }
  
  public void setSelection(int paramInt)
  {
    v = paramInt;
  }
  
  public void setShowItem(ShowItem paramShowItem)
  {
    l = paramShowItem;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideosFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */