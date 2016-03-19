package com.google.android.gms.ads.internal.overlay;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fs;

@fs
public final class AdLauncherIntentInfoParcel
  implements SafeParcelable
{
  public static final b CREATOR = new b();
  public final int a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final String g;
  public final String h;
  
  public AdLauncherIntentInfoParcel(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
    f = paramString5;
    g = paramString6;
    h = paramString7;
  }
  
  public AdLauncherIntentInfoParcel(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this(1, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */