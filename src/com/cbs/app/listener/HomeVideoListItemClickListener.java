package com.cbs.app.listener;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;

public class HomeVideoListItemClickListener
  implements AdapterView.OnItemClickListener
{
  private static final String a = HomeVideoListItemClickListener.class.getSimpleName();
  private VideoData[] b;
  private Context c;
  private String d;
  private String e;
  
  public HomeVideoListItemClickListener(VideoData[] paramArrayOfVideoData, Context paramContext, String paramString1, String paramString2)
  {
    b = paramArrayOfVideoData;
    c = paramContext;
    d = paramString1;
    e = paramString2;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt;
    if (e.equals("LiveTV")) {
      i = paramInt + 1;
    }
    if ((b != null) && (b.length > 0) && (i - 1 < b.length))
    {
      paramAdapterView = b[(i - 1)];
      if ((paramAdapterView != null) && (Util.e(c)))
      {
        paramView = ShowServiceManager.a(paramAdapterView.getCbsShowId());
        VideoUtil.a(c, paramAdapterView, paramView);
        paramView = new HashMap();
        paramView.put("appState", "cbscom:Homescreen");
        paramView.put("ShowTitle", paramAdapterView.getSeriesTitle());
        paramView.put("showId", Long.valueOf(paramAdapterView.getCbsShowId()));
        paramView.put("EpisodeTitle", VideoUtil.b(paramAdapterView));
        if (paramAdapterView.getPid() != null)
        {
          paramView.put("VideoID", paramAdapterView.getPid());
          str = "cbscom:" + paramAdapterView.getPid();
          paramView.put("evar_31", str);
          paramView.put("prop_31", str);
        }
        if (paramAdapterView.getCid() != null)
        {
          paramView.put("ContentID", paramAdapterView.getCid());
          str = "cbscom:" + paramAdapterView.getCid() + "|" + VideoUtil.b(paramAdapterView);
          paramView.put("evar_64", str);
          paramView.put("prop_64", str);
          paramView.put("events", "event19");
        }
        new StringBuilder("isPaid: ").append(VideoUtil.a(paramAdapterView));
        new StringBuilder("userStatus: ").append(d);
        if ((!VideoUtil.a()) && (VideoUtil.a(paramAdapterView)))
        {
          str = "Regular" + ";" + paramAdapterView.getSeriesTitle() + ";Season " + paramAdapterView.getSeasonNum() + ";" + VideoUtil.b(paramAdapterView) + ";episode button";
          paramView.put("evar_18", str);
          paramView.put("prop_18", str);
        }
        String str = "cbscom:" + paramAdapterView.getCbsShowId() + "|" + paramAdapterView.getSeriesTitle();
        paramView.put("evar_63", str);
        paramView.put("prop_63", str);
        if (VideoUtil.a(paramAdapterView))
        {
          paramView.put("evar_6", "CBS svod");
          paramView.put("prop_6", "CBS svod");
        }
        AnalyticsManager.a(c, Action.aA, paramView);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.listener.HomeVideoListItemClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */