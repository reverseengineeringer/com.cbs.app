package com.cbs.app.view.fragments.show.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowAssets
  implements Parcelable
{
  public static final Parcelable.Creator<ShowAssets> CREATOR = new Parcelable.Creator()
  {
    public final ShowAssets createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ShowAssets(paramAnonymousParcel);
    }
    
    public final ShowAssets[] newArray(int paramAnonymousInt)
    {
      return new ShowAssets[paramAnonymousInt];
    }
  };
  @JsonProperty("filepath_mycbs_show_image")
  public String filePathMycbsShowImage;
  
  public ShowAssets() {}
  
  public ShowAssets(Parcel paramParcel)
  {
    filePathMycbsShowImage = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(filePathMycbsShowImage);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.model.ShowAssets
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */