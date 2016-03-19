package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Show
  implements Parcelable
{
  public static final Parcelable.Creator<Show> CREATOR = new Parcelable.Creator() {};
  private String a;
  private long b;
  @JsonProperty("show_id")
  private long c;
  private String d;
  private String e;
  @JsonProperty("category_id")
  private String f;
  private String g;
  private String h;
  private String i;
  private long j;
  @JsonProperty("tune_in_time")
  private String k;
  private String l;
  @JsonProperty("show_thumbnail")
  private String m;
  @JsonProperty("filepath_show_thumbnail")
  private String n;
  @JsonProperty("filepath_show_connect_img")
  private String o;
  @JsonProperty("filepath_win8_showart_large")
  private String p;
  @JsonProperty("filepath_global_nav_logo")
  private String q;
  private List<String> r;
  
  public Show() {}
  
  protected Show(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readLong();
    c = paramParcel.readLong();
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readString();
    i = paramParcel.readString();
    j = paramParcel.readLong();
    k = paramParcel.readString();
    l = paramParcel.readString();
    m = paramParcel.readString();
    n = paramParcel.readString();
    o = paramParcel.readString();
    p = paramParcel.readString();
    q = paramParcel.readString();
    r = paramParcel.createStringArrayList();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAbout()
  {
    return e;
  }
  
  public String getCategory()
  {
    return l;
  }
  
  public String getCategoryId()
  {
    return f;
  }
  
  public String getFilepathGlobalNavLogo()
  {
    return q;
  }
  
  public String getFilepathShowConnectImg()
  {
    return o;
  }
  
  public String getFilepathShowThumbnail()
  {
    return n;
  }
  
  public String getFilepathWin8ShowartLarge()
  {
    return p;
  }
  
  public long getId()
  {
    return b;
  }
  
  public String getK()
  {
    return h;
  }
  
  public List<String> getKeywordList()
  {
    return r;
  }
  
  public String getKeywords()
  {
    return a;
  }
  
  public String getLink()
  {
    return d;
  }
  
  public long getSeason()
  {
    return j;
  }
  
  public long getShowId()
  {
    return c;
  }
  
  public String getTitle()
  {
    return i;
  }
  
  public String getTuneInTime()
  {
    return k;
  }
  
  public String getType()
  {
    return g;
  }
  
  public void setAbout(String paramString)
  {
    e = paramString;
  }
  
  public void setCategory(String paramString)
  {
    l = paramString;
  }
  
  public void setCategoryId(String paramString)
  {
    f = paramString;
  }
  
  public void setFilepathGlobalNavLogo(String paramString)
  {
    q = paramString;
  }
  
  public void setFilepathShowConnectImg(String paramString)
  {
    o = paramString;
  }
  
  public void setFilepathShowThumbnail(String paramString)
  {
    n = paramString;
  }
  
  public void setFilepathWin8ShowartLarge(String paramString)
  {
    p = paramString;
  }
  
  public void setId(long paramLong)
  {
    b = paramLong;
  }
  
  public void setK(String paramString)
  {
    h = paramString;
  }
  
  public void setKeywordList(List<String> paramList)
  {
    r = paramList;
  }
  
  public void setKeywords(String paramString)
  {
    a = paramString;
  }
  
  public void setLink(String paramString)
  {
    d = paramString;
  }
  
  public void setSeason(long paramLong)
  {
    j = paramLong;
  }
  
  public void setShowId(long paramLong)
  {
    c = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    i = paramString;
  }
  
  public void setTuneInTime(String paramString)
  {
    k = paramString;
  }
  
  public void setType(String paramString)
  {
    g = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeLong(b);
    paramParcel.writeLong(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeString(i);
    paramParcel.writeLong(j);
    paramParcel.writeString(k);
    paramParcel.writeString(l);
    paramParcel.writeString(m);
    paramParcel.writeString(n);
    paramParcel.writeString(o);
    paramParcel.writeString(p);
    paramParcel.writeString(q);
    paramParcel.writeStringList(r);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.Show
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */