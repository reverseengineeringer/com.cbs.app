package com.cbs.app.widget;

import android.app.Dialog;
import android.app.ProgressDialog;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.VideoUtil;
import java.util.ArrayList;

final class ScheduleGridLayout$3
  implements ResponseModelListener
{
  ScheduleGridLayout$3(ScheduleGridLayout paramScheduleGridLayout, Dialog paramDialog) {}
  
  public final void a()
  {
    b.c = true;
    ScheduleGridLayout.a();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    b.c = false;
    ScheduleGridLayout.a();
    if ((paramResponseModel != null) && ((paramResponseModel instanceof VideoEndpointResponse)))
    {
      paramResponseModel = (VideoEndpointResponse)paramResponseModel;
      ScheduleGridLayout.a();
      paramResponseModel = paramResponseModel.getItemList();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        ScheduleGridLayout.a();
        b.d = true;
        b.setClipVideos(paramResponseModel);
      }
    }
    else
    {
      b.c = true;
      if (((!b.c) || (!b.d) || (b.a) || (b.e)) && ((!b.c) || (!b.d) || (!b.a) || (b.e))) {
        break label448;
      }
      ScheduleGridLayout.a();
      if ((ScheduleGridLayout.e(b) == null) || (ScheduleGridLayout.e(b).size() <= 0)) {
        break label438;
      }
      b.k = VideoUtil.b((VideoData)ScheduleGridLayout.e(b).get(0));
      b.j = ((VideoData)ScheduleGridLayout.e(b).get(0)).getSeriesTitle();
      b.l = ((VideoData)ScheduleGridLayout.e(b).get(0)).getSeasonNum();
      b.m = ((VideoData)ScheduleGridLayout.e(b).get(0)).getEpisodeNum();
      b.n = ((VideoData)ScheduleGridLayout.e(b).get(0)).get_airDate();
      b.i = VideoUtil.d((VideoData)ScheduleGridLayout.e(b).get(0));
      b.p = ((VideoData)ScheduleGridLayout.e(b).get(0)).getFullEpisode();
      ScheduleGridLayout.a();
      b.f = "Watch clip";
      b.a((VideoData)ScheduleGridLayout.e(b).get(0), a);
    }
    for (;;)
    {
      if (!a.isShowing()) {
        a.show();
      }
      if (b.r != null) {
        b.r.dismiss();
      }
      return;
      b.d = false;
      break;
      label438:
      ScheduleGridLayout.a(a);
      continue;
      label448:
      if ((!b.d) && (!b.e) && (b.c) && (b.a))
      {
        ScheduleGridLayout.a();
        ScheduleGridLayout.a(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ScheduleGridLayout.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */