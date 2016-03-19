package com.cbs.app.androiddata;

import android.content.Context;
import android.os.AsyncTask;
import com.cbs.app.androiddata.model.DeviceData;

public class ServerRequestTask
  extends AsyncTask<String, Double, ResponseModel>
{
  RequestHelper a;
  
  public ServerRequestTask(Context paramContext, Class<? extends ResponseModel> paramClass, ResponseModelListener paramResponseModelListener)
  {
    LG.a();
    a = new RequestHelper(paramContext, paramClass, paramResponseModelListener);
  }
  
  public String getCbsAppSecret()
  {
    return a.getCbsAppSecret();
  }
  
  public DeviceData getSyncbakDeviceData()
  {
    return a.getSyncbakDeviceData();
  }
  
  public String getSyncbakKey()
  {
    return a.getSyncbakKey();
  }
  
  public String getSyncbakSecret()
  {
    return a.getSyncbakSecret();
  }
  
  public long getTtl()
  {
    return a.getTtl();
  }
  
  public void setCbsAppSecret(String paramString)
  {
    a.setCbsAppSecret(paramString);
  }
  
  public void setIsCbsEndpont(boolean paramBoolean)
  {
    a.setIsCbsEndpont(paramBoolean);
  }
  
  public void setRetry(boolean paramBoolean)
  {
    a.setRetry(paramBoolean);
  }
  
  public void setShouldWeLogThisRequest(boolean paramBoolean)
  {
    a.setShouldWeLogThisRequest(paramBoolean);
  }
  
  public void setStaleOk(boolean paramBoolean)
  {
    a.setStaleOk(paramBoolean);
  }
  
  public void setSyncbakDeviceData(DeviceData paramDeviceData)
  {
    a.setSyncbakDeviceData(paramDeviceData);
  }
  
  public void setSyncbakKey(String paramString)
  {
    a.setSyncbakKey(paramString);
  }
  
  public void setSyncbakSecret(String paramString)
  {
    a.setSyncbakSecret(paramString);
  }
  
  public void setTtl(long paramLong)
  {
    a.setTtl(paramLong);
  }
  
  public void setUseCache(boolean paramBoolean)
  {
    a.setUseCache(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.ServerRequestTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */