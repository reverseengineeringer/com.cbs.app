package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.c.a;
import com.google.android.gms.a.d;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.client.a;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.ck;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.hs;

@fs
public final class AdOverlayInfoParcel
  implements SafeParcelable
{
  public static final e CREATOR = new e();
  public final int a;
  public final AdLauncherIntentInfoParcel b;
  public final a c;
  public final f d;
  public final hs e;
  public final ce f;
  public final String g;
  public final boolean h;
  public final String i;
  public final j j;
  public final int k;
  public final int l;
  public final String m;
  public final VersionInfoParcel n;
  public final ck o;
  public final String p;
  public final InterstitialAdParameterParcel q;
  
  AdOverlayInfoParcel(int paramInt1, AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel, IBinder paramIBinder1, IBinder paramIBinder2, IBinder paramIBinder3, IBinder paramIBinder4, String paramString1, boolean paramBoolean, String paramString2, IBinder paramIBinder5, int paramInt2, int paramInt3, String paramString3, VersionInfoParcel paramVersionInfoParcel, IBinder paramIBinder6, String paramString4, InterstitialAdParameterParcel paramInterstitialAdParameterParcel)
  {
    a = paramInt1;
    b = paramAdLauncherIntentInfoParcel;
    c = ((a)d.a(c.a.a(paramIBinder1)));
    d = ((f)d.a(c.a.a(paramIBinder2)));
    e = ((hs)d.a(c.a.a(paramIBinder3)));
    f = ((ce)d.a(c.a.a(paramIBinder4)));
    g = paramString1;
    h = paramBoolean;
    i = paramString2;
    j = ((j)d.a(c.a.a(paramIBinder5)));
    k = paramInt2;
    l = paramInt3;
    m = paramString3;
    n = paramVersionInfoParcel;
    o = ((ck)d.a(c.a.a(paramIBinder6)));
    p = paramString4;
    q = paramInterstitialAdParameterParcel;
  }
  
  public AdOverlayInfoParcel(a parama, f paramf, j paramj, hs paramhs, int paramInt, VersionInfoParcel paramVersionInfoParcel, String paramString, InterstitialAdParameterParcel paramInterstitialAdParameterParcel)
  {
    a = 4;
    b = null;
    c = parama;
    d = paramf;
    e = paramhs;
    f = null;
    g = null;
    h = false;
    i = null;
    j = paramj;
    k = paramInt;
    l = 1;
    m = null;
    n = paramVersionInfoParcel;
    o = null;
    p = paramString;
    q = paramInterstitialAdParameterParcel;
  }
  
  public AdOverlayInfoParcel(a parama, f paramf, j paramj, hs paramhs, boolean paramBoolean, int paramInt, VersionInfoParcel paramVersionInfoParcel)
  {
    a = 4;
    b = null;
    c = parama;
    d = paramf;
    e = paramhs;
    f = null;
    g = null;
    h = paramBoolean;
    i = null;
    j = paramj;
    k = paramInt;
    l = 2;
    m = null;
    n = paramVersionInfoParcel;
    o = null;
    p = null;
    q = null;
  }
  
  public AdOverlayInfoParcel(a parama, f paramf, ce paramce, j paramj, hs paramhs, boolean paramBoolean, int paramInt, String paramString, VersionInfoParcel paramVersionInfoParcel, ck paramck)
  {
    a = 4;
    b = null;
    c = parama;
    d = paramf;
    e = paramhs;
    f = paramce;
    g = null;
    h = paramBoolean;
    i = null;
    j = paramj;
    k = paramInt;
    l = 3;
    m = paramString;
    n = paramVersionInfoParcel;
    o = paramck;
    p = null;
    q = null;
  }
  
  public AdOverlayInfoParcel(a parama, f paramf, ce paramce, j paramj, hs paramhs, boolean paramBoolean, int paramInt, String paramString1, String paramString2, VersionInfoParcel paramVersionInfoParcel, ck paramck)
  {
    a = 4;
    b = null;
    c = parama;
    d = paramf;
    e = paramhs;
    f = paramce;
    g = paramString2;
    h = paramBoolean;
    i = paramString1;
    j = paramj;
    k = paramInt;
    l = 3;
    m = null;
    n = paramVersionInfoParcel;
    o = paramck;
    p = null;
    q = null;
  }
  
  public AdOverlayInfoParcel(AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel, a parama, f paramf, j paramj, VersionInfoParcel paramVersionInfoParcel)
  {
    a = 4;
    b = paramAdLauncherIntentInfoParcel;
    c = parama;
    d = paramf;
    e = null;
    f = null;
    g = null;
    h = false;
    i = null;
    j = paramj;
    k = -1;
    l = 4;
    m = null;
    n = paramVersionInfoParcel;
    o = null;
    p = null;
    q = null;
  }
  
  public static AdOverlayInfoParcel a(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
      paramIntent.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
      paramIntent = (AdOverlayInfoParcel)paramIntent.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
      return paramIntent;
    }
    catch (Exception paramIntent) {}
    return null;
  }
  
  public static void a(Intent paramIntent, AdOverlayInfoParcel paramAdOverlayInfoParcel)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", paramAdOverlayInfoParcel);
    paramIntent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", localBundle);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */