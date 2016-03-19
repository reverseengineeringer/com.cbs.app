package com.flurry.sdk;

import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class bs
{
  private static final String a = bs.class.getSimpleName();
  
  public static double a(double paramDouble)
  {
    return Math.round(Math.pow(10.0D, 3.0D) * paramDouble) / Math.pow(10.0D, 3.0D);
  }
  
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte['Ѐ'];
    int i;
    for (long l = 0L;; l += i)
    {
      i = paramInputStream.read(arrayOfByte);
      if (i < 0) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    return l;
  }
  
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    Uri localUri;
    do
    {
      return paramString;
      localUri = Uri.parse(paramString);
    } while ((localUri == null) || (localUri.getScheme() != null));
    return "http://" + paramString;
  }
  
  public static void a()
  {
    if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
      throw new IllegalStateException("Must be called from a background thread!");
    }
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Throwable paramCloseable) {}
  }
  
  public static String b(String paramString)
  {
    String str;
    if (paramString == null) {
      str = "";
    }
    do
    {
      return str;
      str = paramString;
    } while (paramString.length() <= 255);
    return paramString.substring(0, 255);
  }
  
  public static String c(String paramString)
  {
    try
    {
      String str = URLDecoder.decode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      am.a(5, a, "Cannot decode '" + paramString + "'");
    }
    return "";
  }
  
  public static byte[] d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      am.a(5, a, "Unsupported UTF-8: " + paramString.getMessage());
    }
    return null;
  }
  
  public static byte[] e(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      localMessageDigest.update(paramString.getBytes(), 0, paramString.length());
      paramString = localMessageDigest.digest();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      am.a(6, a, "Unsupported SHA1: " + paramString.getMessage());
    }
    return null;
  }
  
  public static long f(String paramString)
  {
    long l2;
    if (paramString == null)
    {
      l2 = 0L;
      return l2;
    }
    int j = paramString.length();
    long l1 = 1125899906842597L;
    int i = 0;
    for (;;)
    {
      l2 = l1;
      if (i >= j) {
        break;
      }
      l2 = paramString.charAt(i);
      i += 1;
      l1 = l2 + l1 * 31L;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */