package com.google.android.gms.ads.internal.reward.client;

import android.os.Parcel;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fs;

@fs
public final class RewardedVideoAdRequestParcel
  implements SafeParcelable
{
  public static final c CREATOR = new c();
  public final int a;
  public final AdRequestParcel b;
  public final String c;
  
  public RewardedVideoAdRequestParcel(int paramInt, AdRequestParcel paramAdRequestParcel, String paramString)
  {
    a = paramInt;
    b = paramAdRequestParcel;
    c = paramString;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.reward.client.RewardedVideoAdRequestParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */