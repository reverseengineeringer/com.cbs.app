package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowBlockNavigation
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ShowBlockNavigation> CREATOR = new Parcelable.Creator()
  {
    public final ShowBlockNavigation createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ShowBlockNavigation(paramAnonymousParcel);
    }
    
    public final ShowBlockNavigation[] newArray(int paramAnonymousInt)
    {
      return new ShowBlockNavigation[paramAnonymousInt];
    }
  };
  @JsonProperty("cbssolrType")
  private String cbssolrType;
  @JsonProperty("changedDate")
  private long changedDate;
  @JsonProperty("_changedDate")
  private String changedDateString;
  @JsonProperty("createdDate")
  private long createdDate;
  @JsonProperty("_createdDate")
  private String createdDateString;
  @JsonProperty("expireDate")
  private long expireDate;
  @JsonProperty("_expireDate")
  private String expireDateString;
  @JsonProperty("icon")
  private String icon;
  @JsonProperty("id")
  private int id;
  @JsonProperty("inboundDeeplinkUrl")
  private String inboundDeeplinkUrl;
  @JsonProperty("k")
  private String k;
  @JsonProperty("label")
  private String label;
  @JsonProperty("liveDate")
  private long liveDate;
  @JsonProperty("_liveDate")
  private String liveDateString;
  @JsonProperty("navigationType")
  private String navigationType;
  @JsonProperty("platform")
  private String platform;
  @JsonProperty("showId")
  private long showId;
  @JsonProperty("title")
  private String title;
  @JsonProperty("type")
  private String type;
  @JsonProperty("url")
  private String url;
  
  public ShowBlockNavigation() {}
  
  public ShowBlockNavigation(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    k = paramParcel.readString();
    type = paramParcel.readString();
    id = paramParcel.readInt();
    title = paramParcel.readString();
    createdDate = paramParcel.readLong();
    createdDateString = paramParcel.readString();
    changedDate = paramParcel.readLong();
    changedDateString = paramParcel.readString();
    liveDate = paramParcel.readLong();
    liveDateString = paramParcel.readString();
    expireDate = paramParcel.readLong();
    expireDateString = paramParcel.readString();
    showId = paramParcel.readLong();
    navigationType = paramParcel.readString();
    platform = paramParcel.readString();
    icon = paramParcel.readString();
    label = paramParcel.readString();
    url = paramParcel.readString();
    inboundDeeplinkUrl = paramParcel.readString();
    cbssolrType = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCbssolrType()
  {
    return cbssolrType;
  }
  
  public long getChangedDate()
  {
    return changedDate;
  }
  
  public String getChangedDateString()
  {
    return changedDateString;
  }
  
  public long getCreatedDate()
  {
    return createdDate;
  }
  
  public String getCreatedDateString()
  {
    return createdDateString;
  }
  
  public long getExpireDate()
  {
    return expireDate;
  }
  
  public String getExpireDateString()
  {
    return expireDateString;
  }
  
  public String getIcon()
  {
    return icon;
  }
  
  public int getId()
  {
    return id;
  }
  
  public String getInBoundDeepLinkUrl()
  {
    return inboundDeeplinkUrl;
  }
  
  public String getK()
  {
    return k;
  }
  
  public String getLabel()
  {
    return label;
  }
  
  public long getLiveDate()
  {
    return liveDate;
  }
  
  public String getLiveDateString()
  {
    return liveDateString;
  }
  
  public String getNavigationType()
  {
    return navigationType;
  }
  
  public String getPlatform()
  {
    return platform;
  }
  
  public long getShowId()
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
  
  public String getUrl()
  {
    return url;
  }
  
  public void setCbssolrType(String paramString)
  {
    cbssolrType = paramString;
  }
  
  public void setChangedDate(long paramLong)
  {
    changedDate = paramLong;
  }
  
  public void setChangedDateString(String paramString)
  {
    changedDateString = paramString;
  }
  
  public void setCreatedDate(long paramLong)
  {
    createdDate = paramLong;
  }
  
  public void setCreatedDateString(String paramString)
  {
    createdDateString = paramString;
  }
  
  public void setExpireDate(long paramLong)
  {
    expireDate = paramLong;
  }
  
  public void setExpireDateString(String paramString)
  {
    expireDateString = paramString;
  }
  
  public void setIcon(String paramString)
  {
    icon = paramString;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
  
  public void setInBoundDeepLinkUrl(String paramString)
  {
    inboundDeeplinkUrl = paramString;
  }
  
  public void setK(String paramString)
  {
    k = paramString;
  }
  
  public void setLabel(String paramString)
  {
    label = paramString;
  }
  
  public void setLiveDate(long paramLong)
  {
    liveDate = paramLong;
  }
  
  public void setLiveDateString(String paramString)
  {
    liveDateString = paramString;
  }
  
  public void setNavigationType(String paramString)
  {
    navigationType = paramString;
  }
  
  public void setPlatform(String paramString)
  {
    platform = paramString;
  }
  
  public void setShowId(long paramLong)
  {
    showId = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void setUrl(String paramString)
  {
    url = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(k);
    paramParcel.writeString(type);
    paramParcel.writeInt(id);
    paramParcel.writeString(title);
    paramParcel.writeLong(createdDate);
    paramParcel.writeString(createdDateString);
    paramParcel.writeLong(changedDate);
    paramParcel.writeString(changedDateString);
    paramParcel.writeLong(liveDate);
    paramParcel.writeString(liveDateString);
    paramParcel.writeLong(expireDate);
    paramParcel.writeString(expireDateString);
    paramParcel.writeLong(showId);
    paramParcel.writeString(navigationType);
    paramParcel.writeString(platform);
    paramParcel.writeString(icon);
    paramParcel.writeString(label);
    paramParcel.writeString(url);
    paramParcel.writeString(inboundDeeplinkUrl);
    paramParcel.writeString(cbssolrType);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.ShowBlockNavigation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */