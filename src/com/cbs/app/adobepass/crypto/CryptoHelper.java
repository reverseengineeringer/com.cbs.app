package com.cbs.app.adobepass.crypto;

import android.util.Base64;
import android.util.Log;

public class CryptoHelper
{
  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    try
    {
      paramArrayOfByte = new String(Base64.encode(paramArrayOfByte, 0));
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      Log.e("CryptoHelper", paramArrayOfByte.getMessage());
    }
    return null;
  }
  
  public static String getSignatureAlgorithm()
  {
    return "SHA256WithRSA";
  }
  
  public static String getSymmetricEncryptionAlgorithm()
  {
    return "AES/CBC/PKCS5Padding";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adobepass.crypto.CryptoHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */