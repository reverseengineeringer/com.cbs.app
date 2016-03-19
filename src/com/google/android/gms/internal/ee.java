package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.R.string;
import com.google.android.gms.ads.internal.o;
import java.util.Map;

@fs
public final class ee
  extends eh
{
  private final Map<String, String> a;
  private final Context b;
  
  public ee(hs paramhs, Map<String, String> paramMap)
  {
    super(paramhs, "storePicture");
    a = paramMap;
    b = paramhs.e();
  }
  
  public final void a()
  {
    if (b == null)
    {
      a("Activity context is not available");
      return;
    }
    o.e();
    if (!gw.e(b).c())
    {
      a("Feature is not supported by the device.");
      return;
    }
    String str1 = (String)a.get("iurl");
    if (TextUtils.isEmpty(str1))
    {
      a("Image url cannot be empty.");
      return;
    }
    if (!URLUtil.isValidUrl(str1))
    {
      a("Invalid image url: " + str1);
      return;
    }
    String str2 = Uri.parse(str1).getLastPathSegment();
    o.e();
    if (!gw.c(str2))
    {
      a("Image type not recognized: " + str2);
      return;
    }
    o.e();
    AlertDialog.Builder localBuilder = gw.d(b);
    localBuilder.setTitle(o.h().a(R.string.store_picture_title, "Save image"));
    localBuilder.setMessage(o.h().a(R.string.store_picture_message, "Allow Ad to store image in Picture gallery?"));
    localBuilder.setPositiveButton(o.h().a(R.string.accept, "Accept"), new ee.1(this, str1, str2));
    localBuilder.setNegativeButton(o.h().a(R.string.decline, "Decline"), new ee.2(this));
    localBuilder.create().show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */