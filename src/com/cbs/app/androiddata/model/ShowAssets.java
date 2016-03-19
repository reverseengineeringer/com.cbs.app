package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowAssets
  implements Parcelable
{
  public static final Parcelable.Creator<ShowAssets> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("filepath_ott_sd_show_logo")
  public String a;
  @JsonProperty("filepath_ott_sd_show_image_overhang")
  public String b;
  @JsonProperty("filepath_ott_hd_show_image_overhang")
  public String c;
  @JsonProperty("filepath_ott_hd_show_logo")
  public String d;
  
  public ShowAssets() {}
  
  protected ShowAssets(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getFilepathOttHdShowImageOverhang()
  {
    return c;
  }
  
  public String getFilepathOttHdShowLogo()
  {
    return d;
  }
  
  public String getFilepathOttSdShowImageOverhang()
  {
    return b;
  }
  
  public String getFilepathOttSdShowLogo()
  {
    return a;
  }
  
  public void setFilepathOttHdShowImageOverhang(String paramString)
  {
    c = paramString;
  }
  
  public void setFilepathOttHdShowLogo(String paramString)
  {
    d = paramString;
  }
  
  public void setFilepathOttSdShowImageOverhang(String paramString)
  {
    b = paramString;
  }
  
  public void setFilepathOttSdShowLogo(String paramString)
  {
    a = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowAssets
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */