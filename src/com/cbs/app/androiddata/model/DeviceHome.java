package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class DeviceHome
  implements Parcelable, Comparable<DeviceHome>
{
  public static final Parcelable.Creator<DeviceHome> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("id")
  private long a;
  @JsonProperty("type")
  private String b;
  @JsonProperty("target")
  private List<String> c;
  @JsonProperty("appId")
  private String d;
  @JsonProperty("action")
  private List<String> e;
  @JsonProperty("device")
  private String f;
  @JsonProperty("filepath")
  private String g;
  @JsonProperty("k")
  private String h;
  @JsonProperty("display_order")
  private int i;
  @JsonProperty("pid")
  private String j;
  @JsonProperty("optional_id")
  private String k;
  @JsonProperty("liveDate")
  private long l;
  @JsonProperty("expiresDate")
  private long m;
  @JsonProperty("user_state")
  private List<String> n;
  @JsonProperty("svod_flag")
  private List<String> o;
  
  public DeviceHome() {}
  
  public DeviceHome(Parcel paramParcel)
  {
    e = new ArrayList();
    c = new ArrayList();
    o = new ArrayList();
    n = new ArrayList();
    a = paramParcel.readLong();
    b = paramParcel.readString();
    d = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readString();
    i = paramParcel.readInt();
    j = paramParcel.readString();
    k = paramParcel.readString();
    l = paramParcel.readLong();
    m = paramParcel.readLong();
    paramParcel.readStringList(e);
    paramParcel.readStringList(c);
    paramParcel.readStringList(o);
    paramParcel.readStringList(n);
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
    return e;
  }
  
  public String getAppId()
  {
    return d;
  }
  
  public String getDevice()
  {
    return f;
  }
  
  public int getDisplay_order()
  {
    return i;
  }
  
  public long getExpiresDate()
  {
    return m;
  }
  
  public String getFilepath()
  {
    return g;
  }
  
  public long getId()
  {
    return a;
  }
  
  public String getK()
  {
    return h;
  }
  
  public long getLiveDate()
  {
    return l;
  }
  
  public String getOptional_id()
  {
    return k;
  }
  
  public String getPid()
  {
    return j;
  }
  
  public List<String> getSvod_flag()
  {
    return o;
  }
  
  public List<String> getTarget()
  {
    return c;
  }
  
  public String getType()
  {
    return b;
  }
  
  public List<String> getUser_state()
  {
    return n;
  }
  
  public int hashCode()
  {
    return 44;
  }
  
  public void setAction(List<String> paramList)
  {
    e = paramList;
  }
  
  public void setAppId(String paramString)
  {
    d = paramString;
  }
  
  public void setDevice(String paramString)
  {
    f = paramString;
  }
  
  public void setDisplay_order(int paramInt)
  {
    i = paramInt;
  }
  
  public void setExpiresDate(long paramLong)
  {
    m = paramLong;
  }
  
  public void setFilepath(String paramString)
  {
    g = paramString;
  }
  
  public void setId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setK(String paramString)
  {
    h = paramString;
  }
  
  public void setLiveDate(long paramLong)
  {
    l = paramLong;
  }
  
  public void setOptional_id(String paramString)
  {
    k = paramString;
  }
  
  public void setPid(String paramString)
  {
    j = paramString;
  }
  
  public void setSvod_flag(List<String> paramList)
  {
    o = paramList;
  }
  
  public void setTarget(List<String> paramList)
  {
    c = paramList;
  }
  
  public void setType(String paramString)
  {
    b = paramString;
  }
  
  public void setUser_state(List<String> paramList)
  {
    n = paramList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(a);
    paramParcel.writeString(b);
    paramParcel.writeString(d);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeInt(i);
    paramParcel.writeString(j);
    paramParcel.writeString(k);
    paramParcel.writeLong(l);
    paramParcel.writeLong(m);
    paramParcel.writeStringList(e);
    paramParcel.writeStringList(c);
    paramParcel.writeStringList(o);
    paramParcel.writeStringList(n);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.DeviceHome
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */