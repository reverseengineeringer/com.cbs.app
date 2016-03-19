package com.cbs.app.widget;

import android.app.Dialog;
import android.app.ProgressDialog;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.ArrayList;

final class ScheduleGridLayout$2
  implements ResponseModelListener
{
  ScheduleGridLayout$2(ScheduleGridLayout paramScheduleGridLayout, Dialog paramDialog) {}
  
  public final void a()
  {
    b.a = true;
    ScheduleGridLayout.a();
    ScheduleGridLayout.a();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    b.q = null;
    ScheduleGridLayout.a();
    if ((paramResponseModel != null) && ((paramResponseModel instanceof VideoEndpointResponse)))
    {
      paramResponseModel = (VideoEndpointResponse)paramResponseModel;
      ScheduleGridLayout.a();
      b.q = paramResponseModel.getItemList();
      ScheduleGridLayout.a();
      new StringBuilder("Elements in video list : ").append(b.q.size());
      if ((b.q == null) || (b.q.size() <= 0)) {
        break label414;
      }
      b.e = true;
      b.o = ((VideoData)b.q.get(0));
      b.p = ((VideoData)b.q.get(0)).getFullEpisode();
    }
    for (;;)
    {
      b.a = true;
      if ((b.a) && (b.e))
      {
        ScheduleGridLayout.a();
        if ((b.q != null) && (b.q.size() > 0))
        {
          b.m = ((VideoData)b.q.get(0)).getEpisodeNum();
          b.k = VideoUtil.b((VideoData)b.q.get(0));
          b.j = ((VideoData)b.q.get(0)).getSeriesTitle();
          b.n = Util.c((VideoData)b.q.get(0));
          b.l = ((VideoData)b.q.get(0)).getSeasonNum();
          b.i = VideoUtil.d((VideoData)b.q.get(0));
          ScheduleGridLayout.a();
          b.f = "Watch Episode";
          b.a(b.o, a);
        }
      }
      if (!a.isShowing()) {
        a.show();
      }
      if (b.r != null) {
        b.r.dismiss();
      }
      return;
      label414:
      b.e = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ScheduleGridLayout.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */