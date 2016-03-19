package com.urbanairship;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.urbanairship.d.b;
import com.urbanairship.d.h;
import java.util.Arrays;

final class UrbanAirshipProvider$a
{
  final b a;
  final String b;
  final Uri c;
  final String d;
  
  private UrbanAirshipProvider$a(b paramb, String paramString1, Uri paramUri, String paramString2)
  {
    a = paramb;
    b = paramString1;
    c = paramUri;
    d = paramString2;
  }
  
  static a a(Context paramContext)
  {
    return new a(new o(paramContext), "richpush", UrbanAirshipProvider.b(), "message_id");
  }
  
  static a b(Context paramContext)
  {
    return new a(new m(paramContext), "preferences", UrbanAirshipProvider.c(), "_id");
  }
  
  final void a(Context paramContext, String[] paramArrayOfString, String paramString)
  {
    paramArrayOfString = Uri.withAppendedPath(c, h.a(Arrays.asList(paramArrayOfString), "|") + "/" + paramString);
    new StringBuilder("UrbanAirshipProvider - Notifying of change to ").append(paramArrayOfString);
    paramContext.getContentResolver().notifyChange(paramArrayOfString, null);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.UrbanAirshipProvider.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */