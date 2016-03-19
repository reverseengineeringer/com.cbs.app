package com.cbs.app.service.social.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class FBLink
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new Parcelable.Creator() {};
  private String a;
  private String b;
  private String c;
  private String d;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCaption()
  {
    return c;
  }
  
  public String getDescription()
  {
    return d;
  }
  
  public String getLink()
  {
    return a;
  }
  
  public String getName()
  {
    return b;
  }
  
  public void setDescription(String paramString)
  {
    d = paramString;
  }
  
  public void setLink(String paramString)
  {
    a = paramString;
  }
  
  public void setName(String paramString)
  {
    b = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.model.FBLink
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */