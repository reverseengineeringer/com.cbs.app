package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AssetCarouselItem
  implements Parcelable, Comparable<AssetCarouselItem>
{
  public static final Parcelable.Creator<AssetCarouselItem> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("id")
  private long a;
  @JsonProperty("type")
  private String b;
  @JsonProperty("appId")
  private String c;
  @JsonProperty("target")
  private ArrayList<String> d;
  @JsonProperty("device")
  private String e;
  @JsonProperty("filepath")
  private String f;
  @JsonProperty("k")
  private String g;
  @JsonProperty("display_order")
  private long h;
  @JsonProperty("action_url")
  private String i;
  
  public AssetCarouselItem() {}
  
  public AssetCarouselItem(Parcel paramParcel)
  {
    a = paramParcel.readLong();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readArrayList(String.class.getClassLoader());
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readLong();
    i = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof AssetCarouselItem))
    {
      bool1 = bool2;
      if (((AssetCarouselItem)paramObject).getId() == getId()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String getActionUrl()
  {
    return i;
  }
  
  public String getAppId()
  {
    return c;
  }
  
  public String getDevice()
  {
    return e;
  }
  
  public long getDisplayOrder()
  {
    return h;
  }
  
  public String getFilepath()
  {
    return f;
  }
  
  public long getId()
  {
    return a;
  }
  
  public String getK()
  {
    return g;
  }
  
  public ArrayList<String> getTarget()
  {
    return d;
  }
  
  public String getType()
  {
    return b;
  }
  
  public int hashCode()
  {
    return 43;
  }
  
  public void setActionUrl(String paramString)
  {
    i = paramString;
  }
  
  public void setAppId(String paramString)
  {
    c = paramString;
  }
  
  public void setDevice(String paramString)
  {
    e = paramString;
  }
  
  public void setDisplayOrder(long paramLong)
  {
    h = paramLong;
  }
  
  public void setFilepath(String paramString)
  {
    f = paramString;
  }
  
  public void setId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setK(String paramString)
  {
    g = paramString;
  }
  
  public void setTarget(ArrayList<String> paramArrayList)
  {
    d = paramArrayList;
  }
  
  public void setType(String paramString)
  {
    b = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeList(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeLong(h);
    paramParcel.writeString(i);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.AssetCarouselItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */