package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cbs.app.androiddata.model.rest.VideoSection;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoGroup
  implements Parcelable
{
  public static final Parcelable.Creator<VideoGroup> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("sectionTitle")
  private String a;
  @JsonProperty("sectionItems")
  private VideoSection b;
  @JsonProperty("query")
  private String c;
  @JsonProperty("id")
  private long d;
  @JsonProperty("layout_type")
  private String e;
  @JsonProperty("display_seasons")
  private boolean f;
  @JsonProperty("viewing_window")
  private boolean g;
  @JsonProperty("section_type")
  private String h;
  @JsonProperty("seasons_sort_order")
  private String i;
  @JsonProperty("seasons_default")
  private String j;
  
  public VideoGroup() {}
  
  private VideoGroup(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = ((VideoSection)paramParcel.readParcelable(VideoSection.class.getClassLoader()));
    c = paramParcel.readString();
    d = paramParcel.readLong();
    e = paramParcel.readString();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      f = bool1;
      if (paramParcel.readByte() == 0) {
        break label112;
      }
    }
    label112:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      g = bool1;
      h = paramParcel.readString();
      i = paramParcel.readString();
      j = paramParcel.readString();
      return;
      bool1 = false;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getId()
  {
    return d;
  }
  
  public String getLayoutType()
  {
    return e;
  }
  
  public String getQuery()
  {
    return c;
  }
  
  public String getSeasonsDefault()
  {
    return j;
  }
  
  public String getSeasonsSortOrder()
  {
    return i;
  }
  
  public VideoSection getSectionItems()
  {
    return b;
  }
  
  public String getSectionTitle()
  {
    return a;
  }
  
  public String getSectionType()
  {
    return h;
  }
  
  public void setDisplaySeasons(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void setId(long paramLong)
  {
    d = paramLong;
  }
  
  public void setLayoutType(String paramString)
  {
    e = paramString;
  }
  
  public void setQuery(String paramString)
  {
    c = paramString;
  }
  
  public void setSeasonsDefault(String paramString)
  {
    j = paramString;
  }
  
  public void setSeasonsSortOrder(String paramString)
  {
    i = paramString;
  }
  
  public void setSectionItems(VideoSection paramVideoSection)
  {
    b = paramVideoSection;
  }
  
  public void setSectionTitle(String paramString)
  {
    a = paramString;
  }
  
  public void setSectionType(String paramString)
  {
    h = paramString;
  }
  
  public void setViewingWindow(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeString(a);
    paramParcel.writeParcelable(b, 0);
    paramParcel.writeString(c);
    paramParcel.writeLong(d);
    paramParcel.writeString(e);
    if (f)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      if (!g) {
        break label103;
      }
    }
    label103:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      paramParcel.writeString(h);
      paramParcel.writeString(i);
      paramParcel.writeString(j);
      return;
      b1 = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.VideoGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */