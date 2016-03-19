package com.cbs.app.androiddata;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5Util
{
  public static String a(String paramString)
  {
    try
    {
      paramString = MessageDigest.getInstance("MD5").digest(paramString.getBytes("CP1252"));
      StringBuilder localStringBuilder = new StringBuilder();
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        localStringBuilder.append(Integer.toHexString(paramString[i] & 0xFF | 0x100).substring(1, 3));
        i += 1;
      }
      paramString = localStringBuilder.toString();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
      return null;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.Md5Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */