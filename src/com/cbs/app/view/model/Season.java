package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Season
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<Season> CREATOR = new Parcelable.Creator()
  {
    public final Season createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Season(paramAnonymousParcel);
    }
    
    public final Season[] newArray(int paramAnonymousInt)
    {
      return new Season[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = -7625239033275897856L;
  @JsonProperty("groupShotFilepath")
  private String groupShotFilepath;
  @JsonProperty("id")
  private String id;
  @JsonProperty("season_number")
  private int seasonNumber;
  @JsonProperty("show_id")
  private String showId;
  @JsonProperty("show_title")
  private String showTitle;
  @JsonProperty("title")
  private String title;
  @JsonProperty("type")
  private String type;
  
  public Season() {}
  
  public Season(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readString();
    type = paramParcel.readString();
    showId = paramParcel.readString();
    title = paramParcel.readString();
    showTitle = paramParcel.readString();
    seasonNumber = paramParcel.readInt();
    groupShotFilepath = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getGroupShotFilepath()
  {
    return groupShotFilepath;
  }
  
  public String getId()
  {
    return id;
  }
  
  public int getSeasonNumber()
  {
    return seasonNumber;
  }
  
  public String getShowId()
  {
    return showId;
  }
  
  public String getShowTitle()
  {
    return showTitle;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getType()
  {
    return type;
  }
  
  public void setGroupShotFilepath(String paramString)
  {
    groupShotFilepath = paramString;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setSeasonNumber(int paramInt)
  {
    seasonNumber = paramInt;
  }
  
  public void setShowId(String paramString)
  {
    showId = paramString;
  }
  
  public void setShowTitle(String paramString)
  {
    showTitle = paramString;
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
    paramParcel.writeString(id);
    paramParcel.writeString(type);
    paramParcel.writeString(showId);
    paramParcel.writeString(title);
    paramParcel.writeString(showTitle);
    paramParcel.writeInt(seasonNumber);
    paramParcel.writeString(groupShotFilepath);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Season
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */