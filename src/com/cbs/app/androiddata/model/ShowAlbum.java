package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowAlbum
  implements Parcelable, Comparable<ShowAlbum>
{
  public static final Parcelable.Creator<ShowAlbum> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("id")
  private long a;
  @JsonProperty("type")
  private String b;
  @JsonProperty("album_id")
  private long c;
  @JsonProperty("show_id")
  private long d;
  @JsonProperty("created_date")
  private long e;
  @JsonProperty("title")
  private String f;
  @JsonProperty("description")
  private String g;
  @JsonProperty("photo_nids")
  private ArrayList<Long> h;
  @JsonProperty("filepath")
  private String i;
  @JsonProperty("keywordList")
  private ArrayList<String> j;
  @JsonProperty("week_number")
  private int k;
  @JsonProperty("gallery_type")
  private int l;
  @JsonProperty("total_photos")
  private int m;
  @JsonProperty("twitter")
  private String n;
  @JsonProperty("facebook")
  private String o;
  @JsonProperty("pub_year")
  private int p;
  @JsonProperty("live_date_sec")
  private long q;
  
  public ShowAlbum() {}
  
  public ShowAlbum(Parcel paramParcel)
  {
    a = paramParcel.readLong();
    b = paramParcel.readString();
    c = paramParcel.readLong();
    d = paramParcel.readLong();
    e = paramParcel.readLong();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readArrayList(Long.class.getClassLoader());
    i = paramParcel.readString();
    j = paramParcel.readArrayList(String.class.getClassLoader());
    k = paramParcel.readInt();
    l = paramParcel.readInt();
    m = paramParcel.readInt();
    n = paramParcel.readString();
    o = paramParcel.readString();
    p = paramParcel.readInt();
    q = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return (int)getId();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof ShowAlbum))
    {
      bool1 = bool2;
      if (((ShowAlbum)paramObject).getId() == a) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public long getAlbum_id()
  {
    return c;
  }
  
  public long getCreated_date()
  {
    return e;
  }
  
  public String getDescription()
  {
    return g;
  }
  
  public String getFacebook()
  {
    return o;
  }
  
  public String getFilepath()
  {
    return i;
  }
  
  public int getGallery_type()
  {
    return l;
  }
  
  public long getId()
  {
    return a;
  }
  
  public ArrayList<String> getKeywordList()
  {
    return j;
  }
  
  public long getLive_date_sec()
  {
    return q;
  }
  
  public ArrayList<Long> getPhoto_nids()
  {
    return h;
  }
  
  public int getPub_year()
  {
    return p;
  }
  
  public long getShow_id()
  {
    return d;
  }
  
  public String getTitle()
  {
    return f;
  }
  
  public int getTotal_photos()
  {
    return m;
  }
  
  public String getTwitter()
  {
    return n;
  }
  
  public String getType()
  {
    return b;
  }
  
  public int getWeek_number()
  {
    return k;
  }
  
  public int hashCode()
  {
    return 49;
  }
  
  public void setAlbum_id(long paramLong)
  {
    c = paramLong;
  }
  
  public void setCreated_date(long paramLong)
  {
    e = paramLong;
  }
  
  public void setDescription(String paramString)
  {
    g = paramString;
  }
  
  public void setFacebook(String paramString)
  {
    o = paramString;
  }
  
  public void setFilepath(String paramString)
  {
    i = paramString;
  }
  
  public void setGallery_type(int paramInt)
  {
    l = paramInt;
  }
  
  public void setId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setKeywordList(ArrayList<String> paramArrayList)
  {
    j = paramArrayList;
  }
  
  public void setLive_date_sec(long paramLong)
  {
    q = paramLong;
  }
  
  public void setPhoto_nids(ArrayList<Long> paramArrayList)
  {
    h = paramArrayList;
  }
  
  public void setPub_year(int paramInt)
  {
    p = paramInt;
  }
  
  public void setShow_id(long paramLong)
  {
    d = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    f = paramString;
  }
  
  public void setTotal_photos(int paramInt)
  {
    m = paramInt;
  }
  
  public void setTwitter(String paramString)
  {
    n = paramString;
  }
  
  public void setType(String paramString)
  {
    b = paramString;
  }
  
  public void setWeek_number(int paramInt)
  {
    k = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(a);
    paramParcel.writeString(b);
    paramParcel.writeLong(c);
    paramParcel.writeLong(d);
    paramParcel.writeLong(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeList(h);
    paramParcel.writeString(i);
    paramParcel.writeList(j);
    paramParcel.writeInt(k);
    paramParcel.writeInt(l);
    paramParcel.writeInt(m);
    paramParcel.writeString(n);
    paramParcel.writeString(o);
    paramParcel.writeInt(p);
    paramParcel.writeLong(q);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowAlbum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */