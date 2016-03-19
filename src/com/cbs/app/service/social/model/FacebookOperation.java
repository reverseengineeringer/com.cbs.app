package com.cbs.app.service.social.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class FacebookOperation
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new Parcelable.Creator() {};
  private int a;
  private String b;
  private String c;
  private String d = null;
  private String e = null;
  private String f = null;
  private String g = null;
  private String h = null;
  private FBLink i;
  
  public FacebookOperation()
  {
    a = 1;
  }
  
  public FacebookOperation(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    c = paramParcel.readString();
    b = paramParcel.readString();
    i = ((FBLink)paramParcel.readParcelable(FBLink.class.getClassLoader()));
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCaption()
  {
    return f;
  }
  
  public int getChoice()
  {
    return a;
  }
  
  public String getDescription()
  {
    return e;
  }
  
  public FBLink getFBLink()
  {
    return i;
  }
  
  public String getFacebookLink()
  {
    return h;
  }
  
  public String getMessage()
  {
    return c;
  }
  
  public String getName()
  {
    return d;
  }
  
  public String getOwnerId()
  {
    return b;
  }
  
  public String getPictureLink()
  {
    return g;
  }
  
  public void setCaption(String paramString)
  {
    f = paramString;
  }
  
  public void setDescription(String paramString)
  {
    e = paramString;
  }
  
  public void setFacebookLink(String paramString)
  {
    h = paramString;
  }
  
  public void setMessage(String paramString)
  {
    c = paramString;
  }
  
  public void setName(String paramString)
  {
    d = paramString;
  }
  
  public void setPictureLink(String paramString)
  {
    g = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeString(c);
    paramParcel.writeString(b);
    paramParcel.writeParcelable(i, paramInt);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.model.FacebookOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */