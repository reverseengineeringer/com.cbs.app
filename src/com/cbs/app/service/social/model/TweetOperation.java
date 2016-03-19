package com.cbs.app.service.social.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class TweetOperation
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new Parcelable.Creator() {};
  private int a;
  private long b;
  private String c;
  private String d;
  private String e;
  
  public TweetOperation(long paramLong, String paramString1, String paramString2)
  {
    a = 5;
    b = paramLong;
    c = paramString2;
    e = paramString1;
  }
  
  public TweetOperation(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    c = paramParcel.readString();
    d = paramParcel.readString();
    b = paramParcel.readLong();
    e = paramParcel.readString();
  }
  
  public TweetOperation(String paramString)
  {
    a = 2;
    c = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getChoice()
  {
    return a;
  }
  
  public long getId()
  {
    return b;
  }
  
  public String getMessage()
  {
    return c;
  }
  
  public String getReplyToAuthor()
  {
    return e;
  }
  
  public String getUser()
  {
    return d;
  }
  
  public void setId(long paramLong)
  {
    b = paramLong;
  }
  
  public void setMessage(String paramString)
  {
    c = paramString;
  }
  
  public void setUser(String paramString)
  {
    d = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeLong(b);
    paramParcel.writeString(e);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.model.TweetOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */