package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class UpsellInfo
  implements Parcelable
{
  public static final Parcelable.Creator<UpsellInfo> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("deviceApp")
  private String a;
  @JsonProperty("deviceAppSecret")
  private String b;
  @JsonProperty("liveDate")
  private long c;
  @JsonProperty("_liveDate")
  private String d;
  @JsonProperty("expireDate")
  private long e;
  @JsonProperty("_expireDate")
  private String f;
  @JsonProperty("title")
  private String g;
  @JsonProperty("showId")
  private long h;
  @JsonProperty("pageURL")
  private String i;
  @JsonProperty("upsellMessage")
  private String j;
  @JsonProperty("callToAction")
  private String k;
  @JsonProperty("callToActionURL")
  private String l;
  @JsonProperty("actionTarget")
  private String m;
  @JsonProperty("actionType")
  private String n;
  @JsonProperty("userStateList")
  private List<String> o = new ArrayList();
  @JsonProperty("upsellMessage2")
  private String p;
  @JsonProperty("upsellMessage3")
  private String q;
  @JsonProperty("displayFrequency")
  private long r;
  @JsonProperty("upsellImagePath")
  private String s;
  @JsonProperty("upsellImagePath1")
  private String t;
  @JsonProperty("contentID")
  private String u;
  
  public UpsellInfo() {}
  
  public UpsellInfo(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readLong();
    d = paramParcel.readString();
    e = paramParcel.readLong();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readLong();
    i = paramParcel.readString();
    j = paramParcel.readString();
    k = paramParcel.readString();
    l = paramParcel.readString();
    m = paramParcel.readString();
    n = paramParcel.readString();
    paramParcel.readStringList(o);
    p = paramParcel.readString();
    q = paramParcel.readString();
    r = paramParcel.readLong();
    s = paramParcel.readString();
    t = paramParcel.readString();
    u = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getActionTarget()
  {
    return m;
  }
  
  public String getActionType()
  {
    return n;
  }
  
  public String getCallToAction()
  {
    return k;
  }
  
  public String getCallToActionURL()
  {
    return l;
  }
  
  public String getContentId()
  {
    return u;
  }
  
  public String getDeviceApp()
  {
    return a;
  }
  
  public String getDeviceAppSecret()
  {
    return b;
  }
  
  public long getDisplayFrequency()
  {
    return r;
  }
  
  public long getExpireDate()
  {
    return e;
  }
  
  public String getExpireDateStr()
  {
    return f;
  }
  
  public long getLiveDate()
  {
    return c;
  }
  
  public String getLiveDateStr()
  {
    return d;
  }
  
  public String getPageURL()
  {
    return i;
  }
  
  public long getShowId()
  {
    return h;
  }
  
  public String getTitle()
  {
    return g;
  }
  
  public String getUpsellImagePath()
  {
    return s;
  }
  
  public String getUpsellImagePath1()
  {
    return t;
  }
  
  public String getUpsellMessage()
  {
    return j;
  }
  
  public String getUpsellMessage2()
  {
    return p;
  }
  
  public String getUpsellMessage3()
  {
    return q;
  }
  
  public List<String> getUserStateList()
  {
    return o;
  }
  
  public void setActionTarget(String paramString)
  {
    m = paramString;
  }
  
  public void setActionType(String paramString)
  {
    n = paramString;
  }
  
  public void setCallToAction(String paramString)
  {
    k = paramString;
  }
  
  public void setCallToActionURL(String paramString)
  {
    l = paramString;
  }
  
  public void setContentId(String paramString)
  {
    u = paramString;
  }
  
  public void setDeviceApp(String paramString)
  {
    a = paramString;
  }
  
  public void setDeviceAppSecret(String paramString)
  {
    b = paramString;
  }
  
  public void setDisplayFrequency(long paramLong)
  {
    r = paramLong;
  }
  
  public void setExpireDate(long paramLong)
  {
    e = paramLong;
  }
  
  public void setExpireDateStr(String paramString)
  {
    f = paramString;
  }
  
  public void setLiveDate(long paramLong)
  {
    c = paramLong;
  }
  
  public void setLiveDateStr(String paramString)
  {
    d = paramString;
  }
  
  public void setPageURL(String paramString)
  {
    i = paramString;
  }
  
  public void setShowId(long paramLong)
  {
    h = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    g = paramString;
  }
  
  public void setUpsellImagePath(String paramString)
  {
    s = paramString;
  }
  
  public void setUpsellImagePath1(String paramString)
  {
    t = paramString;
  }
  
  public void setUpsellMessage(String paramString)
  {
    j = paramString;
  }
  
  public void setUpsellMessage2(String paramString)
  {
    p = paramString;
  }
  
  public void setUpsellMessage3(String paramString)
  {
    q = paramString;
  }
  
  public void setUserStateList(List<String> paramList)
  {
    o = paramList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeLong(c);
    paramParcel.writeString(d);
    paramParcel.writeLong(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeLong(h);
    paramParcel.writeString(i);
    paramParcel.writeString(j);
    paramParcel.writeString(k);
    paramParcel.writeString(l);
    paramParcel.writeString(m);
    paramParcel.writeString(n);
    paramParcel.writeStringList(o);
    paramParcel.writeString(p);
    paramParcel.writeString(q);
    paramParcel.writeLong(r);
    paramParcel.writeString(s);
    paramParcel.writeString(t);
    paramParcel.writeString(u);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.UpsellInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */