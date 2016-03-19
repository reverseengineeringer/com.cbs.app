package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Season
  implements Parcelable
{
  public static final Parcelable.Creator<Season> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("id")
  private String a;
  @JsonProperty("type")
  private String b;
  @JsonProperty("show_id")
  private String c;
  @JsonProperty("title")
  private String d;
  @JsonProperty("show_title")
  private String e;
  @JsonProperty("season_number")
  private int f;
  @JsonProperty("groupShotFilepath")
  private String g;
  
  public Season() {}
  
  public Season(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readInt();
    g = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getGroupShotFilepath()
  {
    return g;
  }
  
  public String getId()
  {
    return a;
  }
  
  public int getSeasonNumber()
  {
    return f;
  }
  
  public String getShowId()
  {
    return c;
  }
  
  public String getShowTitle()
  {
    return e;
  }
  
  public String getTitle()
  {
    return d;
  }
  
  public String getType()
  {
    return b;
  }
  
  public void setGroupShotFilepath(String paramString)
  {
    g = paramString;
  }
  
  public void setId(String paramString)
  {
    a = paramString;
  }
  
  public void setSeasonNumber(int paramInt)
  {
    f = paramInt;
  }
  
  public void setShowId(String paramString)
  {
    c = paramString;
  }
  
  public void setShowTitle(String paramString)
  {
    e = paramString;
  }
  
  public void setTitle(String paramString)
  {
    d = paramString;
  }
  
  public void setType(String paramString)
  {
    b = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeInt(f);
    paramParcel.writeString(g);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.Season
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */