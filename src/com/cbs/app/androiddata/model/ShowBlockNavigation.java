package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowBlockNavigation
  implements Parcelable
{
  public static final Parcelable.Creator<ShowBlockNavigation> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("k")
  private String a;
  @JsonProperty("type")
  private String b;
  @JsonProperty("id")
  private int c;
  @JsonProperty("title")
  private String d;
  @JsonProperty("createdDate")
  private long e;
  @JsonProperty("_createdDate")
  private String f;
  @JsonProperty("changedDate")
  private long g;
  @JsonProperty("_changedDate")
  private String h;
  @JsonProperty("liveDate")
  private long i;
  @JsonProperty("_liveDate")
  private String j;
  @JsonProperty("expireDate")
  private long k;
  @JsonProperty("_expireDate")
  private String l;
  @JsonProperty("showId")
  private long m;
  @JsonProperty("navigationType")
  private String n;
  @JsonProperty("platform")
  private String o;
  @JsonProperty("icon")
  private String p;
  @JsonProperty("label")
  private String q;
  @JsonProperty("url")
  private String r;
  @JsonProperty("cbssolrType")
  private String s;
  
  public ShowBlockNavigation() {}
  
  public ShowBlockNavigation(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readInt();
    d = paramParcel.readString();
    e = paramParcel.readLong();
    f = paramParcel.readString();
    g = paramParcel.readLong();
    h = paramParcel.readString();
    i = paramParcel.readLong();
    j = paramParcel.readString();
    k = paramParcel.readLong();
    l = paramParcel.readString();
    m = paramParcel.readLong();
    n = paramParcel.readString();
    o = paramParcel.readString();
    p = paramParcel.readString();
    q = paramParcel.readString();
    r = paramParcel.readString();
    s = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCbssolrType()
  {
    return s;
  }
  
  public long getChangedDate()
  {
    return g;
  }
  
  public String getChangedDateString()
  {
    return h;
  }
  
  public long getCreatedDate()
  {
    return e;
  }
  
  public String getCreatedDateString()
  {
    return f;
  }
  
  public long getExpireDate()
  {
    return k;
  }
  
  public String getExpireDateString()
  {
    return l;
  }
  
  public String getIcon()
  {
    return p;
  }
  
  public int getId()
  {
    return c;
  }
  
  public String getK()
  {
    return a;
  }
  
  public String getLabel()
  {
    return q;
  }
  
  public long getLiveDate()
  {
    return i;
  }
  
  public String getLiveDateString()
  {
    return j;
  }
  
  public String getNavigationType()
  {
    return n;
  }
  
  public String getPlatform()
  {
    return o;
  }
  
  public long getShowId()
  {
    return m;
  }
  
  public String getTitle()
  {
    return d;
  }
  
  public String getType()
  {
    return b;
  }
  
  public String getUrl()
  {
    return r;
  }
  
  public void setCbssolrType(String paramString)
  {
    s = paramString;
  }
  
  public void setChangedDate(long paramLong)
  {
    g = paramLong;
  }
  
  public void setChangedDateString(String paramString)
  {
    h = paramString;
  }
  
  public void setCreatedDate(long paramLong)
  {
    e = paramLong;
  }
  
  public void setCreatedDateString(String paramString)
  {
    f = paramString;
  }
  
  public void setExpireDate(long paramLong)
  {
    k = paramLong;
  }
  
  public void setExpireDateString(String paramString)
  {
    l = paramString;
  }
  
  public void setIcon(String paramString)
  {
    p = paramString;
  }
  
  public void setId(int paramInt)
  {
    c = paramInt;
  }
  
  public void setK(String paramString)
  {
    a = paramString;
  }
  
  public void setLabel(String paramString)
  {
    q = paramString;
  }
  
  public void setLiveDate(long paramLong)
  {
    i = paramLong;
  }
  
  public void setLiveDateString(String paramString)
  {
    j = paramString;
  }
  
  public void setNavigationType(String paramString)
  {
    n = paramString;
  }
  
  public void setPlatform(String paramString)
  {
    o = paramString;
  }
  
  public void setShowId(long paramLong)
  {
    m = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    d = paramString;
  }
  
  public void setType(String paramString)
  {
    b = paramString;
  }
  
  public void setUrl(String paramString)
  {
    r = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeInt(c);
    paramParcel.writeString(d);
    paramParcel.writeLong(e);
    paramParcel.writeString(f);
    paramParcel.writeLong(g);
    paramParcel.writeString(h);
    paramParcel.writeLong(i);
    paramParcel.writeString(j);
    paramParcel.writeLong(k);
    paramParcel.writeString(l);
    paramParcel.writeLong(m);
    paramParcel.writeString(n);
    paramParcel.writeString(o);
    paramParcel.writeString(p);
    paramParcel.writeString(q);
    paramParcel.writeString(r);
    paramParcel.writeString(s);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowBlockNavigation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */