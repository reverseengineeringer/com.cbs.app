package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.adobe.adobepass.accessenabler.a.g;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true, value={"adobeMvpd"})
public class MVPDConfig
  implements Parcelable
{
  public static final Parcelable.Creator<MVPDConfig> CREATOR = new Parcelable.Creator()
  {
    public final MVPDConfig createFromParcel(Parcel paramAnonymousParcel)
    {
      return new MVPDConfig(paramAnonymousParcel);
    }
    
    public final MVPDConfig[] newArray(int paramAnonymousInt)
    {
      return new MVPDConfig[paramAnonymousInt];
    }
  };
  @JsonProperty("adobe_display_name_override")
  private String adobeDisplayNameOverride;
  @JsonProperty("adobe_id")
  private String adobeId;
  private String adobeLogoUrl;
  @JsonProperty("filepath_adobe_logo_override")
  private String filepathAdobeLogoOverride;
  @JsonProperty("force_user_reg_flow")
  private boolean forceUserRegFlow;
  private String mpvd;
  private long tier;
  
  public MVPDConfig() {}
  
  protected MVPDConfig(Parcel paramParcel)
  {
    mpvd = paramParcel.readString();
    adobeId = paramParcel.readString();
    adobeDisplayNameOverride = paramParcel.readString();
    filepathAdobeLogoOverride = paramParcel.readString();
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      forceUserRegFlow = bool;
      tier = paramParcel.readLong();
      adobeLogoUrl = paramParcel.readString();
      return;
    }
  }
  
  public MVPDConfig(g paramg)
  {
    setMvpd(paramg.b());
    setAdobeId(paramg.a());
    setAdobeLogoUrl(paramg.c());
    setTier(1L);
    setForceUserRegFlow(false);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAdobeDisplayNameOverride()
  {
    return adobeDisplayNameOverride;
  }
  
  public String getAdobeId()
  {
    return adobeId;
  }
  
  public String getAdobeLogoUrl()
  {
    return adobeLogoUrl;
  }
  
  public String getFilepathAdobeLogoOverride()
  {
    return filepathAdobeLogoOverride;
  }
  
  public String getMvpd()
  {
    return mpvd;
  }
  
  public long getTier()
  {
    return tier;
  }
  
  public boolean isForceUserRegFlow()
  {
    return forceUserRegFlow;
  }
  
  public void setAdobeDisplayNameOverride(String paramString)
  {
    adobeDisplayNameOverride = paramString;
  }
  
  public void setAdobeId(String paramString)
  {
    adobeId = paramString;
  }
  
  public void setAdobeLogoUrl(String paramString)
  {
    adobeLogoUrl = paramString;
  }
  
  public void setFilepathAdobeLogoOverride(String paramString)
  {
    filepathAdobeLogoOverride = paramString;
  }
  
  public void setForceUserRegFlow(boolean paramBoolean)
  {
    forceUserRegFlow = paramBoolean;
  }
  
  public void setMvpd(String paramString)
  {
    mpvd = paramString;
  }
  
  public void setTier(long paramLong)
  {
    tier = paramLong;
  }
  
  public String toString()
  {
    return mpvd;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mpvd);
    paramParcel.writeString(adobeId);
    paramParcel.writeString(adobeDisplayNameOverride);
    paramParcel.writeString(filepathAdobeLogoOverride);
    if (forceUserRegFlow) {}
    for (byte b = 1;; b = 0)
    {
      paramParcel.writeByte(b);
      paramParcel.writeLong(tier);
      paramParcel.writeString(adobeLogoUrl);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.MVPDConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */