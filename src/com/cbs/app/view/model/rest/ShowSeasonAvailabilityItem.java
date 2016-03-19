package com.cbs.app.view.model.rest;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowSeasonAvailabilityItem
  extends ResponseModel
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ShowSeasonAvailabilityItem> CREATOR = new Parcelable.Creator()
  {
    public final ShowSeasonAvailabilityItem createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ShowSeasonAvailabilityItem(paramAnonymousParcel);
    }
    
    public final ShowSeasonAvailabilityItem[] newArray(int paramAnonymousInt)
    {
      return new ShowSeasonAvailabilityItem[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 5919456840412499790L;
  @JsonProperty("clipsCount")
  private int clipsCount;
  @JsonProperty("delayCount")
  private int delayCount;
  @JsonProperty("premiumCount")
  private int premiumCount;
  @JsonProperty("seasonNum")
  private int seasonNum;
  @JsonProperty("totalCount")
  private int totalCount;
  
  public ShowSeasonAvailabilityItem() {}
  
  public ShowSeasonAvailabilityItem(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    seasonNum = paramParcel.readInt();
    premiumCount = paramParcel.readInt();
    clipsCount = paramParcel.readInt();
    totalCount = paramParcel.readInt();
    delayCount = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getClipsCount()
  {
    return clipsCount;
  }
  
  public int getDelayCount()
  {
    return delayCount;
  }
  
  public int getPremiumCount()
  {
    return premiumCount;
  }
  
  public int getSeasonNum()
  {
    return seasonNum;
  }
  
  public int getTotalCount()
  {
    return totalCount;
  }
  
  public void setClipsCount(int paramInt)
  {
    clipsCount = paramInt;
  }
  
  public void setDelayCount(int paramInt)
  {
    delayCount = paramInt;
  }
  
  public void setPremiumCount(int paramInt)
  {
    premiumCount = paramInt;
  }
  
  public void setSeasonNum(int paramInt)
  {
    seasonNum = paramInt;
  }
  
  public void setTotalCount(int paramInt)
  {
    totalCount = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(seasonNum);
    paramParcel.writeInt(premiumCount);
    paramParcel.writeInt(clipsCount);
    paramParcel.writeInt(totalCount);
    paramParcel.writeInt(delayCount);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowSeasonAvailabilityItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */