package com.cbs.app.androiddata;

import com.cbs.app.androiddata.model.DeviceData;

public class DataManager
{
  private static DataManager a;
  private DataManagerConfiguration b;
  private DeviceData c;
  
  public static DataManager getInstance()
  {
    if (a == null) {
      a = new DataManager();
    }
    return a;
  }
  
  public final void a(DataManagerConfiguration paramDataManagerConfiguration)
  {
    b = paramDataManagerConfiguration;
  }
  
  public DataManagerConfiguration getConfiguration()
  {
    return b;
  }
  
  public DeviceData getDeviceData()
  {
    return c;
  }
  
  public void setConfiguration(DataManagerConfiguration paramDataManagerConfiguration)
  {
    b = paramDataManagerConfiguration;
  }
  
  public void setSyncbakDeviceData(DeviceData paramDeviceData)
  {
    c = paramDeviceData;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.DataManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */