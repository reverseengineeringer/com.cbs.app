package com.cbs.app.androiddata.model.rest;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.UpsellInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class UpsellEndpointResponse
  extends ResponseModel
  implements Parcelable
{
  public static final Parcelable.Creator<UpsellEndpointResponse> CREATOR = new Parcelable.Creator() {};
  @JsonProperty("success")
  private boolean a;
  @JsonProperty("upsellInfo")
  private List<UpsellInfo> b;
  
  public UpsellEndpointResponse() {}
  
  private UpsellEndpointResponse(Parcel paramParcel)
  {
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      paramParcel.readTypedList(b, UpsellInfo.CREATOR);
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<UpsellInfo> getUpsellInfo()
  {
    return b;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void setUpsellInfo(List<UpsellInfo> paramList)
  {
    b = paramList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a) {}
    for (byte b1 = 1;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      paramParcel.writeTypedList(b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.UpsellEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */