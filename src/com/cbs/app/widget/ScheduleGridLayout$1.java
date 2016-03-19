package com.cbs.app.widget;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.ButtonServiceHelper;
import com.cbs.app.view.model.Asset;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.rest.ShowAssetsResponse;
import com.cbs.app.view.model.rest.ShowEndpointResponse;
import com.cbs.app.view.model.rest.ShowEpisodeResponse;
import com.cbs.app.view.model.rest.ShowResponse;
import com.cbs.app.view.model.rest.ShowSeasonResponse;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

final class ScheduleGridLayout$1
  implements ResponseModelListener
{
  ScheduleGridLayout$1(ScheduleGridLayout paramScheduleGridLayout, Dialog paramDialog) {}
  
  public final void a()
  {
    ScheduleGridLayout.a();
  }
  
  public final void a(final ResponseModel paramResponseModel)
  {
    ScheduleGridLayout.a();
    Object localObject1;
    Object localObject2;
    if ((paramResponseModel != null) && ((paramResponseModel instanceof ShowEndpointResponse)))
    {
      ScheduleGridLayout.a();
      paramResponseModel = (ShowEndpointResponse)paramResponseModel;
      localObject1 = paramResponseModel.getShowEpisodeResponse();
      if (localObject1 != null)
      {
        localObject1 = ((ShowEpisodeResponse)localObject1).getEpisodes();
        ScheduleGridLayout.a();
        new StringBuilder("ShowEpisodeResponse List size: ").append(((List)localObject1).size());
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Episode)((Iterator)localObject1).next();
          ScheduleGridLayout.a();
          new StringBuilder("EpisodeTitle in ShowEpisodeResponse: ").append(((Episode)localObject2).getEpisodeTitle());
        }
      }
      localObject1 = paramResponseModel.getShowAssetsResponse();
      if (localObject1 != null)
      {
        localObject1 = ((ShowAssetsResponse)localObject1).getAssets();
        ScheduleGridLayout.a();
        new StringBuilder("ShowAssetResponse List size: ").append(((List)localObject1).size());
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Asset)((Iterator)localObject1).next();
          ScheduleGridLayout.a();
          new StringBuilder("filePath in ShowAssetResponse: ").append(((Asset)localObject2).getFilepath());
        }
      }
      localObject1 = paramResponseModel.getShowSeasonResponse();
      paramResponseModel = paramResponseModel.getShowShowResponse();
      if (paramResponseModel == null) {
        break label919;
      }
      ScheduleGridLayout.a();
      b.b = true;
      ScheduleGridLayout.a(b, paramResponseModel.getShows());
      paramResponseModel = a;
      if ((ScheduleGridLayout.d(b) == null) || (ScheduleGridLayout.d(b).size() <= 0)) {
        break label864;
      }
      paramResponseModel.findViewById(2131690285).setVisibility(0);
      paramResponseModel.findViewById(2131690282).setVisibility(0);
      ScheduleGridLayout.a();
      new StringBuilder("showList not null: ").append(ScheduleGridLayout.d(b).size());
      ScheduleGridLayout.a(b, (Show)ScheduleGridLayout.d(b).get(0));
      ScheduleGridLayout.a();
      new StringBuilder("show id:").append(ScheduleGridLayout.b(b).getId()).append(ScheduleGridLayout.b(b).getAbout());
      localObject2 = ScheduleGridLayout.b(b).getTitle();
      ScheduleGridLayout.b(b).getLink();
      ScheduleGridLayout.a();
      String str = Util.a(ScheduleGridLayout.b(b), ScheduleGridLayout.a(b));
      ButtonServiceHelper.a(paramResponseModel.findViewById(2131690287), ScheduleGridLayout.c(b), ScheduleGridLayout.b(b).getTitle(), ScheduleGridLayout.b(b).getId(), "Schedule Home", ScheduleGridLayout.b(b));
      ButtonServiceHelper.b(paramResponseModel.findViewById(2131690289), ScheduleGridLayout.c(b), str, ScheduleGridLayout.b(b).getTitle(), ScheduleGridLayout.b(b).getId(), "Schedule Home");
      ButtonServiceHelper.a(paramResponseModel.findViewById(2131690291), ScheduleGridLayout.c(b), (String)localObject2, str, ScheduleGridLayout.b(b).getTitle(), ScheduleGridLayout.b(b).getId(), "Schedule Home");
      if (!ScheduleGridLayout.b(b).getCategory().equals("Movies & Specials")) {
        break label763;
      }
      paramResponseModel.findViewById(2131690284).setVisibility(8);
      ScheduleGridLayout.a();
      new StringBuilder("add button for time: ").append(ScheduleGridLayout.a(b).getAirDate_sec()).append(" ").append(ScheduleGridLayout.a(b).getAirDateString());
      b.g = ((Button)paramResponseModel.findViewById(2131690283));
      if ((Util.e(ScheduleGridLayout.c(b))) && (b.h < 500)) {
        b.g.setHeight(40);
      }
      if (b.g != null) {
        b.g.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            ScheduleGridLayout.a();
            if ((ScheduleGridLayout.b(b) != null) && (ScheduleGridLayout.c(b) != null)) {
              ScheduleGridLayout.1.a(ScheduleGridLayout.1.this, ScheduleGridLayout.b(b), paramResponseModel);
            }
            if ((ScheduleGridLayout.c(b) != null) && (ScheduleGridLayout.a(b) != null) && (ScheduleGridLayout.a(b).getShowTitle() != null) && (ScheduleGridLayout.a(b).getShow_id() != null))
            {
              paramAnonymousView = Action.be;
              HashMap localHashMap = new HashMap();
              localHashMap.put("ShowTitle", ScheduleGridLayout.a(b).getShowTitle());
              localHashMap.put("showId", ScheduleGridLayout.a(b).getShow_id());
              localHashMap.put("optionSelected", "Show home");
              String str = "cbscom:" + ScheduleGridLayout.a(b).getShow_id() + "|" + ScheduleGridLayout.a(b).getShowTitle();
              localHashMap.put("evar_63", str);
              localHashMap.put("prop_63", str);
              localHashMap.put("events", "event19");
              AnalyticsManager.a(ScheduleGridLayout.c(b), paramAnonymousView, localHashMap);
            }
          }
        });
      }
    }
    for (;;)
    {
      if ((localObject1 != null) && (((ShowSeasonResponse)localObject1).getNumFound() == 0))
      {
        a.findViewById(2131690283).setVisibility(8);
        a.findViewById(2131690284).setVisibility(8);
      }
      return;
      label763:
      localObject2 = paramResponseModel.findViewById(2131690284);
      if ((Util.e(ScheduleGridLayout.c(b))) && (b.h < 500)) {
        ((View)localObject2).setMinimumHeight(40);
      }
      localObject2 = (Button)paramResponseModel.findViewById(2131690284);
      if (!AuthStatusManager.b())
      {
        if (localObject2 == null) {
          break;
        }
        ((Button)localObject2).setVisibility(8);
        break;
      }
      ButtonServiceHelper.a(paramResponseModel.findViewById(2131690284), ScheduleGridLayout.c(b), ScheduleGridLayout.b(b), "Schedule");
      break;
      label864:
      if ((ScheduleGridLayout.a(b).getShowTitle() != null) && (ScheduleGridLayout.a(b).getShow_id() != null))
      {
        ScheduleGridLayout.a();
        paramResponseModel.findViewById(2131690285).setVisibility(8);
        paramResponseModel.findViewById(2131690282).setVisibility(8);
        continue;
        label919:
        if ((ScheduleGridLayout.a(b).getTitle() != null) && (ScheduleGridLayout.a(b).getStartTime() != null) && (ScheduleGridLayout.a(b).getEndTime() != null) && (ScheduleGridLayout.a(b).getShowTitle() != null))
        {
          ScheduleGridLayout.a();
          a.findViewById(2131690285).setVisibility(0);
          paramResponseModel = Util.a(ScheduleGridLayout.b(b), ScheduleGridLayout.a(b));
          ButtonServiceHelper.a(a.findViewById(2131690287), ScheduleGridLayout.c(b), ScheduleGridLayout.a(b).getShowTitle(), Long.parseLong(ScheduleGridLayout.a(b).getShow_id()), "Schedule Home", ScheduleGridLayout.b(b));
          ButtonServiceHelper.b(a.findViewById(2131690289), ScheduleGridLayout.c(b), paramResponseModel, ScheduleGridLayout.a(b).getShowTitle(), Long.parseLong(ScheduleGridLayout.a(b).getShow_id()), "Schedule Home");
          ButtonServiceHelper.a(a.findViewById(2131690291), ScheduleGridLayout.c(b), ScheduleGridLayout.a(b).getShowTitle(), paramResponseModel, ScheduleGridLayout.a(b).getShowTitle(), Long.parseLong(ScheduleGridLayout.a(b).getShow_id()), "Schedule Home");
          a.findViewById(2131690283).setVisibility(8);
          a.findViewById(2131690284).setVisibility(8);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ScheduleGridLayout.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */