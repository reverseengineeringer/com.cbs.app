package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.model.DeviceHome;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.rest.HomeEndpointResponse;
import com.cbs.app.view.model.rest.MarqueeResponse;
import com.cbs.app.view.model.rest.ScheduleResponse;
import java.util.List;

final class AccountUIHelper$a
  implements ResponseModelListener
{
  private Context a;
  private DoneListener b;
  private String c;
  
  public AccountUIHelper$a(Context paramContext, DoneListener paramDoneListener, String paramString)
  {
    a = paramContext;
    b = paramDoneListener;
    c = paramString;
  }
  
  public final void a()
  {
    AccountUIHelper.d();
    AccountUIHelper.b();
    if (b != null)
    {
      b.a(c);
      return;
    }
    SVODPopupHelper.c(a, c);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    Intent localIntent = null;
    AccountUIHelper.d();
    Object localObject1;
    if ((paramResponseModel != null) && ((paramResponseModel instanceof HomeEndpointResponse)))
    {
      localObject1 = (HomeEndpointResponse)paramResponseModel;
      paramResponseModel = ((HomeEndpointResponse)localObject1).getMarqueeResponse();
      if (paramResponseModel == null) {
        break label193;
      }
      paramResponseModel = paramResponseModel.getDeviceHomeList();
      if (paramResponseModel == null) {
        break label193;
      }
    }
    label193:
    for (paramResponseModel = (DeviceHome[])paramResponseModel.toArray(new DeviceHome[paramResponseModel.size()]);; paramResponseModel = null)
    {
      Object localObject2 = ((HomeEndpointResponse)localObject1).getScheduleResponse();
      localObject1 = localIntent;
      if (localObject2 != null)
      {
        localObject2 = ((ScheduleResponse)localObject2).getScheduleList();
        localObject1 = localIntent;
        if (localObject2 != null) {
          localObject1 = (Episode[])((List)localObject2).toArray(new Episode[((List)localObject2).size()]);
        }
      }
      if (a != null)
      {
        localIntent = ((Activity)a).getIntent();
        if (localIntent != null)
        {
          localIntent.removeExtra("homeMarquee");
          localIntent.removeExtra("episodeSchedule");
          localIntent.putExtra("homeMarquee", paramResponseModel);
          localIntent.putExtra("episodeSchedule", (Parcelable[])localObject1);
        }
      }
      AccountUIHelper.b();
      if (b != null)
      {
        b.a(c);
        return;
      }
      SVODPopupHelper.c(a, c);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */