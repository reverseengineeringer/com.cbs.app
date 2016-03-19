package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.syncbak.SyncbakChannelsEndpointResponse;
import com.cbs.app.view.model.rest.syncbak.SyncbakEndpointResponse;
import com.cbs.app.view.model.rest.syncbak.SyncbakMvpdLocationEndpointResponse;
import com.cbs.app.view.model.rest.syncbak.SyncbakScheduleEndpointResponse;
import com.cbs.app.view.model.rest.syncbak.SyncbakStreamsEndpointResponse;
import com.cbs.app.view.utils.Util;

public final class SyncbakService
{
  public static String a = "http://cbsservice.aws.syncbak.com";
  private static final String b = SyncbakService.class.getSimpleName();
  
  public static ResponseModel a(Context paramContext)
  {
    return b(paramContext, "/v3/channels", null, SyncbakChannelsEndpointResponse.class);
  }
  
  public static ResponseModel a(Context paramContext, int paramInt1, long paramLong, int paramInt2)
  {
    paramLong /= 1000L;
    return b(paramContext, "/v3/schedule?stationId=" + paramInt1 + "&startTime=" + paramLong + "&count=" + paramInt2, null, SyncbakScheduleEndpointResponse.class);
  }
  
  public static void a(Context paramContext, int paramInt1, int paramInt2, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, "/v3/streams?stationId=" + paramInt1 + "&mediaId=" + paramInt2, paramResponseModelListener, SyncbakStreamsEndpointResponse.class);
  }
  
  public static void a(Context paramContext, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, "/v3/channels", paramResponseModelListener, SyncbakChannelsEndpointResponse.class);
  }
  
  private static void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener, Class<? extends SyncbakEndpointResponse> paramClass)
  {
    Util.a(paramContext, false, "GET", a + paramString, null, null, paramResponseModelListener, paramClass, false, 3600L, true);
  }
  
  public static ResponseModel b(Context paramContext)
  {
    return b(paramContext, "/v3/mvpds", null, SyncbakMvpdLocationEndpointResponse.class);
  }
  
  private static ResponseModel b(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener, Class<? extends SyncbakEndpointResponse> paramClass)
  {
    return Util.a(paramContext, false, a + paramString, null, paramClass, false, 3600L, true);
  }
  
  public static void b(Context paramContext, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, "/v3/mvpds", paramResponseModelListener, SyncbakMvpdLocationEndpointResponse.class);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.SyncbakService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */