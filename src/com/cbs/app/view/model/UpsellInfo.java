package com.cbs.app.view.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class UpsellInfo
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<UpsellInfo> CREATOR = new Parcelable.Creator()
  {
    public final UpsellInfo createFromParcel(Parcel paramAnonymousParcel)
    {
      return new UpsellInfo(paramAnonymousParcel);
    }
    
    public final UpsellInfo[] newArray(int paramAnonymousInt)
    {
      return new UpsellInfo[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = -548444123460662072L;
  @JsonProperty("aaProductID")
  private String aaProductID;
  @JsonProperty("actionTarget")
  private String actionTarget;
  @JsonProperty("actionType")
  private String actionType;
  @JsonProperty("callToAction")
  private String callToAction;
  @JsonProperty("callToActionURL")
  private String callToActionURL;
  @JsonProperty("contentID")
  private String contentID;
  @JsonProperty("deviceApp")
  private String deviceApp;
  @JsonProperty("deviceAppSecret")
  private String deviceAppSecret;
  @JsonProperty("displayFrequency")
  private long displayFrequency;
  @JsonProperty("expireDate")
  private long expireDate;
  @JsonProperty("_expireDate")
  private String expireDateStr;
  @JsonProperty("liveDate")
  private long liveDate;
  @JsonProperty("_liveDate")
  private String liveDateStr;
  @JsonProperty("pageURL")
  private String pageURL;
  @JsonProperty("showId")
  private long showId;
  @JsonProperty("title")
  private String title;
  @JsonProperty("upsellImagePath")
  private String upsellImagePath;
  @JsonProperty("upsellImagePath1")
  private String upsellImagePath1;
  @JsonProperty("upsellMessage")
  private String upsellMessage;
  @JsonProperty("upsellMessage2")
  private String upsellMessage2;
  @JsonProperty("upsellMessage3")
  private String upsellMessage3;
  @JsonProperty("userStateList")
  private List<String> userStateList = new ArrayList();
  
  public UpsellInfo() {}
  
  public UpsellInfo(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    deviceApp = paramParcel.readString();
    deviceAppSecret = paramParcel.readString();
    liveDate = paramParcel.readLong();
    liveDateStr = paramParcel.readString();
    expireDate = paramParcel.readLong();
    expireDateStr = paramParcel.readString();
    title = paramParcel.readString();
    showId = paramParcel.readLong();
    pageURL = paramParcel.readString();
    upsellMessage = paramParcel.readString();
    callToAction = paramParcel.readString();
    callToActionURL = paramParcel.readString();
    actionTarget = paramParcel.readString();
    actionType = paramParcel.readString();
    paramParcel.readStringList(userStateList);
    upsellMessage2 = paramParcel.readString();
    upsellMessage3 = paramParcel.readString();
    displayFrequency = paramParcel.readLong();
    upsellImagePath = paramParcel.readString();
    upsellImagePath1 = paramParcel.readString();
    contentID = paramParcel.readString();
    aaProductID = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getActionTarget()
  {
    return actionTarget;
  }
  
  public String getActionType()
  {
    return actionType;
  }
  
  public String getCallToAction()
  {
    return callToAction;
  }
  
  public String getCallToActionURL()
  {
    return callToActionURL;
  }
  
  public String getContentId()
  {
    return contentID;
  }
  
  public String getDeviceApp()
  {
    return deviceApp;
  }
  
  public String getDeviceAppSecret()
  {
    return deviceAppSecret;
  }
  
  public long getDisplayFrequency()
  {
    return displayFrequency;
  }
  
  public long getExpireDate()
  {
    return expireDate;
  }
  
  public String getExpireDateStr()
  {
    return expireDateStr;
  }
  
  public long getLiveDate()
  {
    return liveDate;
  }
  
  public String getLiveDateStr()
  {
    return liveDateStr;
  }
  
  public String getPageURL()
  {
    return pageURL;
  }
  
  public String getProductID()
  {
    return aaProductID;
  }
  
  public long getShowId()
  {
    return showId;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getUpsellImagePath()
  {
    return upsellImagePath;
  }
  
  public String getUpsellImagePath1()
  {
    return upsellImagePath1;
  }
  
  public String getUpsellMessage()
  {
    return upsellMessage;
  }
  
  public String getUpsellMessage2()
  {
    return upsellMessage2;
  }
  
  public String getUpsellMessage3()
  {
    return upsellMessage3;
  }
  
  public List<String> getUserStateList()
  {
    return userStateList;
  }
  
  public void setActionTarget(String paramString)
  {
    actionTarget = paramString;
  }
  
  public void setActionType(String paramString)
  {
    actionType = paramString;
  }
  
  public void setCallToAction(String paramString)
  {
    callToAction = paramString;
  }
  
  public void setCallToActionURL(String paramString)
  {
    callToActionURL = paramString;
  }
  
  public void setContentId(String paramString)
  {
    contentID = paramString;
  }
  
  public void setDeviceApp(String paramString)
  {
    deviceApp = paramString;
  }
  
  public void setDeviceAppSecret(String paramString)
  {
    deviceAppSecret = paramString;
  }
  
  public void setDisplayFrequency(long paramLong)
  {
    displayFrequency = paramLong;
  }
  
  public void setExpireDate(long paramLong)
  {
    expireDate = paramLong;
  }
  
  public void setExpireDateStr(String paramString)
  {
    expireDateStr = paramString;
  }
  
  public void setLiveDate(long paramLong)
  {
    liveDate = paramLong;
  }
  
  public void setLiveDateStr(String paramString)
  {
    liveDateStr = paramString;
  }
  
  public void setPageURL(String paramString)
  {
    pageURL = paramString;
  }
  
  public void setShowId(long paramLong)
  {
    showId = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
  
  public void setUpsellImagePath(String paramString)
  {
    upsellImagePath = paramString;
  }
  
  public void setUpsellImagePath1(String paramString)
  {
    upsellImagePath1 = paramString;
  }
  
  public void setUpsellMessage(String paramString)
  {
    upsellMessage = paramString;
  }
  
  public void setUpsellMessage2(String paramString)
  {
    upsellMessage2 = paramString;
  }
  
  public void setUpsellMessage3(String paramString)
  {
    upsellMessage3 = paramString;
  }
  
  public void setUserStateList(List<String> paramList)
  {
    userStateList = paramList;
  }
  
  public void setaaProductID(String paramString)
  {
    aaProductID = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(deviceApp);
    paramParcel.writeString(deviceAppSecret);
    paramParcel.writeLong(liveDate);
    paramParcel.writeString(liveDateStr);
    paramParcel.writeLong(expireDate);
    paramParcel.writeString(expireDateStr);
    paramParcel.writeString(title);
    paramParcel.writeLong(showId);
    paramParcel.writeString(pageURL);
    paramParcel.writeString(upsellMessage);
    paramParcel.writeString(callToAction);
    paramParcel.writeString(callToActionURL);
    paramParcel.writeString(actionTarget);
    paramParcel.writeString(actionType);
    paramParcel.writeStringList(userStateList);
    paramParcel.writeString(upsellMessage2);
    paramParcel.writeString(upsellMessage3);
    paramParcel.writeLong(displayFrequency);
    paramParcel.writeString(upsellImagePath);
    paramParcel.writeString(upsellImagePath1);
    paramParcel.writeString(contentID);
    paramParcel.writeString(aaProductID);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.UpsellInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */