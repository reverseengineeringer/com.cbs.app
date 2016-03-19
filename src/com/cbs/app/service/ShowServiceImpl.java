package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.view.fragments.show.model.ShowsGroups;
import com.cbs.app.view.model.VideoStreamsEndpoint;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.DeviceCastEndpointResponse;
import com.cbs.app.view.model.rest.MyCbsEndpointResponse;
import com.cbs.app.view.model.rest.ShowAlbumPhotosEndpointResponse;
import com.cbs.app.view.model.rest.ShowEndpointResponse;
import com.cbs.app.view.model.rest.ShowPhotosEndpointResponse;
import com.cbs.app.view.model.rest.ShowSeasonAvailabilityResponse;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.Iterator;
import java.util.List;

public class ShowServiceImpl
  extends CBSBaseService
  implements ShowService
{
  private void a(String paramString1, String paramString2, Context paramContext, ResponseModelListener paramResponseModelListener)
  {
    b(paramContext, paramString2, paramString1, paramResponseModelListener, VideoEndpointResponse.class);
  }
  
  private void b(Context paramContext, String paramString, int paramInt1, int paramInt2, ResponseModelListener paramResponseModelListener)
  {
    if (paramContext != null)
    {
      int i = 0;
      if (paramInt2 > 1) {
        i = (paramInt2 - 1) * paramInt1;
      }
      a("/shows/video/" + paramString + ".json?episodes=true&rows=" + paramInt1 + "&start=" + i, "v2.0", paramContext, paramResponseModelListener);
    }
  }
  
  public final void a(Context paramContext, ResponseModelListener paramResponseModelListener)
  {
    String str2 = "ANONYMOUS";
    Object localObject = AuthStatusManager.getUserAuthStatus();
    String str1 = str2;
    if (localObject != null)
    {
      localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
      str1 = str2;
      if (localObject != null) {
        str1 = ((UserStatus)localObject).getDescription();
      }
    }
    a(paramContext, "v2.0", "/shows/video.json?category=Primetime&episodes=true&rows=24&userState=" + str1, paramResponseModelListener, VideoEndpointResponse.class);
  }
  
  public final void a(Context paramContext, String paramString, int paramInt1, int paramInt2, ResponseModelListener paramResponseModelListener)
  {
    if (paramContext != null)
    {
      int i = 0;
      if (paramInt2 > 1) {
        i = (paramInt2 - 1) * 60;
      }
      a("/shows/video/" + paramString + ".json?episodes=true&rows=60&start=" + i + "&seasonNumber=" + paramInt1, "v2.0", paramContext, paramResponseModelListener);
    }
  }
  
  public final void a(Context paramContext, String paramString, int paramInt, ResponseModelListener paramResponseModelListener)
  {
    b(paramContext, paramString, paramInt, 1, paramResponseModelListener);
  }
  
  public final void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    if (paramContext != null)
    {
      String str2 = "ANONYMOUS";
      Object localObject = AuthStatusManager.getUserAuthStatus();
      String str1 = str2;
      if (localObject != null)
      {
        localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
        str1 = str2;
        if (localObject != null) {
          str1 = ((UserStatus)localObject).getDescription();
        }
      }
      b(paramContext, "v2.0", "/shows/" + paramString + ".json?userState=" + str1, paramResponseModelListener, ShowEndpointResponse.class);
    }
  }
  
  public final void a(Context paramContext, List<String> paramList, ResponseModelListener paramResponseModelListener)
  {
    if (paramList.size() == 0)
    {
      paramResponseModelListener.a(new VideoEndpointResponse());
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localStringBuilder.append(paramList.next().toString());
      if (paramList.hasNext()) {
        localStringBuilder.append(",");
      }
    }
    paramList = localStringBuilder.toString();
    a("/video/checkavailability/cidlist.json?cids=" + paramList + "&getObject=true", "v2.0", paramContext, paramResponseModelListener);
  }
  
  public final void a(Context paramContext, List<Integer> paramList, Integer paramInteger, ResponseModelListener paramResponseModelListener)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("/mycbs.json?showIdList=");
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localStringBuilder.append(((Integer)paramList.next()).intValue());
      if (paramList.hasNext()) {
        localStringBuilder.append(",");
      }
    }
    if (paramInteger != null)
    {
      localStringBuilder.append("&maxVideoCount=");
      localStringBuilder.append(paramInteger);
    }
    b(paramContext, "v2.0", localStringBuilder.toString(), paramResponseModelListener, MyCbsEndpointResponse.class);
  }
  
  public final void b(Context paramContext, ResponseModelListener paramResponseModelListener)
  {
    String str = Util.Q(paramContext);
    a(paramContext, "v2.0", "/apps-api/v2.0/" + str + "/shows/groups.json?includeAllShowGroups=true", paramResponseModelListener, ShowsGroups.class);
  }
  
  public final void b(Context paramContext, String paramString, int paramInt, ResponseModelListener paramResponseModelListener)
  {
    b(paramContext, paramString, 60, paramInt, paramResponseModelListener);
  }
  
  public final void b(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, paramString, 60, paramResponseModelListener);
  }
  
  public final void b(Context paramContext, List<Long> paramList, Integer paramInteger, ResponseModelListener paramResponseModelListener)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("/mycbs.json?showIdList=");
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localStringBuilder.append(paramList.next());
      if (paramList.hasNext()) {
        localStringBuilder.append(",");
      }
    }
    if (paramInteger != null)
    {
      localStringBuilder.append("&maxVideoCount=");
      localStringBuilder.append(paramInteger);
    }
    b(paramContext, "v2.0", localStringBuilder.toString(), paramResponseModelListener, MyCbsEndpointResponse.class);
  }
  
  public final void c(Context paramContext, String paramString, int paramInt, ResponseModelListener paramResponseModelListener)
  {
    if (paramContext != null)
    {
      int i = 0;
      if (paramInt > 1) {
        i = (paramInt - 1) * 60;
      }
      a("/shows/video/" + paramString + ".json?episodes=false&rows=60&start=" + i, "v2.0", paramContext, paramResponseModelListener);
    }
  }
  
  public final void c(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    b(paramContext, "v3.0", "/shows/" + paramString + "/video/season/availability.json", paramResponseModelListener, ShowSeasonAvailabilityResponse.class);
  }
  
  public final void d(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, "/shows/" + paramString + "/cast.json", paramResponseModelListener, DeviceCastEndpointResponse.class);
  }
  
  public final void e(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, "/shows/" + paramString + "/albums.json", paramResponseModelListener, ShowPhotosEndpointResponse.class);
  }
  
  public final void f(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, "/albums/" + paramString + ".json", paramResponseModelListener, ShowAlbumPhotosEndpointResponse.class);
  }
  
  public final void g(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    b(paramContext, "v2.0", "/video/cid/" + paramString + ".json", paramResponseModelListener, VideoEndpointResponse.class);
  }
  
  public final void h(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    Object localObject = Util.Q(paramContext);
    String str = "/apps-api/v3.0/" + (String)localObject + "/video/streams.json";
    localObject = str;
    if (paramString != null) {
      localObject = str + "?contentId=" + paramString;
    }
    a(paramContext, (String)localObject, paramResponseModelListener, VideoStreamsEndpoint.class, true);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ShowServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */