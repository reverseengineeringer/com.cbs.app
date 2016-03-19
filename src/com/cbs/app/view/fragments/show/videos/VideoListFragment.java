package com.cbs.app.view.fragments.show.videos;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.cbs.app.adapter.VideoAdapter;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.listener.VideoListViewOnScrollListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NielsenDialogHelper;
import com.cbs.app.view.NielsenDialogHelper.VideoClickListener;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.GoogleAppIndexDeepLinkUtil;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.view.utils.VideoUtil.PlayVideoListener;
import com.cbs.app.visualon.player.CBSPlayer;
import com.cbs.app.widget.GridViewWithHeaderBaseAdapter.GridItemClickListener;
import com.google.android.gms.common.api.b.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class VideoListFragment
  extends AbstractVideoListFragment
{
  private static final String i = VideoListFragment.class.getSimpleName();
  private static boolean j = false;
  private static int k = 0;
  private static Uri l = null;
  private int A = 1;
  private ListView B;
  private ResponseModelListener C = new ResponseModelListener()
  {
    public final void a()
    {
      d();
      VideoListFragment.this.a();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      VideoListFragment.e();
      if (VideoListFragment.a(VideoListFragment.this) == null) {
        VideoListFragment.a(VideoListFragment.this, (AppCompatActivity)getActivity());
      }
      if (((paramAnonymousResponseModel instanceof VideoEndpointResponse)) && (VideoListFragment.b(VideoListFragment.this) != null))
      {
        Object localObject = VideoListFragment.c(VideoListFragment.this).getSupportFragmentManager().findFragmentByTag("fragment_show_home");
        if ((localObject != null) && ((VideosFragment)((Fragment)localObject).getChildFragmentManager().findFragmentByTag("fragment_show_videos") != null))
        {
          localObject = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
          if ((localObject != null) && (((ArrayList)localObject).size() > 0))
          {
            VideoListFragment.e();
            new StringBuilder("videoList clip response size :").append(((ArrayList)localObject).size());
            paramAnonymousResponseModel = new VideoData[((ArrayList)localObject).size()];
            localObject = ((ArrayList)localObject).iterator();
            int i = 0;
            while (((Iterator)localObject).hasNext())
            {
              paramAnonymousResponseModel[i] = ((VideoData)((Iterator)localObject).next());
              i += 1;
            }
            if ((VideoListFragment.d(VideoListFragment.this) == null) || (VideoListFragment.d(VideoListFragment.this).length <= 0)) {
              break label222;
            }
            VideoListFragment.a(VideoListFragment.this, VideoListFragment.a(VideoListFragment.d(VideoListFragment.this), paramAnonymousResponseModel));
          }
        }
      }
      for (;;)
      {
        d();
        VideoListFragment.this.a();
        return;
        label222:
        VideoListFragment.a(VideoListFragment.this, paramAnonymousResponseModel);
      }
    }
  };
  private ResponseModelListener D = new ResponseModelListener()
  {
    public final void a()
    {
      d();
      VideoListFragment.this.a();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      VideoListFragment.e();
      if (getActivity() == null) {
        return;
      }
      if ((paramAnonymousResponseModel instanceof VideoEndpointResponse))
      {
        Object localObject = VideoListFragment.e(VideoListFragment.this).getSupportFragmentManager().findFragmentByTag("fragment_show_home");
        if ((localObject != null) && ((VideosFragment)((Fragment)localObject).getChildFragmentManager().findFragmentByTag("fragment_show_videos") != null))
        {
          localObject = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
          if (localObject != null)
          {
            Collections.sort((List)localObject);
            Collections.reverse((List)localObject);
          }
          if ((VideoListFragment.f()) && (localObject != null) && (((ArrayList)localObject).size() >= 2))
          {
            VideoListFragment.e();
            Collections.reverse((List)localObject);
          }
          if ((localObject != null) && (!VideoListFragment.f()) && (VideoListFragment.f(VideoListFragment.this) > 0) && (VideoListFragment.f(VideoListFragment.this) < VideoListFragment.g(VideoListFragment.this).size() - 1)) {
            Collections.reverse((List)localObject);
          }
          if ((localObject != null) && (((ArrayList)localObject).size() > 0))
          {
            paramAnonymousResponseModel = new VideoData[((ArrayList)localObject).size()];
            localObject = ((ArrayList)localObject).iterator();
            int i = 0;
            while (((Iterator)localObject).hasNext())
            {
              paramAnonymousResponseModel[i] = ((VideoData)((Iterator)localObject).next());
              i += 1;
            }
            if ((VideoListFragment.d(VideoListFragment.this) == null) || (VideoListFragment.d(VideoListFragment.this).length <= 0) || (VideoListFragment.h(VideoListFragment.this) <= 1)) {
              break label359;
            }
            VideoListFragment.a(VideoListFragment.this, VideoListFragment.a(VideoListFragment.d(VideoListFragment.this), paramAnonymousResponseModel));
          }
        }
      }
      for (;;)
      {
        if (((VideoListFragment.d(VideoListFragment.this) == null) || (VideoListFragment.d(VideoListFragment.this).length == 0)) && (VideoListFragment.g(VideoListFragment.this).size() > 1) && (((Integer)VideoListFragment.g(VideoListFragment.this).get(VideoListFragment.f(VideoListFragment.this))).intValue() == 2222))
        {
          VideoListFragment.g(VideoListFragment.this).remove(VideoListFragment.f(VideoListFragment.this));
          setSeasonSelection(0);
        }
        d();
        VideoListFragment.this.a();
        return;
        label359:
        VideoListFragment.a(VideoListFragment.this, paramAnonymousResponseModel);
      }
    }
  };
  private NielsenDialogHelper.VideoClickListener E = new NielsenDialogHelper.VideoClickListener()
  {
    public final void a(VideoData paramAnonymousVideoData, ShowItem paramAnonymousShowItem)
    {
      VideoListFragment.a(VideoListFragment.this, paramAnonymousVideoData);
    }
  };
  private int F = -2;
  Drawable h;
  private int m = 0;
  private ArrayList<Integer> n = null;
  private View o;
  private VideoAdapter p;
  private VideoData[] q = new VideoData[0];
  private com.google.android.gms.common.api.b r;
  private ShowItem s;
  private Show t = null;
  private boolean u = true;
  private boolean v = false;
  private boolean w;
  private PopupWindow x;
  private TextView y;
  private float z = 0.0F;
  
  private void a(VideoData paramVideoData)
  {
    if ((CBSPlayer.getActivePid() == null) || (!CBSPlayer.getActivePid().equals(paramVideoData.getPid())))
    {
      VideoUtil.PlayVideoListener local7 = new VideoUtil.PlayVideoListener()
      {
        public final void a(VideoData paramAnonymousVideoData, ShowItem paramAnonymousShowItem, int paramAnonymousInt, long paramAnonymousLong)
        {
          if (Util.H(VideoListFragment.o(VideoListFragment.this))) {}
          for (boolean bool = MainApplication.getVideoCastManager().j();; bool = false)
          {
            if (bool)
            {
              VideoListFragment.e();
              VideoUtil.a(VideoListFragment.p(VideoListFragment.this), paramAnonymousVideoData, paramAnonymousLong, false);
              return;
            }
            VideoListFragment.e();
            VideoListFragment.a(VideoListFragment.this, paramAnonymousVideoData, paramAnonymousInt, paramAnonymousLong);
            return;
          }
        }
      };
      VideoUtil.a(g, paramVideoData, s, local7);
    }
  }
  
  static VideoData[] a(VideoData[] paramArrayOfVideoData1, VideoData[] paramArrayOfVideoData2)
  {
    int i1 = paramArrayOfVideoData1.length;
    int i2 = paramArrayOfVideoData2.length;
    VideoData[] arrayOfVideoData = new VideoData[i1 + i2];
    System.arraycopy(paramArrayOfVideoData1, 0, arrayOfVideoData, 0, i1);
    System.arraycopy(paramArrayOfVideoData2, 0, arrayOfVideoData, i1, i2);
    return arrayOfVideoData;
  }
  
  private void d(int paramInt)
  {
    if ((p == null) || (B == null))
    {
      p = new VideoAdapter(g, t, q);
      B = ((ListView)o.findViewById(2131690426));
      h = B.getDivider();
      p.setOnGridClickListener(new a());
      p.setNumColumns(paramInt);
      if (B.getFooterViewsCount() == 0)
      {
        View localView = g.getLayoutInflater().inflate(2130903140, null, false);
        B.addFooterView(localView);
        B.setFooterDividersEnabled(false);
      }
      if (paramInt > 0)
      {
        if (paramInt > 1) {
          B.setDivider(null);
        }
        p.setNumColumns(paramInt);
      }
      B.setAdapter(p);
      B.setVisibility(0);
      return;
    }
    if (paramInt > 0)
    {
      if (paramInt != 1) {
        break label215;
      }
      B.setDivider(h);
    }
    for (;;)
    {
      p.setNumColumns(paramInt);
      p.setVideos(q);
      break;
      label215:
      B.setDivider(null);
    }
  }
  
  public static void setDisplayVideoListcount(int paramInt)
  {
    k = paramInt;
  }
  
  public final void a()
  {
    int i1;
    if ((g != null) && (o != null))
    {
      setDisplayVideoListcount(0);
      if ((q == null) || (q.length <= 0)) {
        break label198;
      }
      i1 = q.length;
      if (m != 0) {
        break label227;
      }
    }
    label198:
    label227:
    for (boolean bool = true;; bool = false)
    {
      d(0);
      p.setIsLatestAvailableSelected(bool);
      setDisplayVideoListcount(i1);
      if (A > 1) {
        B.setSelection(q.length / 2 - 30 - 2);
      }
      if (((Util.i(g)) || (Util.j(g))) && (Util.l(g))) {
        if ((B != null) && (p != null)) {
          p.setNumColumns(2);
        }
      }
      for (;;)
      {
        o.findViewById(2131690426).setVisibility(0);
        o.findViewById(2131689767).setVisibility(8);
        return;
        if ((B != null) && (p != null)) {
          p.setNumColumns(1);
        }
      }
      o.findViewById(2131690426).setVisibility(8);
      o.findViewById(2131689767).setVisibility(0);
      return;
    }
  }
  
  public final void a(int paramInt)
  {
    if (A <= 8)
    {
      A += 1;
      setSeasonSelection(paramInt);
      new StringBuilder("incrementBatchNumber ").append(A).append(" selectionArg ").append(paramInt);
    }
  }
  
  public final void a(ArrayList<Integer> paramArrayList, int paramInt)
  {
    n = paramArrayList;
    setSeasonSelection(paramInt);
  }
  
  public final void b()
  {
    if (g != null)
    {
      Object localObject = g.getSupportFragmentManager().findFragmentByTag("fragment_show_home");
      if (localObject != null)
      {
        localObject = (VideosFragment)((Fragment)localObject).getChildFragmentManager().findFragmentByTag("fragment_show_videos");
        if (localObject != null) {
          ((VideosFragment)localObject).b();
        }
      }
    }
  }
  
  public final void b(int paramInt)
  {
    Object localObject;
    FrameLayout.LayoutParams localLayoutParams;
    if (o != null)
    {
      localObject = (RelativeLayout)o.findViewById(2131690423);
      if (((Util.i(g)) || (Util.j(g))) && (paramInt == 1))
      {
        d(2);
        B.setOnScrollListener(new VideoListViewOnScrollListener(g, m));
        if (k > 0) {
          B.setVisibility(0);
        }
        localLayoutParams = new FrameLayout.LayoutParams(-1, -1, 51);
        localLayoutParams.setMargins(0, 0, 0, 0);
        if (localObject != null)
        {
          ((RelativeLayout)localObject).setBackgroundColor(-1);
          ((RelativeLayout)localObject).setGravity(51);
          ((RelativeLayout)localObject).setLayoutParams(localLayoutParams);
        }
        localObject = new RelativeLayout.LayoutParams(Util.a(g, 300.0D), -2);
        ((RelativeLayout.LayoutParams)localObject).setMargins(Util.a(g, 12.0D), Util.a(g, 12.0D), Util.a(g, 12.0D), 0);
        ((RelativeLayout.LayoutParams)localObject).addRule(14);
        if (y != null) {
          y.setLayoutParams((ViewGroup.LayoutParams)localObject);
        }
        u = false;
      }
    }
    else
    {
      return;
    }
    d(1);
    B.setOnScrollListener(new VideoListViewOnScrollListener(g, m));
    if (((localObject != null) && (Util.i(g))) || (Util.j(g)))
    {
      localLayoutParams = new FrameLayout.LayoutParams(-1, -1, 51);
      if (!u) {
        break label376;
      }
      localLayoutParams.setMargins(0, 0, 0, 0);
    }
    for (;;)
    {
      u = false;
      if (localObject != null)
      {
        ((RelativeLayout)localObject).setBackgroundResource(2130837996);
        ((RelativeLayout)localObject).setGravity(51);
        ((RelativeLayout)localObject).setLayoutParams(localLayoutParams);
      }
      localObject = new RelativeLayout.LayoutParams(-1, -2);
      ((RelativeLayout.LayoutParams)localObject).setMargins(Util.a(g, 12.0D), Util.a(g, 12.0D), Util.a(g, 12.0D), 0);
      if (y == null) {
        break;
      }
      y.setLayoutParams((ViewGroup.LayoutParams)localObject);
      return;
      label376:
      localLayoutParams.setMargins(0, Util.a(g, 6.0D), 0, 0);
    }
  }
  
  public final void c(int paramInt)
  {
    VideoData localVideoData;
    ShowItem localShowItem;
    if (paramInt != F)
    {
      F = paramInt;
      if ((p != null) && (paramInt < p.getItemCount()))
      {
        localVideoData = p.a(paramInt);
        if (localVideoData != null)
        {
          localShowItem = ShowServiceManager.a(localVideoData.getCbsShowId());
          if (!Preferences.c(g)) {
            break label572;
          }
          NielsenDialogHelper.setVideoWeWantedToSee(localVideoData);
          NielsenDialogHelper.setShowWeWantToSee(localShowItem);
          NielsenDialogHelper.a(g, E);
        }
      }
    }
    for (;;)
    {
      if (localShowItem != null)
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("appState", "cbscom:" + Action.j.getAppState());
        localHashMap.put("ShowTitle", title);
        localHashMap.put("showId", Long.valueOf(showId));
        localHashMap.put("EpisodeTitle", VideoUtil.b(localVideoData));
        if (localVideoData.getPid() != null) {
          localHashMap.put("VideoID", localVideoData.getPid());
        }
        if (localVideoData.getCid() != null) {
          localHashMap.put("ContentID", localVideoData.getCid());
        }
        String str = AuthStatusManager.getUserStatusDescription();
        if (((str == null) || (!str.equals("subscriber"))) && (VideoUtil.a(localVideoData)))
        {
          str = "Regular";
          if (category.equalsIgnoreCase("CLASSICS")) {
            str = "Classics";
          }
          str = str + ";" + title + ";Season " + localVideoData.getSeasonNum() + ";" + VideoUtil.b(localVideoData) + ";episode button";
          localHashMap.put("evar_18", str);
          localHashMap.put("prop_18", str);
        }
        str = "cbscom:" + localVideoData.getPid();
        localHashMap.put("evar_31", str);
        localHashMap.put("prop_31", str);
        str = "cbscom:" + showId + "|" + title;
        localHashMap.put("evar_63", str);
        localHashMap.put("prop_63", str);
        str = "cbscom:" + localVideoData.getCid() + "|" + VideoUtil.b(localVideoData);
        localHashMap.put("evar_64", str);
        localHashMap.put("prop_64", str);
        localHashMap.put("events", "event19");
        if (VideoUtil.a(localVideoData))
        {
          localHashMap.put("evar_6", "CBS svod");
          localHashMap.put("prop_6", "CBS svod");
        }
        AnalyticsManager.a(g, Action.aB, localHashMap);
      }
      new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
      {
        public final void run()
        {
          VideoListFragment.n(VideoListFragment.this);
        }
      }, 400L);
      return;
      label572:
      a(localVideoData);
    }
  }
  
  public final void d()
  {
    if (g != null)
    {
      Object localObject = g.getSupportFragmentManager().findFragmentByTag("fragment_show_home");
      if (localObject != null)
      {
        localObject = (VideosFragment)((Fragment)localObject).getChildFragmentManager().findFragmentByTag("fragment_show_videos");
        if (localObject != null) {
          ((VideosFragment)localObject).d();
        }
      }
    }
  }
  
  public int getPreviousBatchSize()
  {
    if (q != null) {
      return q.length;
    }
    return 0;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if ((!Util.e(g)) && (B != null)) {
      B.forceLayout();
    }
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    o = paramLayoutInflater.inflate(2130903307, paramViewGroup, false);
    paramViewGroup = getArguments();
    paramBundle = paramViewGroup.getParcelable("show");
    if ((paramBundle != null) && ((paramBundle instanceof Show))) {
      t = ((Show)paramBundle);
    }
    paramBundle = paramViewGroup.getParcelableArray("videos");
    if ((paramBundle != null) && (paramBundle.length > 0) && ((paramBundle instanceof VideoData[]))) {
      q = ((VideoData[])paramBundle);
    }
    if (q != null) {
      q = VideoUtil.a(q);
    }
    j = false;
    if ((t != null) && (t.getCategory().equalsIgnoreCase("Classics"))) {
      j = true;
    }
    n = paramViewGroup.getIntegerArrayList("orderedShowSeasonNumbers");
    m = paramViewGroup.getInt("selection");
    int i1 = Preferences.b(g, "previousSeasonSelection", 0);
    if (i1 != 0) {
      m = i1;
    }
    if (n != null)
    {
      new StringBuilder("seasonNumbers size: ").append(n.size());
      paramLayoutInflater = paramLayoutInflater.inflate(2130903099, null, false);
      y = ((TextView)o.findViewById(2131690425));
      setSeasonSelection(m);
      x = new PopupWindow(paramLayoutInflater);
      x.setOutsideTouchable(true);
      x.setBackgroundDrawable(getResources().getDrawable(2130837929));
      x.setOnDismissListener(new PopupWindow.OnDismissListener()
      {
        public final void onDismiss()
        {
          new Handler().postDelayed(new Runnable()
          {
            public final void run()
            {
              VideoListFragment.a(VideoListFragment.this, false);
            }
          }, 120L);
        }
      });
      y.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          int i;
          int j;
          if (!VideoListFragment.i(VideoListFragment.this))
          {
            VideoListFragment.a(VideoListFragment.this, true);
            VideoListFragment.j(VideoListFragment.this).showAsDropDown(paramAnonymousView);
            VideoListFragment.a(VideoListFragment.this, getResources().getDisplayMetrics().density);
            i = (int)(250.0F * VideoListFragment.k(VideoListFragment.this) + 0.5F);
            j = VideoListFragment.l(VideoListFragment.this).getHeight() * VideoListFragment.g(VideoListFragment.this).size() + VideoListFragment.l(VideoListFragment.this).getLineHeight() + VideoListFragment.l(VideoListFragment.this).getPaddingBottom();
            if (j <= i) {
              break label203;
            }
          }
          for (;;)
          {
            VideoListFragment.j(VideoListFragment.this).update(VideoListFragment.l(VideoListFragment.this), VideoListFragment.l(VideoListFragment.this).getWidth(), i);
            paramAnonymousView = null;
            if (paramLayoutInflater != null) {
              paramAnonymousView = (ListView)paramLayoutInflater.findViewById(2131689777);
            }
            VideoListFragment.SeasonDropdownAdapter localSeasonDropdownAdapter = new VideoListFragment.SeasonDropdownAdapter(VideoListFragment.this, VideoListFragment.m(VideoListFragment.this), VideoListFragment.g(VideoListFragment.this));
            if (paramAnonymousView != null) {
              paramAnonymousView.setAdapter(localSeasonDropdownAdapter);
            }
            return;
            label203:
            i = j;
          }
        }
      });
    }
    r = new b.a(g).a(com.google.android.gms.appindexing.b.b).b();
    return o;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (x != null) {
      x.dismiss();
    }
    p = null;
    B = null;
  }
  
  public void onResume()
  {
    super.onResume();
  }
  
  public void onStart()
  {
    super.onStart();
    try
    {
      r.c();
      Object localObject = GoogleAppIndexDeepLinkUtil.a(t, null, null);
      String str = GoogleAppIndexDeepLinkUtil.b(t, null, null);
      if ((localObject != null) && (str != null))
      {
        l = Uri.parse((String)localObject);
        new StringBuilder("APP_URI : ").append(l);
        localObject = Uri.parse(str);
        new StringBuilder("WEB_URL : ").append(localObject);
        str = t.getTitle() + " - CBS.com";
        com.google.android.gms.appindexing.b.c.a(r, l, str, (Uri)localObject);
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
      com.google.android.gms.appindexing.b.c.a(r, l);
      r.d();
      return;
    }
    catch (Exception localException) {}
  }
  
  public void setSeasonSelection(int paramInt)
  {
    m = paramInt;
    int i1;
    Object localObject;
    if ((n != null) && (m < n.size()))
    {
      i1 = ((Integer)n.get(m)).intValue();
      if (i1 == 1111) {
        y.setText("Clips");
      }
    }
    else if (g != null)
    {
      localObject = g.getSupportFragmentManager().findFragmentByTag("fragment_show_home");
      if (localObject != null)
      {
        localObject = (VideosFragment)((Fragment)localObject).getChildFragmentManager().findFragmentByTag("fragment_show_videos");
        if (localObject != null) {
          ((VideosFragment)localObject).setSelection(m);
        }
      }
      if ((n != null) && (m < n.size()))
      {
        i1 = n.size();
        if (!j) {
          break label602;
        }
        i1 = n.size();
      }
    }
    for (;;)
    {
      int i2 = ((Integer)n.get(m)).intValue();
      b();
      localObject = new ShowServiceImpl();
      if (t != null)
      {
        if (i2 != 1111) {
          break label525;
        }
        ((ShowService)localObject).c(g, Long.valueOf(t.getShowId()).toString(), A, C);
      }
      for (;;)
      {
        if (v)
        {
          localObject = Action.t;
          if (i2 == 1111) {
            localObject = Action.u;
          }
          HashMap localHashMap = new HashMap();
          localHashMap.put("appState", "cbscom:" + Action.j.getAppState());
          if (s != null)
          {
            localHashMap.put("ShowTitle", s.title);
            localHashMap.put("showId", Long.valueOf(s.showId));
            String str = "cbscom:" + s.showId + "|" + s.title;
            localHashMap.put("evar_63", str);
            localHashMap.put("prop_63", str);
          }
          localHashMap.put("appState", "cbscom:" + ((Action)localObject).getAppState());
          localHashMap.put("pageView", "anything");
          AnalyticsManager.a(g, (Action)localObject, localHashMap);
        }
        v = true;
        b(getResourcesgetConfigurationorientation);
        return;
        if (i1 == 2222)
        {
          y.setText("Full Episodes");
          break;
        }
        y.setText("Season " + i1);
        break;
        label525:
        if (i2 == 2222) {
          ((ShowService)localObject).b(g, String.valueOf(t.getShowId()), A, D);
        } else if (paramInt < i1) {
          ((ShowService)localObject).a(g, String.valueOf(t.getShowId()), i2, A, D);
        }
      }
      label602:
      i1 -= 1;
    }
  }
  
  public void setShowItem(ShowItem paramShowItem)
  {
    s = paramShowItem;
  }
  
  public class SeasonDropdownAdapter
    extends BaseAdapter
  {
    private ArrayList<Integer> b;
    private Context c;
    
    public SeasonDropdownAdapter(ArrayList<Integer> paramArrayList)
    {
      c = paramArrayList;
      ArrayList localArrayList;
      b = localArrayList;
    }
    
    public int getCount()
    {
      return b.size();
    }
    
    public Object getItem(int paramInt)
    {
      return Integer.valueOf(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      int i;
      if (paramView == null)
      {
        paramView = ((LayoutInflater)c.getSystemService("layout_inflater")).inflate(2130903248, null);
        paramViewGroup = new a();
        a = ((TextView)paramView.findViewById(2131690210));
        paramView.setTag(paramViewGroup);
        if ((getItem(paramInt) != null) && (paramViewGroup != null))
        {
          i = (int)(getResources().getDisplayMetrics().density * 50.0F + 0.5F);
          a.setHeight(i);
          a.setWidth(VideoListFragment.q(VideoListFragment.this).getWidth() - 10);
          a.setPadding(10, 8, 0, 0);
          a.setTextColor(-16777216);
          a.setBackgroundResource(2131558596);
          if ((VideoListFragment.g(VideoListFragment.this) != null) && (VideoListFragment.g(VideoListFragment.this).size() > paramInt))
          {
            i = ((Integer)VideoListFragment.g(VideoListFragment.this).get(paramInt)).intValue();
            if (i != 1111) {
              break label233;
            }
            a.setText("Clips");
          }
        }
      }
      for (;;)
      {
        a.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            VideoListFragment.r(VideoListFragment.this);
            VideoListFragment.a(VideoListFragment.this, null);
            VideoListViewOnScrollListener.a();
            setSeasonSelection(paramInt);
            Preferences.a(VideoListFragment.s(VideoListFragment.this), "previousSeasonSelection", paramInt);
            if (VideoListFragment.j(VideoListFragment.this) != null) {
              VideoListFragment.j(VideoListFragment.this).dismiss();
            }
          }
        });
        return paramView;
        paramViewGroup = (a)paramView.getTag();
        break;
        label233:
        if (i == 2222) {
          a.setText("Full Episodes");
        } else {
          a.setText("Season " + i);
        }
      }
    }
    
    final class a
    {
      TextView a;
      
      a() {}
    }
  }
  
  final class a
    implements GridViewWithHeaderBaseAdapter.GridItemClickListener
  {
    a() {}
    
    public final void a(int paramInt)
    {
      c(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */