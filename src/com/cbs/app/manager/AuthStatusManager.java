package com.cbs.app.manager;

import android.app.Activity;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.model.UserStatusEnum;
import com.cbs.app.service.AuthService;
import com.cbs.app.service.AuthServiceImpl;
import com.cbs.app.view.model.registration.PackageInfo;
import com.cbs.app.view.model.registration.UserDescription;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import java.util.ArrayList;

public class AuthStatusManager
  implements ResponseModelListener
{
  private static final String a = AuthStatusManager.class.getSimpleName();
  private static AuthStatusEndpointResponse b = null;
  private Activity c;
  private AuthStatusResponseListener d;
  
  public AuthStatusManager(Activity paramActivity, AuthStatusResponseListener paramAuthStatusResponseListener)
  {
    c = paramActivity;
    d = paramAuthStatusResponseListener;
  }
  
  public static boolean b()
  {
    boolean bool2 = false;
    AuthStatusEndpointResponse localAuthStatusEndpointResponse = getUserAuthStatus();
    boolean bool1 = bool2;
    if (localAuthStatusEndpointResponse != null) {
      if (!localAuthStatusEndpointResponse.isLoggedIn())
      {
        bool1 = bool2;
        if (!localAuthStatusEndpointResponse.isSuccess()) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static boolean c()
  {
    return getStatusEnum() == UserStatusEnum.c;
  }
  
  public static boolean d()
  {
    return getStatusEnum() == UserStatusEnum.d;
  }
  
  public static boolean e()
  {
    return getStatusEnum() == UserStatusEnum.a;
  }
  
  public static boolean f()
  {
    return getStatusEnum() == UserStatusEnum.b;
  }
  
  public static boolean g()
  {
    return getStatusEnum() == UserStatusEnum.e;
  }
  
  public static UserStatusEnum getStatusEnum()
  {
    AuthStatusEndpointResponse localAuthStatusEndpointResponse = getUserAuthStatus();
    if ((localAuthStatusEndpointResponse != null) && (localAuthStatusEndpointResponse.getUserStatus() != null)) {
      return localAuthStatusEndpointResponse.getUserStatus().getStatus();
    }
    return UserStatusEnum.a;
  }
  
  public static String getTrackingAuthString()
  {
    Object localObject2 = "anon;";
    Object localObject1 = localObject2;
    String str;
    if (b != null)
    {
      str = getUserStatusDescription();
      localObject1 = localObject2;
      if (str != null)
      {
        localObject1 = ";";
        if (!str.equals("subscriber")) {
          break label165;
        }
        localObject1 = ";" + "sub";
        localObject2 = getUserAuthStatus();
        if (localObject2 == null) {
          break label231;
        }
        localObject2 = ((AuthStatusEndpointResponse)localObject2).getPackageInfo();
        if ((localObject2 == null) || (((ArrayList)localObject2).size() <= 0)) {
          break label231;
        }
        localObject2 = ((PackageInfo)((ArrayList)localObject2).get(0)).getPackageStatus();
        if ((localObject2 == null) || (!((String)localObject2).equals("TRIAL"))) {
          break label142;
        }
        localObject1 = (String)localObject1 + ";trial";
      }
    }
    label142:
    label165:
    label231:
    for (;;)
    {
      localObject1 = "reg" + (String)localObject1;
      return (String)localObject1;
      localObject1 = (String)localObject1 + ";pay";
      continue;
      if (str.equals("suspended")) {
        localObject1 = ";" + "sub;susp";
      } else if (str.equals("exsubscriber")) {
        localObject1 = ";" + "sub;exsub";
      }
    }
  }
  
  public static AuthStatusEndpointResponse getUserAuthStatus()
  {
    return b;
  }
  
  public static String getUserId()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (b != null)
    {
      localObject1 = localObject2;
      if (b.getUserId() > 0L) {
        localObject1 = String.valueOf(b.getUserId());
      }
    }
    return (String)localObject1;
  }
  
  public static String getUserStatusDescription()
  {
    String str = null;
    Object localObject2 = null;
    Object localObject3 = getUserAuthStatus();
    Object localObject1 = str;
    if (localObject3 != null)
    {
      localObject3 = ((AuthStatusEndpointResponse)localObject3).getUserStatus();
      localObject1 = str;
      if (localObject3 != null)
      {
        str = ((UserStatus)localObject3).getDescription();
        localObject1 = localObject2;
        if (str.equals(UserDescription.SUSPENDED.name())) {
          localObject1 = "suspended";
        }
        if (str.equals(UserDescription.SUBSCRIBER.name())) {
          localObject1 = "subscriber";
        }
        if (str.equals(UserDescription.EX_SUBSCRIBER.name())) {
          localObject1 = "exsubscriber";
        }
        if (str.equals(UserDescription.REGISTERED.name())) {
          localObject1 = "registered";
        }
      }
    }
    return (String)localObject1;
  }
  
  public static void setUserAuthStatus(AuthStatusEndpointResponse paramAuthStatusEndpointResponse)
  {
    b = paramAuthStatusEndpointResponse;
  }
  
  public final void a()
  {
    if (d != null) {
      d.b();
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if ((paramResponseModel != null) && ((paramResponseModel instanceof AuthStatusEndpointResponse)))
    {
      paramResponseModel = (AuthStatusEndpointResponse)paramResponseModel;
      setUserAuthStatus(paramResponseModel);
      if (paramResponseModel.isLoggedIn())
      {
        paramResponseModel = paramResponseModel.getPackageInfo();
        if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
        {
          paramResponseModel = (PackageInfo)paramResponseModel.get(0);
          new StringBuilder("packageCode: ").append(paramResponseModel.getPackageCode());
          new StringBuilder("packageStatus: ").append(paramResponseModel.getPackageStatus());
        }
      }
      if (d != null) {
        d.a();
      }
    }
    while (d == null) {
      return;
    }
    d.b();
  }
  
  public final void h()
  {
    new AuthServiceImpl().a(c, this);
  }
  
  public static abstract interface AuthStatusResponseListener
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.manager.AuthStatusManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */