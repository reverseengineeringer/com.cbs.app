package com.cbs.app.visualon.player;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class AdPeriod
  implements Parcelable
{
  public static final Parcelable.Creator<AdPeriod> CREATOR = new Parcelable.Creator() {};
  private int a;
  private long b;
  private long c;
  private boolean d;
  
  public AdPeriod(int paramInt, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    a = paramInt;
    b = paramLong1;
    c = paramLong2;
    d = paramBoolean;
  }
  
  public AdPeriod(Parcel paramParcel) {}
  
  public final boolean a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getEndTime()
  {
    return c;
  }
  
  public int getId()
  {
    return a;
  }
  
  public long getStartTime()
  {
    return b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeLong(b);
    paramParcel.writeLong(c);
    if (d) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.AdPeriod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */