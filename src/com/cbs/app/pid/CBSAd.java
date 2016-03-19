package com.cbs.app.pid;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CBSAd
  implements Parcelable
{
  public static final Parcelable.Creator<CBSAd> CREATOR = new Parcelable.Creator() {};
  String a;
  int b;
  int c;
  boolean d;
  
  public CBSAd() {}
  
  private CBSAd(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readInt();
    c = paramParcel.readInt();
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  public CBSAd(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    a = paramString;
    b = paramInt1;
    c = paramInt2;
    d = paramBoolean;
  }
  
  public final boolean a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getDuration()
  {
    return c;
  }
  
  public String getId()
  {
    return a;
  }
  
  public int getStartTime()
  {
    return b;
  }
  
  public void setDuration(int paramInt)
  {
    c = paramInt;
  }
  
  public void setId(String paramString)
  {
    a = paramString;
  }
  
  public void setStartTime(int paramInt)
  {
    b = paramInt;
  }
  
  public void setWatched(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeInt(b);
    paramParcel.writeInt(c);
    if (d) {}
    for (byte b1 = 1;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.pid.CBSAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */