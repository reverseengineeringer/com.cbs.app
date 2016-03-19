package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Classic
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<Classic> CREATOR = new Parcelable.Creator()
  {
    public final Classic createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Classic(paramAnonymousParcel);
    }
    
    public final Classic[] newArray(int paramAnonymousInt)
    {
      return new Classic[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 6102242046222775105L;
  @JsonProperty("category")
  private String category;
  @JsonProperty("changed_date")
  private String changedDate;
  @JsonProperty("createdDate")
  private String createdDate;
  @JsonProperty("device_restriction")
  private int deviceRestriction;
  @JsonProperty("display_order")
  private int displayOrder;
  @JsonProperty("filepath_show_logo")
  private String filepathShowLogo;
  @JsonProperty("filepath_show_thumbnail")
  private String filepathShowThumbnail;
  @JsonProperty("live_date")
  private String liveDate;
  @JsonProperty("nav_category_id")
  private String navCategoryId;
  @JsonProperty("show_id")
  private String showId;
  @JsonProperty("title")
  private String title;
  @JsonProperty("tvplus")
  private int tvplus;
  @JsonProperty("type")
  private String type;
  
  public Classic() {}
  
  public Classic(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public static Parcelable.Creator<Classic> getCreator()
  {
    return CREATOR;
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    title = paramParcel.readString();
    createdDate = paramParcel.readString();
    changedDate = paramParcel.readString();
    deviceRestriction = paramParcel.readInt();
    filepathShowLogo = paramParcel.readString();
    filepathShowThumbnail = paramParcel.readString();
    navCategoryId = paramParcel.readString();
    liveDate = paramParcel.readString();
    showId = paramParcel.readString();
    type = paramParcel.readString();
    displayOrder = paramParcel.readInt();
    category = paramParcel.readString();
    tvplus = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCategory()
  {
    return category;
  }
  
  public String getChangedDate()
  {
    return changedDate;
  }
  
  public String getCreatedDate()
  {
    return createdDate;
  }
  
  public int getDeviceRestriction()
  {
    return deviceRestriction;
  }
  
  public int getDisplayOrder()
  {
    return displayOrder;
  }
  
  public String getFilepathShowLogo()
  {
    return filepathShowLogo;
  }
  
  public String getFilepathShowThumbnail()
  {
    return filepathShowThumbnail;
  }
  
  public String getLiveDate()
  {
    return liveDate;
  }
  
  public String getNavCategoryId()
  {
    return navCategoryId;
  }
  
  public String getShowId()
  {
    return showId;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public int getTvplus()
  {
    return tvplus;
  }
  
  public String getType()
  {
    return type;
  }
  
  public void setCategory(String paramString)
  {
    category = paramString;
  }
  
  public void setChangedDate(String paramString)
  {
    changedDate = paramString;
  }
  
  public void setCreatedDate(String paramString)
  {
    createdDate = paramString;
  }
  
  public void setDeviceRestriction(int paramInt)
  {
    deviceRestriction = paramInt;
  }
  
  public void setDisplayOrder(int paramInt)
  {
    displayOrder = paramInt;
  }
  
  public void setFilepathShowLogo(String paramString)
  {
    filepathShowLogo = paramString;
  }
  
  public void setFilepathShowThumbnail(String paramString)
  {
    filepathShowThumbnail = paramString;
  }
  
  public void setLiveDate(String paramString)
  {
    liveDate = paramString;
  }
  
  public void setNavCategoryId(String paramString)
  {
    navCategoryId = paramString;
  }
  
  public void setShowId(String paramString)
  {
    showId = paramString;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setTvplus(int paramInt)
  {
    tvplus = paramInt;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(title);
    paramParcel.writeString(createdDate);
    paramParcel.writeString(changedDate);
    paramParcel.writeInt(deviceRestriction);
    paramParcel.writeString(filepathShowLogo);
    paramParcel.writeString(filepathShowThumbnail);
    paramParcel.writeString(navCategoryId);
    paramParcel.writeString(liveDate);
    paramParcel.writeString(showId);
    paramParcel.writeString(type);
    paramParcel.writeInt(displayOrder);
    paramParcel.writeString(category);
    paramParcel.writeInt(tvplus);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Classic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */