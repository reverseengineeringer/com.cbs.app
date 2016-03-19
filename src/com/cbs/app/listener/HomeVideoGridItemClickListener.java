package com.cbs.app.listener;

import android.content.Context;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.widget.GridViewWithHeaderBaseAdapter.GridItemClickListener;
import java.util.HashMap;

public class HomeVideoGridItemClickListener
  implements GridViewWithHeaderBaseAdapter.GridItemClickListener
{
  private static final String a = HomeVideoGridItemClickListener.class.getSimpleName();
  private VideoData[] b;
  private Context c;
  private String d;
  
  public HomeVideoGridItemClickListener(VideoData[] paramArrayOfVideoData, Context paramContext, String paramString)
  {
    b = paramArrayOfVideoData;
    c = paramContext;
    d = paramString;
  }
  
  private void a(VideoData paramVideoData)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appState", "cbscom:Homescreen");
    localHashMap.put("ShowTitle", paramVideoData.getSeriesTitle());
    localHashMap.put("showId", Long.valueOf(paramVideoData.getCbsShowId()));
    localHashMap.put("EpisodeTitle", VideoUtil.b(paramVideoData));
    if (paramVideoData.getPid() != null)
    {
      localHashMap.put("VideoID", paramVideoData.getPid());
      str = "cbscom:" + paramVideoData.getPid();
      localHashMap.put("evar_31", str);
      localHashMap.put("prop_31", str);
    }
    if (paramVideoData.getCid() != null)
    {
      localHashMap.put("ContentID", paramVideoData.getCid());
      str = "cbscom:" + paramVideoData.getCid() + "|" + VideoUtil.b(paramVideoData);
      localHashMap.put("evar_64", str);
      localHashMap.put("prop_64", str);
      localHashMap.put("events", "event19");
    }
    new StringBuilder("isPaid: ").append(VideoUtil.a(paramVideoData));
    new StringBuilder("userStatus: ").append(d);
    if ((!VideoUtil.a()) && (VideoUtil.a(paramVideoData)))
    {
      str = "Regular" + ";" + paramVideoData.getSeriesTitle() + ";Season " + paramVideoData.getSeasonNum() + ";" + VideoUtil.b(paramVideoData) + ";episode button";
      localHashMap.put("evar_18", str);
      localHashMap.put("prop_18", str);
    }
    String str = "cbscom:" + paramVideoData.getCbsShowId() + "|" + paramVideoData.getSeriesTitle();
    localHashMap.put("evar_63", str);
    localHashMap.put("prop_63", str);
    if (VideoUtil.a(paramVideoData))
    {
      localHashMap.put("evar_6", "CBS svod");
      localHashMap.put("prop_6", "CBS svod");
    }
    AnalyticsManager.a(c, Action.aA, localHashMap);
  }
  
  public final void a(final int paramInt)
  {
    final VideoData localVideoData;
    if ((b != null) && (b.length > 0))
    {
      localVideoData = b[paramInt];
      if ((localVideoData != null) && (c != null) && ((c instanceof NavigationActivity)))
      {
        localObject = ShowServiceManager.a(localVideoData.getCbsShowId());
        if (localObject == null) {
          break label70;
        }
        VideoUtil.a(c, localVideoData, (ShowItem)localObject);
        a(localVideoData);
      }
    }
    return;
    label70:
    Object localObject = new ShowServiceManager(c);
    ((ShowServiceManager)localObject).setShowServiceListener(new ShowServiceManager.ShowServiceManagerListener()
    {
      public final void a()
      {
        ShowItem localShowItem = ShowServiceManager.a(localVideoData.getCbsShowId());
        VideoUtil.a(HomeVideoGridItemClickListener.a(HomeVideoGridItemClickListener.this), localVideoData, localShowItem);
        HomeVideoGridItemClickListener.a(HomeVideoGridItemClickListener.this, localVideoData);
      }
      
      public final void a(int paramAnonymousInt) {}
    });
    ((ShowServiceManager)localObject).getEverything();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.listener.HomeVideoGridItemClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */