package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class DeviceHome
  implements Parcelable, Serializable, Comparable<DeviceHome>
{
  public static final Parcelable.Creator<DeviceHome> CREATOR = new Parcelable.Creator()
  {
    public final DeviceHome createFromParcel(Parcel paramAnonymousParcel)
    {
      return new DeviceHome(paramAnonymousParcel);
    }
    
    public final DeviceHome[] newArray(int paramAnonymousInt)
    {
      return new DeviceHome[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = -7087840709443764367L;
  @JsonProperty("action")
  private List<String> action;
  @JsonProperty("appId")
  private String appId;
  @JsonProperty("device")
  private String device;
  @JsonProperty("display_order")
  private int display_order;
  @JsonProperty("expiresDate")
  private long expiresDate;
  @JsonProperty("filepath")
  private String filepath;
  @JsonProperty("id")
  private long id;
  @JsonProperty("k")
  private String k;
  @JsonProperty("liveDate")
  private long liveDate;
  @JsonProperty("optional_id")
  private String optional_id;
  @JsonProperty("pid")
  private String pid;
  @JsonProperty("svod_flag")
  private List<String> svod_flag;
  @JsonProperty("target")
  private List<String> target;
  @JsonProperty("type")
  private String type;
  @JsonProperty("user_state")
  private List<String> user_state;
  
  public DeviceHome() {}
  
  public DeviceHome(Parcel paramParcel)
  {
    action = new ArrayList();
    target = new ArrayList();
    svod_flag = new ArrayList();
    user_state = new ArrayList();
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readLong();
    type = paramParcel.readString();
    appId = paramParcel.readString();
    device = paramParcel.readString();
    filepath = paramParcel.readString();
    k = paramParcel.readString();
    display_order = paramParcel.readInt();
    pid = paramParcel.readString();
    optional_id = paramParcel.readString();
    liveDate = paramParcel.readLong();
    expiresDate = paramParcel.readLong();
    paramParcel.readStringList(action);
    paramParcel.readStringList(target);
    paramParcel.readStringList(svod_flag);
    paramParcel.readStringList(user_state);
  }
  
  public int compareTo(DeviceHome paramDeviceHome)
  {
    return Integer.valueOf(display_order).compareTo(Integer.valueOf(display_order));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof DeviceHome))
    {
      bool1 = bool2;
      if (((DeviceHome)paramObject).getId() == getId()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public List<String> getAction()
  {
    return action;
  }
  
  public String getAppId()
  {
    return appId;
  }
  
  public String getDevice()
  {
    return device;
  }
  
  public int getDisplay_order()
  {
    return display_order;
  }
  
  public long getExpiresDate()
  {
    return expiresDate;
  }
  
  public String getFilepath()
  {
    return filepath;
  }
  
  public long getId()
  {
    return id;
  }
  
  public String getK()
  {
    return k;
  }
  
  public long getLiveDate()
  {
    return liveDate;
  }
  
  public String getOptional_id()
  {
    return optional_id;
  }
  
  public String getPid()
  {
    return pid;
  }
  
  public List<String> getSvod_flag()
  {
    return svod_flag;
  }
  
  public List<String> getTarget()
  {
    return target;
  }
  
  public String getType()
  {
    return type;
  }
  
  public List<String> getUser_state()
  {
    return user_state;
  }
  
  public int hashCode()
  {
    return 44;
  }
  
  public void setAction(List<String> paramList)
  {
    action = paramList;
  }
  
  public void setAppId(String paramString)
  {
    appId = paramString;
  }
  
  public void setDevice(String paramString)
  {
    device = paramString;
  }
  
  public void setDisplay_order(int paramInt)
  {
    display_order = paramInt;
  }
  
  public void setExpiresDate(long paramLong)
  {
    expiresDate = paramLong;
  }
  
  public void setFilepath(String paramString)
  {
    filepath = paramString;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
  }
  
  public void setK(String paramString)
  {
    k = paramString;
  }
  
  public void setLiveDate(long paramLong)
  {
    liveDate = paramLong;
  }
  
  public void setOptional_id(String paramString)
  {
    optional_id = paramString;
  }
  
  public void setPid(String paramString)
  {
    pid = paramString;
  }
  
  public void setSvod_flag(List<String> paramList)
  {
    svod_flag = paramList;
  }
  
  public void setTarget(List<String> paramList)
  {
    target = paramList;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void setUser_state(List<String> paramList)
  {
    user_state = paramList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(id);
    paramParcel.writeString(type);
    paramParcel.writeString(appId);
    paramParcel.writeString(device);
    paramParcel.writeString(filepath);
    paramParcel.writeString(k);
    paramParcel.writeInt(display_order);
    paramParcel.writeString(pid);
    paramParcel.writeString(optional_id);
    paramParcel.writeLong(liveDate);
    paramParcel.writeLong(expiresDate);
    paramParcel.writeStringList(action);
    paramParcel.writeStringList(target);
    paramParcel.writeStringList(svod_flag);
    paramParcel.writeStringList(user_state);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.DeviceHome
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */