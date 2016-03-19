package com.google.android.gms.ads.internal.reward.mediation.client;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fs;

@fs
public final class RewardItemParcel
  implements SafeParcelable
{
  public static final c CREATOR = new c();
  public final int a;
  public final String b;
  public final int c;
  
  public RewardItemParcel(int paramInt1, String paramString, int paramInt2)
  {
    a = paramInt1;
    b = paramString;
    c = paramInt2;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */