package com.cbs.app.view.fragments;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import com.cbs.app.adapter.HomeMarqueeFragmentAdapter;
import com.cbs.app.adapter.HomeVideoPhoneAdapter;
import com.cbs.app.adapter.HomeVideoTabletAdapter;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.listener.HomeVideoGridItemClickListener;
import com.cbs.app.listener.HomeVideoListItemClickListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.DeviceHome;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.MyCbsEndpointResponse;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.GoogleAppIndexDeepLinkUtil;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.widget.CbsCirclePageIndicator;
import com.google.android.gms.appindexing.c;
import com.google.android.gms.common.api.b.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class HomeFragment
  extends AbstractAsyncFragment
{
  private static final String m = HomeFragment.class.getName();
  private static boolean n = false;
  private static Uri o = null;
  private static Uri p = null;
  private Runnable A;
  private ShowItem[] B = null;
  private boolean C = false;
  private int D = 0;
  boolean h = false;
  List<VideoData> i = new ArrayList();
  ResponseModelListener j = new ResponseModelListener()
  {
    public final void a()
    {
      HomeFragment.this.a();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      HomeFragment.f();
      int i;
      if ((paramAnonymousResponseModel instanceof VideoEndpointResponse))
      {
        paramAnonymousResponseModel = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
        if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
        {
          HomeFragment.f();
          new StringBuilder("video list size: ").append(paramAnonymousResponseModel.size());
          HomeFragment.a(HomeFragment.this, (VideoData[])paramAnonymousResponseModel.toArray(new VideoData[paramAnonymousResponseModel.size()]));
          HomeFragment.a(HomeFragment.this, VideoUtil.a(HomeFragment.a(HomeFragment.this)));
        }
        HomeFragment.f();
        paramAnonymousResponseModel = new StringBuilder("video list size2: ");
        if (HomeFragment.a(HomeFragment.this) == null)
        {
          i = 0;
          paramAnonymousResponseModel.append(i);
          HomeFragment.g();
          paramAnonymousResponseModel = getApplicationContext();
          if (paramAnonymousResponseModel == null) {
            break label224;
          }
        }
      }
      label224:
      for (paramAnonymousResponseModel = ((MainApplication)paramAnonymousResponseModel).getMycbsShows();; paramAnonymousResponseModel = null)
      {
        FragmentActivity localFragmentActivity = getActivity();
        if ((localFragmentActivity != null) && (Util.y(localFragmentActivity) != null) && (paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
        {
          a(paramAnonymousResponseModel);
          return;
          i = HomeFragment.a(HomeFragment.this).length;
          break;
        }
        HomeFragment.this.a();
        return;
        HomeFragment.this.a();
        return;
      }
    }
  };
  ResponseModelListener k = new ResponseModelListener()
  {
    public final void a()
    {
      HomeFragment.this.a();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      HomeFragment.f();
      if ((paramAnonymousResponseModel instanceof MyCbsEndpointResponse))
      {
        paramAnonymousResponseModel = ((MyCbsEndpointResponse)paramAnonymousResponseModel).getShowVideoArray();
        if (paramAnonymousResponseModel != null)
        {
          paramAnonymousResponseModel = HomeFragment.a(HomeFragment.this, paramAnonymousResponseModel);
          Collections.sort(paramAnonymousResponseModel, new Comparator() {});
          int i;
          if (paramAnonymousResponseModel.size() > 24)
          {
            i = paramAnonymousResponseModel.size() - 1;
            while (i > 23)
            {
              paramAnonymousResponseModel.remove(i);
              i -= 1;
            }
          }
          if ((HomeFragment.a(HomeFragment.this) != null) && (paramAnonymousResponseModel.size() < 24))
          {
            VideoData[] arrayOfVideoData = HomeFragment.a(HomeFragment.this);
            int j = arrayOfVideoData.length;
            i = 0;
            while (i < j)
            {
              VideoData localVideoData = arrayOfVideoData[i];
              if (paramAnonymousResponseModel.size() >= 24) {
                break;
              }
              if (!paramAnonymousResponseModel.contains(localVideoData)) {
                paramAnonymousResponseModel.add(localVideoData);
              }
              i += 1;
            }
          }
          HomeFragment.a(HomeFragment.this, (VideoData[])paramAnonymousResponseModel.toArray(new VideoData[paramAnonymousResponseModel.size()]));
        }
      }
      HomeFragment.this.a();
    }
  };
  AccountUIHelper.RefreshAccountListener l = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      HomeFragment.f();
      Util.a(getActivity());
      Parcelable[] arrayOfParcelable = getActivity().getIntent().getParcelableArrayExtra("homeMarquee");
      if (arrayOfParcelable != null)
      {
        HomeFragment.a(HomeFragment.this, new DeviceHome[arrayOfParcelable.length]);
        int k = arrayOfParcelable.length;
        int i = 0;
        int j = 0;
        while (i < k)
        {
          Parcelable localParcelable = arrayOfParcelable[i];
          HomeFragment.b(HomeFragment.this)[j] = ((DeviceHome)localParcelable);
          j += 1;
          i += 1;
        }
        HomeFragment.a(HomeFragment.this, new HomeMarqueeFragmentAdapter(getChildFragmentManager(), HomeFragment.b(HomeFragment.this)));
      }
      e();
    }
  };
  private final boolean q = false;
  private final Handler r = new Handler();
  private final Object s = new Object();
  private VideoData[] t = null;
  private com.google.android.gms.common.api.b u;
  private DeviceHome[] v = null;
  private View w = null;
  private HomeMarqueeFragmentAdapter x;
  private ViewPager y;
  private CbsCirclePageIndicator z;
  
  public HomeFragment()
  {
    setRetainInstance(true);
  }
  
  public static int a(VideoData paramVideoData1, VideoData paramVideoData2)
  {
    long l1 = paramVideoData1.getAirDate();
    long l2 = paramVideoData2.getAirDate();
    if (l2 > l1) {
      return 1;
    }
    if (l1 > l2) {
      return -1;
    }
    return 0;
  }
  
  private void h()
  {
    new ShowServiceImpl().a(getActivity(), j);
  }
  
  private void i()
  {
    if (w != null)
    {
      if (h)
      {
        localListView = (ListView)w.findViewById(2131689911);
        localListView.setAdapter(new HomeVideoPhoneAdapter(getActivity(), t));
        localListView.setOnItemClickListener(new HomeVideoListItemClickListener(t, getActivity(), AuthStatusManager.getUserStatusDescription(), "HomeFragment"));
        d();
      }
    }
    else {
      return;
    }
    ListView localListView = (ListView)w.findViewById(2131689912);
    HomeVideoTabletAdapter localHomeVideoTabletAdapter = new HomeVideoTabletAdapter(getActivity(), t);
    if (Util.k(getActivity())) {
      localHomeVideoTabletAdapter.setNumColumns(4);
    }
    for (;;)
    {
      localListView.setAdapter(localHomeVideoTabletAdapter);
      localHomeVideoTabletAdapter.setOnGridClickListener(new HomeVideoGridItemClickListener(t, getActivity(), AuthStatusManager.getUserStatusDescription()));
      return;
      localHomeVideoTabletAdapter.setNumColumns(3);
    }
  }
  
  private void j()
  {
    y.setAdapter(x);
    y.setOffscreenPageLimit(2);
    y.setClipChildren(false);
    if ((Util.i(g)) || (Util.j(g))) {
      y.setPageMargin(Util.a(getActivity(), 20.0D));
    }
    y.setCurrentItem(25);
    z.setViewPager(y);
    z.setOnPageChangeListener(new ViewPager.OnPageChangeListener()
    {
      public final void onPageScrollStateChanged(int paramAnonymousInt) {}
      
      public final void onPageScrolled(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void onPageSelected(int paramAnonymousInt)
      {
        int i = HomeFragment.c(HomeFragment.this).getDeviceHomeCount();
        if (i != 0)
        {
          DeviceHome localDeviceHome = HomeFragment.c(HomeFragment.this).a(paramAnonymousInt);
          if (localDeviceHome != null) {
            a(paramAnonymousInt % i, localDeviceHome);
          }
        }
      }
    });
    y.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        HomeFragment.e(HomeFragment.this).removeCallbacks(HomeFragment.d(HomeFragment.this));
        HomeFragment.e(HomeFragment.this).postDelayed(HomeFragment.d(HomeFragment.this), 4000L);
        if (paramAnonymousView.getId() == 2131690079) {
          paramAnonymousView.getParent().requestDisallowInterceptTouchEvent(true);
        }
        switch (paramAnonymousMotionEvent.getAction() & 0xFF)
        {
        default: 
          return false;
        }
        paramAnonymousView.getParent().requestDisallowInterceptTouchEvent(false);
        return false;
      }
    });
    A = new Runnable()
    {
      public final void run()
      {
        if ((HomeFragment.f(HomeFragment.this)) && (HomeFragment.g(HomeFragment.this) != null) && (HomeFragment.h(HomeFragment.this) != null))
        {
          HomeFragment.h(HomeFragment.this).setCurrentItem(HomeFragment.h(HomeFragment.this).getCurrentItem() + 1, true);
          HomeFragment.e(HomeFragment.this).postDelayed(HomeFragment.d(HomeFragment.this), 4000L);
        }
      }
    };
  }
  
  public final void a()
  {
    if (t != null) {
      Arrays.sort(t, new Comparator() {});
    }
    if (t != null) {}
    for (int i1 = t.length; i1 < 24; i1 = 0)
    {
      i1 = (24 - i1) / 2 + 1;
      ShowServiceImpl localShowServiceImpl = new ShowServiceImpl();
      localShowServiceImpl.a(getActivity(), "617", i1, new a((byte)0));
      localShowServiceImpl.a(getActivity(), "618", i1, new a((byte)0));
      return;
    }
    d();
    i();
    d();
  }
  
  public final void a(int paramInt, DeviceHome paramDeviceHome)
  {
    String str2 = null;
    String str3 = paramDeviceHome.getOptional_id();
    try
    {
      l1 = Long.parseLong(str3);
      Object localObject1 = paramDeviceHome.getAction();
      if ((localObject1 != null) && (((List)localObject1).size() > 0))
      {
        localObject1 = (String)((List)localObject1).get(((List)localObject1).size() - 1);
        Object localObject3 = paramDeviceHome.getTarget();
        String str1 = str2;
        if (localObject3 != null)
        {
          str1 = str2;
          if (((List)localObject3).size() > 0) {
            str1 = (String)((List)localObject3).get(((List)localObject3).size() - 1);
          }
        }
        str2 = paramDeviceHome.getPid();
        localObject3 = ShowServiceManager.a(l1);
        paramDeviceHome = new HashMap();
        if (localObject1 != null) {
          paramDeviceHome.put("action", localObject1);
        }
        paramDeviceHome.put("appState", "cbscom:Homescreen");
        if (str1 != null) {
          paramDeviceHome.put("target", str1);
        }
        paramDeviceHome.put("position", Integer.toString(paramInt));
        if (str3 != null) {
          paramDeviceHome.put("optionalId", str3);
        }
        paramDeviceHome.put("events", "event19");
        if (str2 != null) {
          paramDeviceHome.put("cid", str2);
        }
        if (localObject3 != null)
        {
          paramDeviceHome.put("ShowTitle", title);
          paramDeviceHome.put("showId", String.valueOf(showId));
          localObject1 = "cbscom:" + showId + "|" + showId;
          paramDeviceHome.put("evar_63", localObject1);
          paramDeviceHome.put("prop_63", localObject1);
        }
        AnalyticsManager.c(g, Action.av, paramDeviceHome);
        return;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        long l1 = 0L;
        continue;
        Object localObject2 = null;
      }
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    for (;;)
    {
      synchronized (s)
      {
        if ((paramResponseModel instanceof VideoEndpointResponse))
        {
          paramResponseModel = (VideoEndpointResponse)paramResponseModel;
          if (paramResponseModel.getItemList() != null) {
            i.addAll(paramResponseModel.getItemList());
          }
        }
        D += 1;
        if (D != 2) {
          break label198;
        }
        Collections.sort(i, new Comparator() {});
        if (t != null)
        {
          paramResponseModel = new ArrayList(Arrays.asList(t));
          Iterator localIterator = i.iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          VideoData localVideoData = (VideoData)localIterator.next();
          if (paramResponseModel.size() >= 24) {
            break;
          }
          paramResponseModel.add(localVideoData);
        }
      }
      paramResponseModel = new ArrayList();
    }
    t = ((VideoData[])paramResponseModel.toArray(new VideoData[paramResponseModel.size()]));
    d();
    i();
    d();
    label198:
  }
  
  public final void a(List<FavoriteShow> paramList)
  {
    d();
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ShowItem localShowItem = ShowServiceManager.a(((FavoriteShow)paramList.next()).getCbsShowId());
      if (localShowItem != null) {
        localArrayList.add(Long.valueOf(showId));
      }
    }
    new ShowServiceImpl().b(g, localArrayList, Integer.valueOf(4), k);
  }
  
  public final void e()
  {
    j();
    h();
    d();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    d();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    d();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if ((n) && (!h))
    {
      i();
      d();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int i3 = 0;
    AccountUIHelper.a(l);
    c = true;
    c();
    paramBundle = getApplicationContext();
    if ((Util.j(paramBundle)) || (Util.i(paramBundle))) {}
    for (int i1 = 0;; i1 = 1)
    {
      int i4;
      int i2;
      if (i1 != 0)
      {
        h = true;
        w = paramLayoutInflater.inflate(2130903146, paramViewGroup, false);
        paramViewGroup = paramLayoutInflater.inflate(2130903193, null);
        y = ((ViewPager)paramViewGroup.findViewById(2131690079));
        paramLayoutInflater = (ListView)w.findViewById(2131689911);
        paramLayoutInflater.addHeaderView(paramViewGroup);
        paramViewGroup = new LinearLayout.LayoutParams(-1, (int)Math.round(Util.b(g) / 640.0D * 240.0D));
        gravity = 48;
        y.setLayoutParams(paramViewGroup);
        paramViewGroup = g.getLayoutInflater().inflate(2130903140, null, false);
        if (paramLayoutInflater.getFooterViewsCount() == 0)
        {
          paramLayoutInflater.addFooterView(paramViewGroup);
          paramLayoutInflater.setFooterDividersEnabled(false);
        }
        paramLayoutInflater.setOnItemClickListener(new HomeVideoListItemClickListener(t, getActivity(), AuthStatusManager.getUserStatusDescription(), "HomeFragment"));
        d();
        x = new HomeMarqueeFragmentAdapter(getChildFragmentManager(), new DeviceHome[0]);
        paramLayoutInflater = getArguments();
        if (paramLayoutInflater == null) {
          break label502;
        }
        paramViewGroup = getActivity().getIntent().getParcelableArrayExtra("homeMarquee");
        if (paramViewGroup == null) {
          break label428;
        }
        v = new DeviceHome[paramViewGroup.length];
        i4 = paramViewGroup.length;
        i2 = 0;
        i1 = 0;
        label276:
        if (i2 >= i4) {
          break label409;
        }
        paramBundle = paramViewGroup[i2];
        if (paramBundle == null) {
          break label563;
        }
        v[i1] = ((DeviceHome)paramBundle);
        i1 += 1;
      }
      label409:
      label428:
      label502:
      label560:
      label563:
      for (;;)
      {
        i2 += 1;
        break label276;
        w = paramLayoutInflater.inflate(2130903147, paramViewGroup, false);
        paramViewGroup = paramLayoutInflater.inflate(2130903194, null);
        y = ((ViewPager)paramViewGroup.findViewById(2131690079));
        paramLayoutInflater = (ListView)w.findViewById(2131689912);
        paramLayoutInflater.addHeaderView(paramViewGroup);
        paramViewGroup = g.getLayoutInflater().inflate(2130903140, null, false);
        if (paramLayoutInflater.getFooterViewsCount() != 0) {
          break;
        }
        paramLayoutInflater.addFooterView(paramViewGroup);
        paramLayoutInflater.setFooterDividersEnabled(false);
        break;
        x = new HomeMarqueeFragmentAdapter(getChildFragmentManager(), v);
        paramLayoutInflater = paramLayoutInflater.getParcelableArray("primetime");
        if (paramLayoutInflater != null)
        {
          B = new ShowItem[paramLayoutInflater.length];
          i4 = paramLayoutInflater.length;
          i2 = 0;
          i1 = i3;
          if (i2 < i4)
          {
            paramViewGroup = paramLayoutInflater[i2];
            if (paramViewGroup == null) {
              break label560;
            }
            B[i1] = ((ShowItem)paramViewGroup);
            i1 += 1;
          }
        }
        for (;;)
        {
          i2 += 1;
          break;
          z = ((CbsCirclePageIndicator)w.findViewById(2131690092));
          j();
          h();
          d();
          u = new b.a(getActivity()).a(com.google.android.gms.appindexing.b.b).b();
          return w;
        }
      }
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    AccountUIHelper.b(l);
    d();
  }
  
  public void onDetach()
  {
    super.onDetach();
    w = null;
    y = null;
    x = null;
    z = null;
    d();
  }
  
  public void onPause()
  {
    super.onPause();
    C = false;
    if (r != null) {
      r.removeCallbacks(A);
    }
    d();
  }
  
  public void onResume()
  {
    d = Action.d;
    super.onResume();
    C = true;
    if (r != null)
    {
      r.removeCallbacks(A);
      r.postDelayed(A, 4000L);
    }
    d();
    if ((g != null) && (!g.isFinishing())) {
      AccountUIHelper.i(g);
    }
    if (Util.v(g))
    {
      FragmentActivity localFragmentActivity = getActivity();
      if ((localFragmentActivity != null) && ((localFragmentActivity instanceof NavigationActivity))) {
        ((NavigationActivity)localFragmentActivity).a(-1L, Util.c("fragment_cbs_home"));
      }
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (r != null)
    {
      r.removeCallbacks(A);
      r.postDelayed(A, 4000L);
    }
    d();
    try
    {
      u.c();
      Object localObject1 = GoogleAppIndexDeepLinkUtil.a(null, null, null);
      Object localObject2 = GoogleAppIndexDeepLinkUtil.b(null, null, null);
      o = Uri.parse((String)localObject1);
      new StringBuilder("HomeFragment....APP_URI : ").append(o);
      p = Uri.parse((String)localObject2);
      new StringBuilder("HomeFragment...WEB_URL : ").append(p);
      localObject1 = com.google.android.gms.appindexing.b.c;
      localObject2 = u;
      getActivity();
      ((c)localObject1).a((com.google.android.gms.common.api.b)localObject2, o, "CBS TV Network Primetime, Daytime, Late Night and Classic Television Shows", p);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onStop()
  {
    super.onStop();
    d();
    try
    {
      c localc = com.google.android.gms.appindexing.b.c;
      com.google.android.gms.common.api.b localb = u;
      getActivity();
      localc.a(localb, o);
      u.d();
      return;
    }
    catch (Exception localException) {}
  }
  
  private final class a
    implements ResponseModelListener
  {
    private a() {}
    
    public final void a()
    {
      HomeFragment.this.a(null);
    }
    
    public final void a(ResponseModel paramResponseModel)
    {
      HomeFragment.this.a(paramResponseModel);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.HomeFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */