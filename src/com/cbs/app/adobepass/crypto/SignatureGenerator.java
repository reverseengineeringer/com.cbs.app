package com.cbs.app.adobepass.crypto;

import android.content.res.Resources;
import android.util.Base64;
import android.util.Log;
import java.security.Signature;
import java.util.HashMap;
import javax.crypto.Cipher;

public class SignatureGenerator
{
  private static final HashMap<Integer, SignatureGenerator> b = new HashMap();
  protected IKeyInfo a = null;
  
  private SignatureGenerator() {}
  
  private SignatureGenerator(SigningCredential paramSigningCredential)
  {
    a = paramSigningCredential;
  }
  
  public static SignatureGenerator a(Resources paramResources)
  {
    try
    {
      if (!b.containsKey(Integer.valueOf(2048)))
      {
        String str = paramResources.getString(2131230988);
        paramResources = new SigningCredential(paramResources.openRawResource(2131165184), str);
        com.adobe.adobepass.accessenabler.d.c.a("SignatureGenerator", "Credential file loaded.");
        com.adobe.adobepass.accessenabler.d.c.a("SignatureGenerator", "Initializing Signature generator.");
        b.put(Integer.valueOf(2048), new SignatureGenerator(paramResources));
      }
      paramResources = (SignatureGenerator)b.get(Integer.valueOf(2048));
      return paramResources;
    }
    finally {}
  }
  
  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length + paramArrayOfByte2.length];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, paramArrayOfByte1.length, paramArrayOfByte2.length);
    return arrayOfByte;
  }
  
  public final String a(String paramString)
  {
    try
    {
      Signature localSignature = Signature.getInstance(CryptoHelper.getSignatureAlgorithm());
      localSignature.initSign(a.getPrivateKey());
      localSignature.update(paramString.getBytes());
      paramString = CryptoHelper.a(localSignature.sign());
      return paramString;
    }
    catch (Exception paramString)
    {
      Log.e("SignatureGenerator", paramString.toString());
      throw new com.adobe.adobepass.accessenabler.api.c();
    }
  }
  
  public final String b(String paramString)
  {
    for (;;)
    {
      byte[] arrayOfByte;
      int i;
      Object localObject1;
      Object localObject3;
      try
      {
        arrayOfByte = Base64.decode(paramString, 0);
        Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        localCipher.init(2, a.getPrivateKey());
        if (arrayOfByte.length <= 256)
        {
          paramString = localCipher.doFinal(arrayOfByte);
          return new String(paramString, "UTF-8");
        }
        localObject2 = new byte['Ā'];
        paramString = new byte[0];
        i = 0;
        if (i < arrayOfByte.length)
        {
          localObject1 = localObject2;
          localObject3 = paramString;
          if (i <= 0) {
            break label182;
          }
          localObject1 = localObject2;
          localObject3 = paramString;
          if (i % 256 != 0) {
            break label182;
          }
          localObject3 = a(paramString, localCipher.doFinal((byte[])localObject2));
          if (i + 256 > arrayOfByte.length)
          {
            j = arrayOfByte.length - i;
            localObject1 = new byte[j];
            break label182;
          }
        }
        else
        {
          paramString = a(paramString, localCipher.doFinal((byte[])localObject2));
          continue;
        }
        int j = 256;
      }
      catch (Exception paramString)
      {
        Log.e("SignatureGenerator", paramString.toString());
        throw new com.adobe.adobepass.accessenabler.api.c();
      }
      continue;
      label182:
      localObject1[(i % 256)] = arrayOfByte[i];
      i += 1;
      Object localObject2 = localObject1;
      paramString = (String)localObject3;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adobepass.crypto.SignatureGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */