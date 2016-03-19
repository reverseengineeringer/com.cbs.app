package com.cbs.app.view.fragments.mycbs;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnShowListener;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.cbs.app.adapter.HomeVideoPhoneAdapter;
import com.cbs.app.adapter.HomeVideoTabletAdapter;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.db.MyRecentVideoDataSource;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.db.MyRecentVideo;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.widget.GridViewWithHeaderBaseAdapter.GridItemClickListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class MyRecentlyWatchedFragment
  extends AbstractAsyncFragment
{
  protected static final String h = MyRecentlyWatchedFragment.class.getSimpleName();
  protected VideoData[] i = null;
  GridViewWithHeaderBaseAdapter.GridItemClickListener j = new GridViewWithHeaderBaseAdapter.GridItemClickListener()
  {
    public final void a(int paramAnonymousInt)
    {
      String str = MyRecentlyWatchedFragment.h;
      MyRecentlyWatchedFragment.this.a(paramAnonymousInt);
    }
  };
  AdapterView.OnItemClickListener k = new AdapterView.OnItemClickListener()
  {
    public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousAdapterView = MyRecentlyWatchedFragment.h;
      a(paramAnonymousInt);
    }
  };
  private MyRecentVideoDataSource l;
  private View m = null;
  
  private void f()
  {
    if ((g != null) && (!Util.i(g))) {
      Util.j(g);
    }
  }
  
  public final void a()
  {
    i = new VideoData[0];
    l.a();
    int n = l.c();
    l.b();
    if (n > 0)
    {
      e();
      final Object localObject = new AlertDialog.Builder(new ContextThemeWrapper(g, 2131427561));
      ((AlertDialog.Builder)localObject).setMessage("Your 'Recently Watched' history has been cleared.").setTitle("History Cleared").setNegativeButton("Ok", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      });
      localObject = ((AlertDialog.Builder)localObject).create();
      ((AlertDialog)localObject).setCancelable(true);
      ((AlertDialog)localObject).setOnShowListener(new DialogInterface.OnShowListener()
      {
        public final void onShow(DialogInterface paramAnonymousDialogInterface)
        {
          if (paramAnonymousDialogInterface != null) {
            localObject.getButton(-2).setTextSize(2, 18.0F);
          }
        }
      });
      ((AlertDialog)localObject).show();
    }
  }
  
  public final void a(int paramInt)
  {
    if ((i != null) && (i.length > paramInt))
    {
      VideoData localVideoData = i[paramInt];
      if (localVideoData != null)
      {
        ShowItem localShowItem = ShowServiceManager.a(localVideoData.getCbsShowId());
        if (localShowItem != null)
        {
          VideoUtil.a(g, localVideoData, localShowItem);
          HashMap localHashMap = new HashMap();
          localHashMap.put("appState", "cbscom:" + Action.x.getAppState());
          localHashMap.put("ShowTitle", title);
          localHashMap.put("showId", Long.valueOf(showId));
          localHashMap.put("EpisodeTitle", VideoUtil.b(localVideoData));
          if (localVideoData.getPid() != null) {
            localHashMap.put("VideoID", localVideoData.getPid());
          }
          if (localVideoData.getCid() != null) {
            localHashMap.put("ContentID", localVideoData.getCid());
          }
          String str = "cbscom:" + localVideoData.getPid();
          localHashMap.put("evar_31", str);
          localHashMap.put("prop_31", str);
          new StringBuilder("isSubscriber: ").append(VideoUtil.a()).append(" isPaid: ").append(VideoUtil.a(localVideoData));
          if ((!VideoUtil.a()) && (VideoUtil.a(localVideoData)))
          {
            str = "Regular";
            if (category.equalsIgnoreCase("CLASSICS")) {
              str = "Classics";
            }
            str = str + ";" + title + ";Season " + localVideoData.getSeasonNum() + ";" + VideoUtil.b(localVideoData) + ";episode button";
            localHashMap.put("evar_18", str);
            localHashMap.put("prop_18", str);
          }
          str = "cbscom:" + showId + "|" + title;
          localHashMap.put("evar_63", str);
          localHashMap.put("prop_63", str);
          str = "cbscom:" + localVideoData.getCid() + "|" + VideoUtil.b(localVideoData);
          localHashMap.put("evar_64", str);
          localHashMap.put("prop_64", str);
          if (VideoUtil.a(localVideoData))
          {
            localHashMap.put("evar_6", "CBS svod");
            localHashMap.put("prop_6", "CBS svod");
          }
          localHashMap.put("events", "event19");
          AnalyticsManager.a(g, Action.aB, localHashMap);
        }
      }
    }
  }
  
  protected final void e()
  {
    Object localObject1;
    if ((m != null) && (i != null) && (g != null))
    {
      if ((!Util.i(g)) && (!Util.j(g))) {
        break label167;
      }
      localObject1 = new HomeVideoTabletAdapter(g, i);
      if (!Util.k(g)) {
        break label159;
      }
      ((HomeVideoTabletAdapter)localObject1).setNumColumns(4);
      localObject2 = (ListView)m.findViewById(2131689912);
      View localView = g.getLayoutInflater().inflate(2130903140, null, false);
      new StringBuilder("list view footer count:").append(((ListView)localObject2).getFooterViewsCount());
      if (((ListView)localObject2).getFooterViewsCount() == 0)
      {
        ((ListView)localObject2).addFooterView(localView);
        ((ListView)localObject2).setFooterDividersEnabled(false);
      }
      ((ListView)localObject2).setAdapter((ListAdapter)localObject1);
      ((ListView)localObject2).setOnItemClickListener(k);
      ((HomeVideoTabletAdapter)localObject1).setOnGridClickListener(j);
    }
    label159:
    label167:
    do
    {
      do
      {
        return;
        ((HomeVideoTabletAdapter)localObject1).setNumColumns(3);
        break;
      } while ((!Util.g(g)) && (!Util.f(g)));
      localObject1 = (ListView)m.findViewById(2131689911);
    } while (localObject1 == null);
    ((ListView)localObject1).setOnItemClickListener(k);
    new StringBuilder("videos.length:").append(i.length);
    Object localObject2 = g.getLayoutInflater().inflate(2130903140, null, false);
    new StringBuilder("list view footer count:").append(((ListView)localObject1).getFooterViewsCount());
    if (((ListView)localObject1).getFooterViewsCount() == 0)
    {
      ((ListView)localObject1).addFooterView((View)localObject2);
      ((ListView)localObject1).setFooterDividersEnabled(false);
    }
    ((ListView)localObject1).setAdapter(new HomeVideoPhoneAdapter(g, i));
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    d();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    e();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    l = new MyRecentVideoDataSource(g);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = true;
    m = paramLayoutInflater.inflate(2130903176, paramViewGroup, false);
    paramLayoutInflater = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a();
      }
    };
    paramViewGroup = (Button)g.findViewById(2131689488);
    if (paramViewGroup != null) {
      paramViewGroup.setOnClickListener(paramLayoutInflater);
    }
    paramViewGroup = (Button)g.findViewById(2131690206);
    if (paramViewGroup != null) {
      paramViewGroup.setOnClickListener(paramLayoutInflater);
    }
    f();
    return m;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    m = null;
    d();
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public void onResume()
  {
    d = null;
    super.onResume();
    if (g != null)
    {
      l.a();
      Object localObject = l.getAllMyRecentVideos();
      l.b();
      if (((List)localObject).size() != 0)
      {
        ArrayList localArrayList1 = new ArrayList(12);
        ArrayList localArrayList2 = new ArrayList(12);
        localObject = ((List)localObject).iterator();
        int n = 0;
        while (((Iterator)localObject).hasNext())
        {
          MyRecentVideo localMyRecentVideo = (MyRecentVideo)((Iterator)localObject).next();
          if (n >= 12) {
            break;
          }
          if (!localArrayList1.contains(localMyRecentVideo))
          {
            new StringBuilder("added: ").append(localMyRecentVideo.getCid()).append(", date viewed: ").append(localMyRecentVideo.getDateViewed()).append(", position (med time): ").append(localMyRecentVideo.getMedTime());
            localArrayList1.add(localMyRecentVideo);
            localArrayList2.add(localMyRecentVideo.getCid());
            n += 1;
          }
          else
          {
            new StringBuilder("already had: ").append(localMyRecentVideo.getCid());
          }
        }
        new StringBuilder("recent video length:").append(localArrayList1.size());
        new ShowServiceImpl().a(g, localArrayList2, new a(localArrayList1));
      }
      f();
    }
  }
  
  final class a
    implements ResponseModelListener
  {
    private List<MyRecentVideo> b;
    
    public a()
    {
      List localList;
      b = localList;
    }
    
    public final void a()
    {
      String str = MyRecentlyWatchedFragment.h;
    }
    
    public final void a(ResponseModel paramResponseModel)
    {
      Object localObject1 = MyRecentlyWatchedFragment.h;
      if ((paramResponseModel instanceof VideoEndpointResponse))
      {
        localObject1 = MyRecentlyWatchedFragment.h;
        paramResponseModel = ((VideoEndpointResponse)paramResponseModel).getItemList();
        localObject1 = new ArrayList();
        if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
        {
          Object localObject2 = MyRecentlyWatchedFragment.h;
          new StringBuilder("videoList.size:").append(paramResponseModel.size());
          localObject2 = b.iterator();
          for (;;)
          {
            if (!((Iterator)localObject2).hasNext()) {
              break label199;
            }
            MyRecentVideo localMyRecentVideo = (MyRecentVideo)((Iterator)localObject2).next();
            Object localObject3 = paramResponseModel.iterator();
            if (((Iterator)localObject3).hasNext())
            {
              VideoData localVideoData = (VideoData)((Iterator)localObject3).next();
              if (!localVideoData.getCid().equals(localMyRecentVideo.getCid())) {
                break;
              }
              localObject3 = MyRecentlyWatchedFragment.h;
              new StringBuilder("adding: ").append(localVideoData.getCid());
              localObject3 = MyRecentlyWatchedFragment.h;
              new StringBuilder("date viewed: ").append(localMyRecentVideo.getDateViewed());
              ((ArrayList)localObject1).add(localVideoData);
            }
          }
          label199:
          i = ((VideoData[])((ArrayList)localObject1).toArray(new VideoData[((ArrayList)localObject1).size()]));
          i = VideoUtil.a(i);
        }
      }
      e();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyRecentlyWatchedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */