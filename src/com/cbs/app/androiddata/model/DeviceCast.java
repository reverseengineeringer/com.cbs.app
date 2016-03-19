package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class DeviceCast
  implements Parcelable
{
  public static final Parcelable.Creator<DeviceCast> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("id")
  private int a;
  @JsonProperty("title")
  private String b;
  @JsonProperty("charecter_name")
  private String c;
  @JsonProperty("charecter_bio")
  private String d;
  @JsonProperty("show_id")
  private Integer e;
  @JsonProperty("twitter_screen_name")
  private String f;
  @JsonProperty("season")
  private int g;
  @JsonProperty("keywords")
  private List<String> h;
  @JsonProperty("bio_type")
  private String i;
  @JsonProperty("bio")
  private String j;
  @JsonProperty("display_order")
  private int k;
  @JsonProperty("filepath_iphone_thumb")
  private List<String> l;
  @JsonProperty("filepath_iphone_cast_carousel")
  private List<String> m;
  @JsonProperty("filepath_ipad_thumb")
  private List<String> n;
  @JsonProperty("filepath_ipad_cast_carousel_land")
  private List<String> o;
  @JsonProperty("filepath_ipad_cast_carousel_port")
  private List<String> p;
  
  public DeviceCast() {}
  
  public DeviceCast(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = Integer.valueOf(paramParcel.readInt());
    f = paramParcel.readString();
    g = paramParcel.readInt();
    h = paramParcel.readArrayList(String.class.getClassLoader());
    i = paramParcel.readString();
    j = paramParcel.readString();
    k = paramParcel.readInt();
    paramParcel.readList(l, String.class.getClassLoader());
    paramParcel.readList(m, String.class.getClassLoader());
    paramParcel.readList(m, String.class.getClassLoader());
    paramParcel.readList(o, String.class.getClassLoader());
    paramParcel.readList(p, String.class.getClassLoader());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBio()
  {
    return j;
  }
  
  public String getBioType()
  {
    return i;
  }
  
  public String getCharacterBio()
  {
    return d;
  }
  
  public String getCharacterName()
  {
    return c;
  }
  
  public int getDisplayOrder()
  {
    return k;
  }
  
  public List<String> getFilepathIPadCastCarouselLandscape()
  {
    return o;
  }
  
  public List<String> getFilepathIPadCastCarouselPortrait()
  {
    return p;
  }
  
  public List<String> getFilepathIPadThumb()
  {
    return n;
  }
  
  public List<String> getFilepathIPhoneCastCarousel()
  {
    return m;
  }
  
  public List<String> getFilepathIPhoneThumb()
  {
    return l;
  }
  
  public int getId()
  {
    return a;
  }
  
  public List<String> getKeywordList()
  {
    return h;
  }
  
  public int getSeasonNumber()
  {
    return g;
  }
  
  public Integer getShowId()
  {
    return e;
  }
  
  public String getTitle()
  {
    return b;
  }
  
  public String getTwitterScreenName()
  {
    return f;
  }
  
  public void setBio(String paramString)
  {
    j = paramString;
  }
  
  public void setBioType(String paramString)
  {
    i = paramString;
  }
  
  public void setCharacterBio(String paramString)
  {
    d = paramString;
  }
  
  public void setCharacterName(String paramString)
  {
    c = paramString;
  }
  
  public void setDisplayOrder(int paramInt)
  {
    k = paramInt;
  }
  
  public void setFilepathIPadCastCarouselLandscape(List<String> paramList)
  {
    o = paramList;
  }
  
  public void setFilepathIPadCastCarouselPortrait(List<String> paramList)
  {
    p = paramList;
  }
  
  public void setFilepathIPadThumb(List<String> paramList)
  {
    n = paramList;
  }
  
  public void setFilepathIPhoneCastCarousel(List<String> paramList)
  {
    m = paramList;
  }
  
  public void setFilepathIPhoneThumb(List<String> paramList)
  {
    l = paramList;
  }
  
  public void setId(int paramInt)
  {
    a = paramInt;
  }
  
  public void setKeywordList(List<String> paramList)
  {
    h = paramList;
  }
  
  public void setSeasonNumber(int paramInt)
  {
    g = paramInt;
  }
  
  public void setShowId(Integer paramInteger)
  {
    e = paramInteger;
  }
  
  public void setTitle(String paramString)
  {
    b = paramString;
  }
  
  public void setTwitterScreenName(String paramString)
  {
    f = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeInt(e.intValue());
    paramParcel.writeString(f);
    paramParcel.writeInt(g);
    paramParcel.writeList(h);
    paramParcel.writeString(i);
    paramParcel.writeString(j);
    paramParcel.writeInt(k);
    paramParcel.writeList(l);
    paramParcel.writeList(m);
    paramParcel.writeList(n);
    paramParcel.writeList(o);
    paramParcel.writeList(p);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.DeviceCast
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */