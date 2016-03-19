package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowConfigResult
  implements Parcelable, Comparable<ShowConfigResult>
{
  public static final Parcelable.Creator<ShowConfigResult> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("items_per_page")
  private long A;
  @JsonProperty("twitter_hash_tag")
  private String B;
  @JsonProperty("id")
  private long a;
  @JsonProperty("show_id")
  private String b;
  @JsonProperty("title")
  private String c;
  @JsonProperty("massrelevance_url")
  private String d;
  @JsonProperty("k")
  private String e;
  @JsonProperty("display_order")
  private long f;
  @JsonProperty("tvplus")
  private long g;
  @JsonProperty("tvplus_id")
  private String h;
  @JsonProperty("facebook_link")
  private String i;
  @JsonProperty("twitter_link")
  private String j;
  @JsonProperty("google_plus_one")
  private String k;
  @JsonProperty("massrelevance_keyword")
  private String l;
  @JsonProperty("massrelevance_keyword_array")
  private ArrayList<String> m;
  @JsonProperty("vudu_buy_link")
  private String n;
  @JsonProperty("amazon_buy_link")
  private String o;
  @JsonProperty("itunes_buy_link")
  private String p;
  @JsonProperty("eyecon_show_title")
  private String q;
  @JsonProperty("photos_per_page")
  private long r;
  @JsonProperty("video_sort_direction")
  private String s;
  @JsonProperty("photo_browse")
  private String t;
  @JsonProperty("video_sort_order")
  private String u;
  @JsonProperty("show_category")
  private long v;
  @JsonProperty("promos_per_page")
  private long w;
  @JsonProperty("video_playlist_type")
  private String x;
  @JsonProperty("cachup_grey_filepath")
  private String y;
  @JsonProperty("catchup_filepath")
  private String z;
  
  public ShowConfigResult() {}
  
  public ShowConfigResult(Parcel paramParcel)
  {
    a = paramParcel.readLong();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readLong();
    g = paramParcel.readLong();
    h = paramParcel.readString();
    i = paramParcel.readString();
    j = paramParcel.readString();
    k = paramParcel.readString();
    l = paramParcel.readString();
    m = paramParcel.readArrayList(String.class.getClassLoader());
    n = paramParcel.readString();
    o = paramParcel.readString();
    p = paramParcel.readString();
    q = paramParcel.readString();
    r = paramParcel.readLong();
    s = paramParcel.readString();
    t = paramParcel.readString();
    u = paramParcel.readString();
    v = paramParcel.readLong();
    w = paramParcel.readLong();
    x = paramParcel.readString();
    z = paramParcel.readString();
    y = paramParcel.readString();
    A = paramParcel.readLong();
    B = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof ShowConfigResult))
    {
      bool1 = bool2;
      if (a == a) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String getAmazonBuyLink()
  {
    return o;
  }
  
  public String getCachupFilepath()
  {
    return z;
  }
  
  public String getCachupGreyFilepath()
  {
    return y;
  }
  
  public long getDisplayOrder()
  {
    return f;
  }
  
  public String getEyeconShowTitle()
  {
    return q;
  }
  
  public String getFacebookLink()
  {
    return i;
  }
  
  public String getGooglePlusOne()
  {
    return k;
  }
  
  public long getId()
  {
    return a;
  }
  
  public long getItemsPerPage()
  {
    return A;
  }
  
  public String getItunesBuyLink()
  {
    return p;
  }
  
  public String getK()
  {
    return e;
  }
  
  public String getMassRelevanceUrl()
  {
    return d;
  }
  
  public String getMassrelevanceKeyword()
  {
    return l;
  }
  
  public ArrayList<String> getMassrelevanceKeywordArray()
  {
    return m;
  }
  
  public String getPhotoBrowse()
  {
    return t;
  }
  
  public long getPhotosPerPage()
  {
    return r;
  }
  
  public long getPromosPerPage()
  {
    return w;
  }
  
  public long getShowCategory()
  {
    return v;
  }
  
  public String getShowId()
  {
    return b;
  }
  
  public String getTitle()
  {
    return c;
  }
  
  public long getTvPlus()
  {
    return g;
  }
  
  public String getTvPlusId()
  {
    return h;
  }
  
  public String getTwitterHashTag()
  {
    return B;
  }
  
  public String getTwitterLink()
  {
    return j;
  }
  
  public String getVideoPlaylistType()
  {
    return x;
  }
  
  public String getVideoSortDirection()
  {
    return s;
  }
  
  public String getVideoSortOrder()
  {
    return u;
  }
  
  public String getVuduBuyLink()
  {
    return n;
  }
  
  public int hashCode()
  {
    return 50;
  }
  
  public void setAmazonBuyLink(String paramString)
  {
    o = paramString;
  }
  
  public void setCachupFilepath(String paramString)
  {
    z = paramString;
  }
  
  public void setCachupGreyFilepath(String paramString)
  {
    y = paramString;
  }
  
  public void setDisplayOrder(long paramLong)
  {
    f = paramLong;
  }
  
  public void setEyeconShowTitle(String paramString)
  {
    q = paramString;
  }
  
  public void setFacebookLink(String paramString)
  {
    i = paramString;
  }
  
  public void setGooglePlusOne(String paramString)
  {
    k = paramString;
  }
  
  public void setId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setItemsPerPage(long paramLong)
  {
    A = paramLong;
  }
  
  public void setItunesBuyLink(String paramString)
  {
    p = paramString;
  }
  
  public void setK(String paramString)
  {
    e = paramString;
  }
  
  public void setMassRelevanceUrl(String paramString)
  {
    d = paramString;
  }
  
  public void setMassrelevanceKeyword(String paramString)
  {
    l = paramString;
  }
  
  public void setMassrelevanceKeywordArray(ArrayList<String> paramArrayList)
  {
    m = paramArrayList;
  }
  
  public void setPhotoBrowse(String paramString)
  {
    t = paramString;
  }
  
  public void setPhotosPerPage(long paramLong)
  {
    r = paramLong;
  }
  
  public void setPromosPerPage(long paramLong)
  {
    w = paramLong;
  }
  
  public void setShowCategory(long paramLong)
  {
    v = paramLong;
  }
  
  public void setShowId(String paramString)
  {
    b = paramString;
  }
  
  public void setTitle(String paramString)
  {
    c = paramString;
  }
  
  public void setTvPlus(long paramLong)
  {
    g = paramLong;
  }
  
  public void setTvPlusId(String paramString)
  {
    h = paramString;
  }
  
  public void setTwitterHashTag(String paramString)
  {
    B = paramString;
  }
  
  public void setTwitterLink(String paramString)
  {
    j = paramString;
  }
  
  public void setVideoPlaylistType(String paramString)
  {
    x = paramString;
  }
  
  public void setVideoSortDirection(String paramString)
  {
    s = paramString;
  }
  
  public void setVideoSortOrder(String paramString)
  {
    u = paramString;
  }
  
  public void setVuduBuyLink(String paramString)
  {
    n = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeLong(f);
    paramParcel.writeLong(g);
    paramParcel.writeString(h);
    paramParcel.writeString(i);
    paramParcel.writeString(j);
    paramParcel.writeString(k);
    paramParcel.writeString(l);
    paramParcel.writeList(m);
    paramParcel.writeString(n);
    paramParcel.writeString(o);
    paramParcel.writeString(p);
    paramParcel.writeString(q);
    paramParcel.writeLong(r);
    paramParcel.writeString(s);
    paramParcel.writeString(t);
    paramParcel.writeString(u);
    paramParcel.writeLong(v);
    paramParcel.writeLong(w);
    paramParcel.writeString(x);
    paramParcel.writeString(z);
    paramParcel.writeString(y);
    paramParcel.writeLong(A);
    paramParcel.writeString(B);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowConfigResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */