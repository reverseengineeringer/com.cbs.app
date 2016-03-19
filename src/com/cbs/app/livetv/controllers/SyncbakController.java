package com.cbs.app.livetv.controllers;

import android.content.Context;
import android.location.Location;
import android.os.AsyncTask;
import android.provider.Settings.Secure;
import android.util.Pair;
import com.cbs.app.androiddata.DataManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.androiddata.model.DeviceData;
import com.cbs.app.livetv.callbacks.LocationControllerCallback;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.model.AsyncResult;
import com.cbs.app.livetv.model.LiveTvChannel;
import com.cbs.app.service.SyncbakService;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.MVPDInfo;
import com.cbs.app.view.model.VideoStreamsEndpoint;
import com.cbs.app.view.model.rest.syncbak.SyncbakChannelsEndpointResponse;
import com.cbs.app.view.model.rest.syncbak.SyncbakMvpdLocationEndpointResponse;
import com.cbs.app.view.model.rest.syncbak.SyncbakStreamsEndpointResponse;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.model.syncbak.SyncbakStream;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SyncbakController
  extends Controller<SyncbakCallback>
  implements LocationControllerCallback
{
  private static final String a = SyncbakController.class.getSimpleName();
  private LocationLiveTvController b;
  
  public SyncbakController(Context paramContext)
  {
    super(paramContext);
    b = new LocationLiveTvController(paramContext);
    b.setLocationCallback(this);
  }
  
  private boolean j()
  {
    int j = 0;
    Object localObject3 = null;
    Object localObject1 = b.getUserLocation();
    if (localObject1 == null)
    {
      if (b.b())
      {
        ((SyncbakCallback)getCallback()).a(2006, null);
        return false;
      }
      ((SyncbakCallback)getCallback()).a(2008, null);
      return false;
    }
    if (!b.b())
    {
      ((SyncbakCallback)getCallback()).a(2008, null);
      return false;
    }
    Object localObject2 = Settings.Secure.getString(d().getContentResolver(), "android_id");
    DeviceData localDeviceData = new DeviceData();
    int i;
    if (Util.e(d()))
    {
      i = 1;
      localDeviceData.setIsPhone(i);
      i = 2;
      if (Util.h(d())) {
        i = 4;
      }
      localDeviceData.setDeviceType(i);
      new StringBuilder("Setting current location:").append(((Location)localObject1).getLatitude()).append(" ").append(((Location)localObject1).getLongitude());
      localDeviceData.setLatitude(((Location)localObject1).getLatitude());
      localDeviceData.setLongitude(((Location)localObject1).getLongitude());
      localDeviceData.setDeviceId((String)localObject2);
      localDeviceData.setLocationAccuracy((int)((Location)localObject1).getAccuracy());
      localDeviceData.setLocationAge(10);
      DataManager.getInstance().setSyncbakDeviceData(localDeviceData);
      localDeviceData = DataManager.getInstance().getDeviceData();
      localObject1 = "";
      i = j;
      if (VideoUtil.a())
      {
        localObject1 = "" + "AllAccess";
        i = 1;
      }
      localObject2 = localObject3;
      if (MVPDController.getInstance().j())
      {
        localObject2 = localObject3;
        if (MVPDController.getInstance().i())
        {
          localObject2 = localObject3;
          if (MVPDController.getInstance().getCurrentMvpdId() != null) {
            localObject2 = MVPDController.getInstance().getCurrentMvpdId();
          }
        }
      }
      localObject3 = localObject1;
      j = i;
      if (localObject2 != null)
      {
        localObject3 = localObject1;
        if (i != 0) {
          localObject3 = (String)localObject1 + "-";
        }
        localObject3 = (String)localObject3 + (String)localObject2;
        j = 1;
      }
      if (j != 0) {
        break label394;
      }
      localDeviceData.setMVPDId("AllAccess");
    }
    for (;;)
    {
      return true;
      i = 0;
      break;
      label394:
      localDeviceData.setMVPDId((String)localObject3);
    }
  }
  
  public final void a()
  {
    h();
  }
  
  public final void a(SyncbakChannel paramSyncbakChannel)
  {
    SyncbakService.a(d(), paramSyncbakChannel.getStationId(), paramSyncbakChannel.getMediaId(), new ResponseModelListener()
    {
      public final void a()
      {
        if (!e()) {
          return;
        }
        ((SyncbakCallback)getCallback()).a(2000, null);
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        if (!e()) {
          return;
        }
        paramAnonymousResponseModel = (SyncbakStreamsEndpointResponse)paramAnonymousResponseModel;
        ArrayList localArrayList = paramAnonymousResponseModel.getStreams();
        if ((localArrayList != null) && (localArrayList.size() > 0))
        {
          SyncbakController.i();
          new StringBuilder("Stream Info :").append(paramAnonymousResponseModel.getStreams().size());
          SyncbakController.i();
          new StringBuilder("Stream Info :").append(((SyncbakStream)localArrayList.get(0)).getUrl()).append(" ").append(((SyncbakStream)localArrayList.get(0)).getTypeDescription());
          SyncbakController.a(SyncbakController.this, (SyncbakStream)localArrayList.get(a), a);
        }
        for (;;)
        {
          SyncbakController.i();
          new StringBuilder("Stream response :").append(paramAnonymousResponseModel);
          return;
          ((SyncbakCallback)getCallback()).a(2007, null);
        }
      }
    });
  }
  
  public final void a(SyncbakChannel paramSyncbakChannel, Affiliate paramAffiliate, int paramInt)
  {
    if (j()) {
      new c().execute(new Object[] { paramSyncbakChannel, paramAffiliate, Integer.valueOf(paramInt) });
    }
  }
  
  public final void a(final String paramString)
  {
    if (j()) {
      SyncbakService.b(d(), new ResponseModelListener()
      {
        public final void a()
        {
          if (!e()) {
            return;
          }
          SyncbakCallback localSyncbakCallback = (SyncbakCallback)getCallback();
          if (Util.L(d())) {}
          for (String str = d().getString(2131231161);; str = null)
          {
            localSyncbakCallback.a(2012, str);
            return;
          }
        }
        
        public final void a(ResponseModel paramAnonymousResponseModel)
        {
          boolean bool2 = true;
          if (!e()) {
            return;
          }
          paramAnonymousResponseModel = ((SyncbakMvpdLocationEndpointResponse)paramAnonymousResponseModel).getMvpds();
          boolean bool1;
          if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
          {
            bool1 = true;
            if (!bool1) {
              break label138;
            }
            paramAnonymousResponseModel = paramAnonymousResponseModel.iterator();
            MVPDInfo localMVPDInfo;
            do
            {
              if (!paramAnonymousResponseModel.hasNext()) {
                break;
              }
              localMVPDInfo = (MVPDInfo)paramAnonymousResponseModel.next();
              SyncbakController.i();
              new StringBuilder("mvpd supported info: ").append(localMVPDInfo.getStationId()).append(" ").append(localMVPDInfo.getMvpdIdentifier());
            } while (!paramString.equals(localMVPDInfo.getMvpdIdentifier()));
          }
          for (;;)
          {
            ((SyncbakCallback)getCallback()).a(bool2, bool1);
            return;
            bool1 = false;
            break;
            label138:
            bool2 = false;
          }
        }
      });
    }
  }
  
  public final void b()
  {
    h();
  }
  
  public final void c()
  {
    b.a();
    super.c();
  }
  
  public final void f()
  {
    if (j()) {
      SyncbakService.a(d(), new ResponseModelListener()
      {
        public final void a()
        {
          if (!e()) {
            return;
          }
          ((SyncbakCallback)getCallback()).a(2002, null);
        }
        
        public final void a(ResponseModel paramAnonymousResponseModel)
        {
          boolean bool2 = false;
          SyncbakController.i();
          new StringBuilder("success() called with: model = [").append(paramAnonymousResponseModel).append("]");
          if (!e()) {
            return;
          }
          if ((paramAnonymousResponseModel instanceof SyncbakChannelsEndpointResponse))
          {
            paramAnonymousResponseModel = ((SyncbakChannelsEndpointResponse)paramAnonymousResponseModel).getChannels();
            bool1 = bool2;
            if (paramAnonymousResponseModel != null)
            {
              bool1 = bool2;
              if (paramAnonymousResponseModel.size() <= 0) {}
            }
          }
          for (boolean bool1 = true;; bool1 = false)
          {
            ((SyncbakCallback)getCallback()).a(bool1);
            return;
          }
        }
      });
    }
  }
  
  public final void g()
  {
    if (j()) {
      new a().execute(new Integer[] { Integer.valueOf(2) });
    }
  }
  
  public final void h()
  {
    if (j()) {
      new b().execute(new Void[0]);
    }
  }
  
  final class a
    extends AsyncTask<Integer, Void, AsyncResult<List<LiveTvChannel>>>
  {
    a() {}
  }
  
  final class b
    extends AsyncTask<Void, Void, AsyncResult<List<Pair<SyncbakChannel, Affiliate>>>>
  {
    b() {}
  }
  
  final class c
    extends AsyncTask<Object, Void, AsyncResult<LiveTvChannel>>
  {
    c() {}
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SyncbakController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */