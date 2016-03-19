package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cbs.app.androiddata.LG;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoData
  implements Parcelable, Comparable<VideoData>
{
  public static final Parcelable.Creator<VideoData> CREATOR = new Parcelable.Creator() {};
  private static final String a = VideoData.class.getSimpleName();
  private boolean A = false;
  @JsonProperty("pid")
  private String b;
  @JsonProperty("contentId")
  private String c;
  @JsonProperty("cbsShowId")
  private long d;
  @JsonProperty("deviceType")
  private String e;
  @JsonProperty("genre")
  private String f;
  @JsonProperty("topLevelCategory")
  private String g;
  @JsonProperty("category")
  private String h;
  @JsonProperty("fullEpisode")
  private boolean i;
  @JsonProperty("exclusive")
  private boolean j;
  @JsonProperty("airDate")
  private long k;
  @JsonProperty("_airDate")
  private String l;
  @JsonProperty("_pubDate")
  private String m;
  @JsonProperty("duration")
  private long n;
  private String o;
  private String p;
  @JsonProperty("title")
  private String q;
  @JsonProperty("url")
  private String r;
  @JsonProperty("description")
  private String s;
  @JsonProperty("rating")
  private String t;
  private int u;
  private String v;
  @JsonProperty("thumbnail")
  private String w;
  @JsonProperty("status")
  private String x;
  @JsonProperty("subscriptionLevel")
  private String y;
  @JsonProperty("thumbnailSet")
  private ArrayList<Thumbnail> z = null;
  
  public VideoData() {}
  
  protected VideoData(Parcel paramParcel)
  {
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readLong();
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readString();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      i = bool1;
      if (paramParcel.readByte() == 0) {
        break label251;
      }
      bool1 = true;
      label95:
      j = bool1;
      k = paramParcel.readLong();
      l = paramParcel.readString();
      m = paramParcel.readString();
      n = paramParcel.readLong();
      o = paramParcel.readString();
      p = paramParcel.readString();
      q = paramParcel.readString();
      r = paramParcel.readString();
      s = paramParcel.readString();
      t = paramParcel.readString();
      u = paramParcel.readInt();
      v = paramParcel.readString();
      w = paramParcel.readString();
      x = paramParcel.readString();
      y = paramParcel.readString();
      z = paramParcel.createTypedArrayList(Thumbnail.CREATOR);
      if (paramParcel.readByte() == 0) {
        break label256;
      }
    }
    label251:
    label256:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      A = bool1;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label95;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof VideoData))
    {
      bool1 = bool2;
      if (((VideoData)paramObject).getCid().equals(getCid())) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public long getAirDate()
  {
    return k;
  }
  
  public String getAirDateStr()
  {
    return l;
  }
  
  public String getCategory()
  {
    return h;
  }
  
  public long getCbsShowId()
  {
    return d;
  }
  
  public String getCid()
  {
    return c;
  }
  
  public String getContentId()
  {
    return c;
  }
  
  public String getDescription()
  {
    return s;
  }
  
  public String getDeviceType()
  {
    return e;
  }
  
  public String getDisplayTitle()
  {
    String str2 = getLabel();
    String str1 = str2;
    if (getTopLevelCategory() != null)
    {
      str1 = str2;
      if (getTopLevelCategory().equals("News")) {
        str1 = getTitle();
      }
    }
    return str1;
  }
  
  public long getDuration()
  {
    return n;
  }
  
  public String getEpisodeNum()
  {
    return v;
  }
  
  public String getEpisodeString()
  {
    int i1 = getSeasonNum();
    String str1;
    if (getSeasonNum() != 0)
    {
      str1 = "S" + i1;
      str2 = getEpisodeNum();
      if ((str2 == null) || (str2.equals("")) || (str2.equals("0"))) {
        break label98;
      }
    }
    label98:
    for (String str2 = " Ep" + str2;; str2 = "")
    {
      return str1 + str2;
      str1 = "";
      break;
    }
  }
  
  public boolean getFullEpisode()
  {
    return i;
  }
  
  public String getGenre()
  {
    return f;
  }
  
  public String getLabel()
  {
    return p;
  }
  
  public String getPid()
  {
    return b;
  }
  
  public String getPubDateStr()
  {
    return m;
  }
  
  public String getRating()
  {
    return t;
  }
  
  public int getSeasonNum()
  {
    return u;
  }
  
  public String getSeriesTitle()
  {
    return o;
  }
  
  public String getStatus()
  {
    return x;
  }
  
  public String getSubscriptionLevel()
  {
    return y;
  }
  
  public String getThumbnail()
  {
    return w;
  }
  
  public List<Thumbnail> getThumbnailSet()
  {
    return z;
  }
  
  public String getTitle()
  {
    return q;
  }
  
  public String getTopLevelCategory()
  {
    return g;
  }
  
  public String getUrl()
  {
    return r;
  }
  
  public String getVideoThumbnailUrl()
  {
    String str2 = getThumbnail();
    List localList = getThumbnailSet();
    String str1 = str2;
    if (localList != null)
    {
      str1 = str2;
      if (localList.size() > 0)
      {
        Collections.sort(localList, new Comparator() {});
        str1 = ((Thumbnail)localList.get(0)).getUrl();
      }
    }
    new StringBuilder("resource: ").append(str1);
    LG.a();
    return str1;
  }
  
  public int hashCode()
  {
    return 51;
  }
  
  public void setAirDate(long paramLong)
  {
    k = paramLong;
  }
  
  public void setAirDateStr(String paramString)
  {
    l = paramString;
  }
  
  public void setCbsShowId(long paramLong)
  {
    d = paramLong;
  }
  
  public void setCid(String paramString)
  {
    c = paramString;
  }
  
  public void setDescription(String paramString)
  {
    s = paramString;
  }
  
  public void setDeviceType(String paramString)
  {
    e = paramString;
  }
  
  public void setEpisodeNum(String paramString)
  {
    v = paramString;
  }
  
  public void setFromMyCBS(boolean paramBoolean)
  {
    A = paramBoolean;
  }
  
  public void setFullEpisode(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void setLabel(String paramString)
  {
    p = paramString;
  }
  
  public void setPid(String paramString)
  {
    b = paramString;
  }
  
  public void setSeasonNum(int paramInt)
  {
    u = paramInt;
  }
  
  public void setSeriesTitle(String paramString)
  {
    o = paramString;
  }
  
  public void setStatus(String paramString)
  {
    x = paramString;
  }
  
  public void setSubscriptionLevel(String paramString)
  {
    y = paramString;
  }
  
  public void setThumbnail(String paramString)
  {
    w = paramString;
  }
  
  public void setThumbnailSet(ArrayList<Thumbnail> paramArrayList)
  {
    z = paramArrayList;
  }
  
  public void setTitle(String paramString)
  {
    q = paramString;
  }
  
  public void setTopLevelCategory(String paramString)
  {
    g = paramString;
  }
  
  public void setUrl(String paramString)
  {
    r = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeLong(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    if (i)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      if (!j) {
        break label236;
      }
      b1 = 1;
      label82:
      paramParcel.writeByte(b1);
      paramParcel.writeLong(k);
      paramParcel.writeString(l);
      paramParcel.writeString(m);
      paramParcel.writeLong(n);
      paramParcel.writeString(o);
      paramParcel.writeString(p);
      paramParcel.writeString(q);
      paramParcel.writeString(r);
      paramParcel.writeString(s);
      paramParcel.writeString(t);
      paramParcel.writeInt(u);
      paramParcel.writeString(v);
      paramParcel.writeString(w);
      paramParcel.writeString(x);
      paramParcel.writeString(y);
      paramParcel.writeTypedList(z);
      if (!A) {
        break label241;
      }
    }
    label236:
    label241:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      return;
      b1 = 0;
      break;
      b1 = 0;
      break label82;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.VideoData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */