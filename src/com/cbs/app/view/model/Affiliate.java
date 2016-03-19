package com.cbs.app.view.model;

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
  public static final Parcelable.Creator<Affiliate> CREATOR = new Parcelable.Creator()
  {
    public final Affiliate createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Affiliate(paramAnonymousParcel);
    }
    
    public final Affiliate[] newArray(int paramAnonymousInt)
    {
      return new Affiliate[paramAnonymousInt];
    }
  };
  @JsonProperty("affiliateName")
  private String affiliateName;
  @JsonProperty("affiliateStation")
  private String affiliateStation;
  @JsonProperty("affiliateURL")
  private String affiliateURL;
  @JsonProperty("id")
  private int id;
  @JsonProperty("k")
  private String k;
  @JsonProperty("logo")
  private String logo;
  @JsonProperty("logoSelected")
  private String logoSelected;
  @JsonProperty("smallLogo")
  private String smallLogo;
  @JsonProperty("smallLogoSelected")
  private String smallLogoSelected;
  @JsonProperty("type")
  private String type;
  
  public Affiliate() {}
  
  public Affiliate(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    type = paramParcel.readString();
    k = paramParcel.readString();
    id = paramParcel.readInt();
    affiliateStation = paramParcel.readString();
    affiliateName = paramParcel.readString();
    affiliateURL = paramParcel.readString();
    logo = paramParcel.readString();
    logoSelected = paramParcel.readString();
    smallLogo = paramParcel.readString();
    smallLogoSelected = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAffiliateName()
  {
    return affiliateName;
  }
  
  public String getAffiliateStation()
  {
    return affiliateStation;
  }
  
  public String getAffiliateURL()
  {
    return affiliateURL;
  }
  
  public int getId()
  {
    return id;
  }
  
  public String getK()
  {
    return k;
  }
  
  public String getLogo()
  {
    return logo;
  }
  
  public String getLogoSelected()
  {
    return logoSelected;
  }
  
  public String getSmallLogo()
  {
    return smallLogo;
  }
  
  public String getSmallLogoSelected()
  {
    return smallLogoSelected;
  }
  
  public String getType()
  {
    return type;
  }
  
  public void setAffiliateName(String paramString)
  {
    affiliateName = paramString;
  }
  
  public void setAffiliateStation(String paramString)
  {
    affiliateStation = paramString;
  }
  
  public void setAffiliateURL(String paramString)
  {
    affiliateURL = paramString;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
  
  public void setK(String paramString)
  {
    k = paramString;
  }
  
  public void setLogo(String paramString)
  {
    logo = paramString;
  }
  
  public void setLogoSelected(String paramString)
  {
    logoSelected = paramString;
  }
  
  public void setSmallLogo(String paramString)
  {
    smallLogo = paramString;
  }
  
  public void setSmallLogoSelected(String paramString)
  {
    smallLogoSelected = paramString;
  }
  
  public void setType(String paramString)
  {
    type = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(type);
    paramParcel.writeString(k);
    paramParcel.writeInt(id);
    paramParcel.writeString(affiliateStation);
    paramParcel.writeString(affiliateName);
    paramParcel.writeString(affiliateURL);
    paramParcel.writeString(logo);
    paramParcel.writeString(logoSelected);
    paramParcel.writeString(smallLogo);
    paramParcel.writeString(smallLogoSelected);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Affiliate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */