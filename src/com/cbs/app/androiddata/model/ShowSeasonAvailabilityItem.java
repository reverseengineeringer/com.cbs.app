package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowSeasonAvailabilityItem
  implements Parcelable
{
  public static final Parcelable.Creator<ShowSeasonAvailabilityItem> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("seasonNum")
  private int a;
  
  public ShowSeasonAvailabilityItem() {}
  
  public ShowSeasonAvailabilityItem(Parcel paramParcel)
  {
    a = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getSeasonNum()
  {
    return a;
  }
  
  public void setSeasonNum(int paramInt)
  {
    a = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowSeasonAvailabilityItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */