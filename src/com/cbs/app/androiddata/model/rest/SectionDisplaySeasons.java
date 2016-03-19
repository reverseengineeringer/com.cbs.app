package com.cbs.app.androiddata.model.rest;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SectionDisplaySeasons
  implements Parcelable
{
  public static final Parcelable.Creator<SectionDisplaySeasons> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("sectionId")
  private long a;
  @JsonProperty("isDisplaySeason")
  private boolean b;
  
  public SectionDisplaySeasons() {}
  
  public SectionDisplaySeasons(Parcel paramParcel)
  {
    a = paramParcel.readLong();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      b = bool;
      return;
      bool = false;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(a);
    if (b) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.SectionDisplaySeasons
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */