package com.d.a.b.d;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.provider.MediaStore.Video.Thumbnails;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public final class a
  implements b
{
  protected final Context a;
  protected final int b;
  protected final int c;
  
  public a(Context paramContext)
  {
    a = paramContext.getApplicationContext();
    b = 5000;
    c = 20000;
  }
  
  private InputStream a(String paramString)
  {
    int i = 0;
    paramString = b(paramString);
    while ((paramString.getResponseCode() / 100 == 3) && (i < 5))
    {
      paramString = b(paramString.getHeaderField("Location"));
      i += 1;
    }
    try
    {
      InputStream localInputStream = paramString.getInputStream();
      return new com.d.a.b.a.a(new BufferedInputStream(localInputStream, 32768), paramString.getContentLength());
    }
    catch (IOException localIOException1)
    {
      paramString = paramString.getErrorStream();
      byte[] arrayOfByte = new byte[32768];
      try
      {
        do
        {
          i = paramString.read(arrayOfByte, 0, 32768);
        } while (i != -1);
        com.d.a.c.b.a(paramString);
      }
      catch (IOException localIOException2)
      {
        for (;;)
        {
          localIOException2 = localIOException2;
          com.d.a.c.b.a(paramString);
        }
      }
      finally
      {
        localObject = finally;
        com.d.a.c.b.a(paramString);
        throw ((Throwable)localObject);
      }
      throw localIOException1;
    }
  }
  
  private HttpURLConnection b(String paramString)
  {
    paramString = (HttpURLConnection)new URL(Uri.encode(paramString, "@#&=*+-_.,:!?()/~'%")).openConnection();
    paramString.setConnectTimeout(b);
    paramString.setReadTimeout(c);
    return paramString;
  }
  
  public final InputStream a(String paramString, Object paramObject)
  {
    switch (1.a[b.a.a(paramString).ordinal()])
    {
    default: 
      throw new UnsupportedOperationException(String.format("UIL doesn't support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))", new Object[] { paramString }));
    case 1: 
    case 2: 
      return a(paramString);
    case 3: 
      paramString = b.a.c.c(paramString);
      return new com.d.a.b.a.a(new BufferedInputStream(new FileInputStream(paramString), 32768), (int)new File(paramString).length());
    case 4: 
      paramObject = a.getContentResolver();
      Uri localUri = Uri.parse(paramString);
      String str = a.getContentResolver().getType(localUri);
      if (str == null) {}
      for (boolean bool = false; bool; bool = str.startsWith("video/"))
      {
        paramString = MediaStore.Video.Thumbnails.getThumbnail((ContentResolver)paramObject, Long.valueOf(localUri.getLastPathSegment()).longValue(), 1, null);
        if (paramString == null) {
          break label241;
        }
        paramObject = new ByteArrayOutputStream();
        paramString.compress(Bitmap.CompressFormat.PNG, 0, (OutputStream)paramObject);
        return new ByteArrayInputStream(((ByteArrayOutputStream)paramObject).toByteArray());
      }
      if (paramString.startsWith("content://com.android.contacts/")) {
        return ContactsContract.Contacts.openContactPhotoInputStream((ContentResolver)paramObject, localUri);
      }
      return ((ContentResolver)paramObject).openInputStream(localUri);
    case 5: 
      label241:
      paramString = b.a.e.c(paramString);
      return a.getAssets().open(paramString);
    }
    int i = Integer.parseInt(b.a.f.c(paramString));
    return a.getResources().openRawResource(i);
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */