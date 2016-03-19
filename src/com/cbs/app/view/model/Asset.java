package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Asset
  implements Parcelable, Serializable, Comparable<Asset>
{
  public static final Parcelable.Creator<Asset> CREATOR = new Parcelable.Creator()
  {
    public final Asset createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Asset(paramAnonymousParcel);
    }
    
    public final Asset[] newArray(int paramAnonymousInt)
    {
      return new Asset[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 123L;
  @JsonProperty("device")
  private String device;
  @JsonProperty("feature")
  private String feature;
  @JsonProperty("filepath")
  private String filepath;
  @JsonProperty("id")
  private long id;
  @JsonProperty("k")
  private String k;
  @JsonProperty("live_date_sec")
  private long liveDateSec;
  @JsonProperty("show_id")
  private String showId;
  @JsonProperty("title")
  private String title;
  @JsonProperty("type")
  private String type;
  
  public Asset() {}
  
  public Asset(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readLong();
    showId = paramParcel.readString();
    title = paramParcel.readString();
    device = paramParcel.readString();
    filepath = paramParcel.readString();
    liveDateSec = paramParcel.readLong();
    k = paramParcel.readString();
  }
  
  public int compareTo(Asset paramAsset)
  {
    return Long.valueOf(id).compareTo(Long.valueOf(id));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Asset))
    {
      bool1 = bool2;
      if (((Asset)paramObject).getId() == getId()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String getDevice()
  {
    return device;
  }
  
  public String getFeature()
  {
    return feature;
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
  
  public long getLiveDateSec()
  {
    return liveDateSec;
  }
  
  public String getShowId()
  {
    return showId;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getType()
  {
    return type;
  }
  
  public int hashCode()
  {
    return 42;
  }
  
  public void setDevice(String paramString)
  {
    device = paramString;
  }
  
  public void setFeature(String paramString)
  {
    feature = paramString;
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
  
  public void setLiveDateSec(long paramLong)
  {
    liveDateSec = paramLong;
  }
  
  public void setShowId(String paramString)
  {
    showId = paramString;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(id);
    paramParcel.writeString(showId);
    paramParcel.writeString(title);
    paramParcel.writeString(device);
    paramParcel.writeString(filepath);
    paramParcel.writeLong(liveDateSec);
    paramParcel.writeString(k);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Asset
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */