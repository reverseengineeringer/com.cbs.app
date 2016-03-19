package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.cast.internal.f;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class ApplicationMetadata
  implements SafeParcelable
{
  public static final Parcelable.Creator<ApplicationMetadata> CREATOR = new k();
  String a;
  String b;
  List<WebImage> c;
  List<String> d;
  String e;
  Uri f;
  private final int g;
  
  private ApplicationMetadata()
  {
    g = 1;
    c = new ArrayList();
    d = new ArrayList();
  }
  
  ApplicationMetadata(int paramInt, String paramString1, String paramString2, List<WebImage> paramList, List<String> paramList1, String paramString3, Uri paramUri)
  {
    g = paramInt;
    a = paramString1;
    b = paramString2;
    c = paramList;
    d = paramList1;
    e = paramString3;
    f = paramUri;
  }
  
  final int a()
  {
    return g;
  }
  
  public final String b()
  {
    return a;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ApplicationMetadata)) {
        return false;
      }
      paramObject = (ApplicationMetadata)paramObject;
    } while ((f.a(a, a)) && (f.a(c, c)) && (f.a(b, b)) && (f.a(d, d)) && (f.a(e, e)) && (f.a(f, f)));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(g), a, b, c, d, e, f });
  }
  
  public final String toString()
  {
    int j = 0;
    StringBuilder localStringBuilder = new StringBuilder("applicationId: ").append(a).append(", name: ").append(b).append(", images.count: ");
    if (c == null)
    {
      i = 0;
      localStringBuilder = localStringBuilder.append(i).append(", namespaces.count: ");
      if (d != null) {
        break label111;
      }
    }
    label111:
    for (int i = j;; i = d.size())
    {
      return i + ", senderAppIdentifier: " + e + ", senderAppLaunchUrl: " + f;
      i = c.size();
      break;
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.ApplicationMetadata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */