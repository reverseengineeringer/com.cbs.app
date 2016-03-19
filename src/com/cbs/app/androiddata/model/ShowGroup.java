package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowGroup
  implements Parcelable
{
  public static final Parcelable.Creator<ShowGroup> CREATOR = new Parcelable.Creator() {};
  private int a;
  private String b;
  private String c;
  private String d;
  
  public ShowGroup() {}
  
  protected ShowGroup(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getId()
  {
    return a;
  }
  
  public String getPlatformType()
  {
    return b;
  }
  
  public String getShowGroupItems()
  {
    return c;
  }
  
  public String getTitle()
  {
    return d;
  }
  
  public void setId(int paramInt)
  {
    a = paramInt;
  }
  
  public void setPlatformType(String paramString)
  {
    b = paramString;
  }
  
  public void setShowGroupItems(String paramString)
  {
    c = paramString;
  }
  
  public void setTitle(String paramString)
  {
    d = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */