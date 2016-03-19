package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AssetCarouselItem
  implements Parcelable, Serializable, Comparable<AssetCarouselItem>
{
  public static final Parcelable.Creator<AssetCarouselItem> CREATOR = new Parcelable.Creator()
  {
    public final AssetCarouselItem createFromParcel(Parcel paramAnonymousParcel)
    {
      return new AssetCarouselItem(paramAnonymousParcel);
    }
    
    public final AssetCarouselItem[] newArray(int paramAnonymousInt)
    {
      return new AssetCarouselItem[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 7134718595248360346L;
  @JsonProperty("action_url")
  private String actionUrl;
  @JsonProperty("appId")
  private String appId;
  @JsonProperty("device")
  private String device;
  @JsonProperty("display_order")
  private long displayOrder;
  @JsonProperty("filepath")
  private String filepath;
  @JsonProperty("id")
  private long id;
  @JsonProperty("k")
  private String k;
  @JsonProperty("target")
  private ArrayList<String> target;
  @JsonProperty("type")
  private String type;
  
  public AssetCarouselItem() {}
  
  public AssetCarouselItem(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readLong();
    type = paramParcel.readString();
    appId = paramParcel.readString();
    target = paramParcel.readArrayList(String.class.getClassLoader());
    device = paramParcel.readString();
    filepath = paramParcel.readString();
    k = paramParcel.readString();
    displayOrder = paramParcel.readLong();
    actionUrl = paramParcel.readString();
  }
  
  public int compareTo(AssetCarouselItem paramAssetCarouselItem)
  {
    return Long.valueOf(displayOrder).compareTo(Long.valueOf(displayOrder));
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
    return actionUrl;
  }
  
  public String getAppId()
  {
    return appId;
  }
  
  public String getDevice()
  {
    return device;
  }
  
  public long getDisplayOrder()
  {
    return displayOrder;
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
  
  public ArrayList<String> getTarget()
  {
    return target;
  }
  
  public String getType()
  {
    return type;
  }
  
  public int hashCode()
  {
    return 43;
  }
  
  public void setActionUrl(String paramString)
  {
    actionUrl = paramString;
  }
  
  public void setAppId(String paramString)
  {
    appId = paramString;
  }
  
  public void setDevice(String paramString)
  {
    device = paramString;
  }
  
  public void setDisplayOrder(long paramLong)
  {
    displayOrder = paramLong;
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
  
  public void setTarget(ArrayList<String> paramArrayList)
  {
    target = paramArrayList;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(id);
    paramParcel.writeString(type);
    paramParcel.writeString(appId);
    paramParcel.writeList(target);
    paramParcel.writeString(device);
    paramParcel.writeString(filepath);
    paramParcel.writeString(k);
    paramParcel.writeLong(displayOrder);
    paramParcel.writeString(actionUrl);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.AssetCarouselItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */