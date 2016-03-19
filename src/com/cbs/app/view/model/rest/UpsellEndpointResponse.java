package com.cbs.app.view.model.rest;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.UpsellInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class UpsellEndpointResponse
  extends ResponseModel
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<UpsellEndpointResponse> CREATOR = new Parcelable.Creator()
  {
    public final UpsellEndpointResponse createFromParcel(Parcel paramAnonymousParcel)
    {
      return new UpsellEndpointResponse(paramAnonymousParcel, null);
    }
    
    public final UpsellEndpointResponse[] newArray(int paramAnonymousInt)
    {
      return new UpsellEndpointResponse[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = -5434254123460612342L;
  @JsonProperty("success")
  private boolean success;
  @JsonProperty("upsellInfo")
  private List<UpsellInfo> upsellInfo = null;
  
  public UpsellEndpointResponse() {}
  
  private UpsellEndpointResponse(Parcel paramParcel)
  {
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      success = bool;
      paramParcel.readTypedList(upsellInfo, UpsellInfo.CREATOR);
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<UpsellInfo> getUpsellInfo()
  {
    return upsellInfo;
  }
  
  public UpsellInfo getUpsellInfoforActionTarget(String paramString)
  {
    if (upsellInfo != null)
    {
      Iterator localIterator = upsellInfo.iterator();
      while (localIterator.hasNext())
      {
        UpsellInfo localUpsellInfo = (UpsellInfo)localIterator.next();
        if (paramString.equals(localUpsellInfo.getActionTarget())) {
          return localUpsellInfo;
        }
      }
    }
    return null;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
  
  public void setUpsellInfo(List<UpsellInfo> paramList)
  {
    upsellInfo = paramList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (success) {}
    for (byte b = 1;; b = 0)
    {
      paramParcel.writeByte(b);
      paramParcel.writeTypedList(upsellInfo);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.UpsellEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */