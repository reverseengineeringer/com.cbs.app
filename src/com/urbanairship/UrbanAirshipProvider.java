package com.urbanairship;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.urbanairship.d.b;
import com.urbanairship.d.h;
import java.util.Arrays;
import java.util.List;

public final class UrbanAirshipProvider
  extends ContentProvider
{
  private static final UriMatcher a = new UriMatcher(-1);
  private static String d;
  private a b;
  private a c;
  
  static void a()
  {
    a.addURI(d(), "richpush", 0);
    a.addURI(d(), "richpush/*", 1);
    a.addURI(d(), "preferences", 2);
    a.addURI(d(), "preferences/*", 3);
  }
  
  private static String[] a(Uri paramUri)
  {
    try
    {
      paramUri = ((String)paramUri.getPathSegments().get(1)).split("\\|");
      return paramUri;
    }
    catch (IndexOutOfBoundsException paramUri) {}
    return new String[0];
  }
  
  public static Uri b()
  {
    return Uri.parse("content://" + d() + "/richpush");
  }
  
  private a b(Uri paramUri)
  {
    switch (a.match(paramUri))
    {
    default: 
      throw new IllegalArgumentException("Invalid URI: " + paramUri);
    case 0: 
    case 1: 
      return f();
    }
    return e();
  }
  
  public static Uri c()
  {
    return Uri.parse("content://" + d() + "/preferences");
  }
  
  public static String d()
  {
    if (d == null)
    {
      String str = p.b();
      d = str + ".urbanairship.provider";
    }
    return d;
  }
  
  private a e()
  {
    if (c == null) {
      c = a.b(getContext());
    }
    return c;
  }
  
  private a f()
  {
    if (b == null) {
      b = a.a(getContext());
    }
    return b;
  }
  
  public final int bulkInsert(Uri paramUri, ContentValues[] paramArrayOfContentValues)
  {
    paramUri = b(paramUri);
    paramArrayOfContentValues = a.a(b, paramArrayOfContentValues);
    String[] arrayOfString = new String[paramArrayOfContentValues.size()];
    int i = 0;
    while (i < arrayOfString.length)
    {
      arrayOfString[i] = ((ContentValues)paramArrayOfContentValues.get(i)).getAsString(d);
      i += 1;
    }
    paramUri.a(getContext(), arrayOfString, "insert");
    return paramArrayOfContentValues.size();
  }
  
  public final int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    a locala = b(paramUri);
    int i = a.a(b, paramString, paramArrayOfString);
    locala.a(getContext(), a(paramUri), "delete");
    return i;
  }
  
  public final String getType(Uri paramUri)
  {
    switch (a.match(paramUri))
    {
    default: 
      throw new IllegalArgumentException("Invalid Uri: " + paramUri);
    case 0: 
      return "vnd.urbanairship.cursor.dir/richpush";
    case 1: 
      return "vnd.urbanairship.cursor.item/richpush";
    case 2: 
      return "vnd.urbanairship.cursor.dir/preference";
    }
    return "vnd.urbanairship.cursor.item/preference";
  }
  
  public final Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    a locala = b(paramUri);
    if (a.a(b, paramContentValues) != -1L)
    {
      paramContentValues = paramContentValues.getAsString(d);
      locala.a(getContext(), new String[] { paramContentValues }, "insert");
      return Uri.withAppendedPath(paramUri, paramContentValues);
    }
    return null;
  }
  
  public final boolean onCreate()
  {
    return true;
  }
  
  public final Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    a locala = b(paramUri);
    paramArrayOfString1 = a.a(b, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, null);
    if (paramArrayOfString1 != null) {
      paramArrayOfString1.setNotificationUri(getContext().getContentResolver(), paramUri);
    }
    return paramArrayOfString1;
  }
  
  public final void shutdown()
  {
    fa.b();
    ea.b();
  }
  
  public final int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    a locala = b(paramUri);
    int i = a.a(b, paramContentValues, paramString, paramArrayOfString);
    if (i != -1) {
      locala.a(getContext(), a(paramUri), "update");
    }
    return i;
  }
  
  private static final class a
  {
    final b a;
    final String b;
    final Uri c;
    final String d;
    
    private a(b paramb, String paramString1, Uri paramUri, String paramString2)
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
}

/* Location:
 * Qualified Name:     com.urbanairship.UrbanAirshipProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */