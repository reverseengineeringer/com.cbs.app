package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowMenu
  implements Parcelable
{
  public static final Parcelable.Creator<ShowMenu> CREATOR = new Parcelable.Creator() {};
  private String a;
  private long b;
  @JsonProperty("show_id")
  private long c;
  @JsonProperty("device_app_id")
  private String d;
  @JsonProperty("device_app_secret")
  private String e;
  @JsonProperty("live_date")
  private long f;
  @JsonProperty("changed_date")
  private long g;
  @JsonProperty("created_date")
  private long h;
  @JsonProperty("__is_deleted")
  private boolean i;
  @JsonProperty("__is_published")
  private boolean j;
  @JsonProperty("__expiry_date")
  private long k;
  private List<ShowLinks> l;
  
  public ShowMenu() {}
  
  protected ShowMenu(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readLong();
    c = paramParcel.readLong();
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readLong();
    g = paramParcel.readLong();
    h = paramParcel.readLong();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      i = bool1;
      if (paramParcel.readByte() == 0) {
        break label136;
      }
    }
    label136:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      j = bool1;
      k = paramParcel.readLong();
      l = new ArrayList();
      paramParcel.readList(l, List.class.getClassLoader());
      return;
      bool1 = false;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getChangedDate()
  {
    return g;
  }
  
  public long getCreatedDate()
  {
    return h;
  }
  
  public String getDeviceAppId()
  {
    return d;
  }
  
  public String getDeviceAppSecret()
  {
    return e;
  }
  
  public long getExpiryDate()
  {
    return k;
  }
  
  public long getId()
  {
    return b;
  }
  
  public String getK()
  {
    return a;
  }
  
  public List<ShowLinks> getLinks()
  {
    return l;
  }
  
  public long getLiveDate()
  {
    return f;
  }
  
  public long getShowId()
  {
    return c;
  }
  
  public void setChangedDate(long paramLong)
  {
    g = paramLong;
  }
  
  public void setCreatedDate(long paramLong)
  {
    h = paramLong;
  }
  
  public void setDeviceAppId(String paramString)
  {
    d = paramString;
  }
  
  public void setDeviceAppSecret(String paramString)
  {
    e = paramString;
  }
  
  public void setExpiryDate(long paramLong)
  {
    k = paramLong;
  }
  
  public void setId(long paramLong)
  {
    b = paramLong;
  }
  
  public void setIsDeleted(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void setIsPublished(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public void setK(String paramString)
  {
    a = paramString;
  }
  
  public void setLinks(List<ShowLinks> paramList)
  {
    l = paramList;
  }
  
  public void setLiveDate(long paramLong)
  {
    f = paramLong;
  }
  
  public void setShowId(long paramLong)
  {
    c = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeString(a);
    paramParcel.writeLong(b);
    paramParcel.writeLong(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeLong(f);
    paramParcel.writeLong(g);
    paramParcel.writeLong(h);
    if (i)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      if (!j) {
        break label118;
      }
    }
    label118:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      paramParcel.writeLong(k);
      paramParcel.writeList(l);
      return;
      b1 = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowMenu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */