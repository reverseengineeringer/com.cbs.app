package com.cbs.app.androiddata.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LiveTvItem
  implements Parcelable
{
  public static final Parcelable.Creator<LiveTvItem> CREATOR = new Parcelable.Creator() {};
  private final String a;
  private final String b;
  private SyncbakChannel c;
  
  protected LiveTvItem(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = ((SyncbakChannel)paramParcel.readParcelable(SyncbakChannel.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public SyncbakChannel getChannel()
  {
    return c;
  }
  
  public String getmIconurl()
  {
    return b;
  }
  
  public String getmTitle()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeParcelable(c, 0);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.LiveTvItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */