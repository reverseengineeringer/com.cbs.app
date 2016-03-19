package com.urbanairship.richpush;

import com.urbanairship.d.h;
import com.urbanairship.j;
import com.urbanairship.l;
import com.urbanairship.p;
import java.io.UnsupportedEncodingException;

public final class e
{
  private final l a;
  
  e(l paraml)
  {
    a = paraml;
    paraml = a.a("com.urbanairship.user.PASSWORD");
    if (!h.a(paraml))
    {
      paraml = b(paraml, a.a("com.urbanairship.user.ID"));
      if (a.b("com.urbanairship.user.USER_TOKEN", paraml)) {
        a.c("com.urbanairship.user.PASSWORD");
      }
    }
  }
  
  public static boolean a()
  {
    Object localObject = p.a();
    String str = ((p)localObject).n().b().b();
    localObject = ((p)localObject).n().b().c();
    return (!h.a(str)) && (!h.a((String)localObject));
  }
  
  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length];
    int i = 0;
    while (i < paramArrayOfByte1.length)
    {
      arrayOfByte[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[(i % paramArrayOfByte2.length)]));
      i += 1;
    }
    return arrayOfByte;
  }
  
  private static String b(String paramString1, String paramString2)
  {
    if ((h.a(paramString1)) || (h.a(paramString2))) {
      return null;
    }
    paramString1 = a(paramString1.getBytes(), paramString2.getBytes());
    paramString2 = new StringBuilder();
    int j = paramString1.length;
    int i = 0;
    while (i < j)
    {
      paramString2.append(String.format("%02x", new Object[] { Byte.valueOf(paramString1[i]) }));
      i += 1;
    }
    return paramString2.toString();
  }
  
  private static String c(String paramString1, String paramString2)
  {
    if ((h.a(paramString1)) || (h.a(paramString2))) {}
    int j;
    do
    {
      return null;
      j = paramString1.length();
    } while (j % 2 != 0);
    try
    {
      byte[] arrayOfByte = new byte[j / 2];
      int i = 0;
      while (i < j)
      {
        arrayOfByte[(i / 2)] = Byte.parseByte(paramString1.substring(i, i + 2), 16);
        i += 2;
      }
      paramString1 = new String(a(arrayOfByte, paramString2.getBytes()), "UTF-8");
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      j.a("RichPushUser - Unable to decode string. " + paramString1.getMessage());
      return null;
    }
    catch (NumberFormatException paramString1)
    {
      j.a("RichPushUser - String contains invalid hex numbers. " + paramString1.getMessage());
    }
    return null;
  }
  
  final void a(String paramString1, String paramString2)
  {
    a.a("com.urbanairship.user.ID", paramString1);
    a.a("com.urbanairship.user.USER_TOKEN", b(paramString2, paramString1));
  }
  
  public final String b()
  {
    if (a.a("com.urbanairship.user.USER_TOKEN") != null) {
      return a.a("com.urbanairship.user.ID");
    }
    return null;
  }
  
  public final String c()
  {
    if (a.a("com.urbanairship.user.ID") != null) {
      return c(a.a("com.urbanairship.user.USER_TOKEN"), b());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */