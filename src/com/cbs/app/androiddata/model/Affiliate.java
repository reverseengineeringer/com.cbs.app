package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Affiliate
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<Affiliate> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("type")
  private String a;
  @JsonProperty("k")
  private String b;
  @JsonProperty("id")
  private int c;
  @JsonProperty("affiliateStation")
  private String d;
  @JsonProperty("affiliateName")
  private String e;
  @JsonProperty("affiliateURL")
  private String f;
  @JsonProperty("logo")
  private String g;
  @JsonProperty("logoSelected")
  private String h;
  @JsonProperty("smallLogo")
  private String i;
  @JsonProperty("smallLogoSelected")
  private String j;
  
  public Affiliate() {}
  
  public Affiliate(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readInt();
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readString();
    i = paramParcel.readString();
    j = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAffiliateName()
  {
    return e;
  }
  
  public String getAffiliateStation()
  {
    return d;
  }
  
  public String getAffiliateURL()
  {
    return f;
  }
  
  public int getId()
  {
    return c;
  }
  
  public String getK()
  {
    return b;
  }
  
  public String getLogo()
  {
    return g;
  }
  
  public String getLogoSelected()
  {
    return h;
  }
  
  public String getSmallLogo()
  {
    return i;
  }
  
  public String getSmallLogoSelected()
  {
    return j;
  }
  
  public String getType()
  {
    return a;
  }
  
  public void setAffiliateName(String paramString)
  {
    e = paramString;
  }
  
  public void setAffiliateStation(String paramString)
  {
    d = paramString;
  }
  
  public void setAffiliateURL(String paramString)
  {
    f = paramString;
  }
  
  public void setId(int paramInt)
  {
    c = paramInt;
  }
  
  public void setK(String paramString)
  {
    b = paramString;
  }
  
  public void setLogo(String paramString)
  {
    g = paramString;
  }
  
  public void setLogoSelected(String paramString)
  {
    h = paramString;
  }
  
  public void setSmallLogo(String paramString)
  {
    i = paramString;
  }
  
  public void setSmallLogoSelected(String paramString)
  {
    j = paramString;
  }
  
  public void setType(String paramString)
  {
    a = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeInt(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeString(i);
    paramParcel.writeString(j);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.Affiliate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */