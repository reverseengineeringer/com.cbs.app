package com.cbs.app.adobepass.crypto;

import android.util.Log;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStore.PasswordProtection;
import java.security.KeyStore.PrivateKeyEntry;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.util.Enumeration;

public class SigningCredential
  implements ICertificateInfo, IKeyInfo
{
  protected KeyStore.PrivateKeyEntry a = null;
  
  public SigningCredential(InputStream paramInputStream, String paramString)
  {
    a = a(paramInputStream, paramString);
  }
  
  private static KeyStore.PrivateKeyEntry a(InputStream paramInputStream, String paramString)
  {
    if (paramInputStream == null) {
      return null;
    }
    try
    {
      KeyStore localKeyStore = KeyStore.getInstance("PKCS12");
      new StringBuilder("KS provider : ").append(localKeyStore.getProvider());
      localKeyStore.load(paramInputStream, paramString.toCharArray());
      Enumeration localEnumeration = localKeyStore.aliases();
      paramInputStream = null;
      while (localEnumeration.hasMoreElements())
      {
        String str = (String)localEnumeration.nextElement();
        paramInputStream = str;
        if (localKeyStore.isKeyEntry(str)) {
          paramInputStream = str;
        }
      }
      if (paramInputStream != null)
      {
        paramInputStream = (KeyStore.PrivateKeyEntry)localKeyStore.getEntry(paramInputStream, new KeyStore.PasswordProtection(paramString.toCharArray()));
        return paramInputStream;
      }
    }
    catch (Exception paramInputStream)
    {
      Log.e("SigningCredential", paramInputStream.getMessage());
    }
    return null;
  }
  
  public Certificate getCertificate()
  {
    if (a == null) {
      return null;
    }
    return a.getCertificate();
  }
  
  public Certificate[] getCertificateChain()
  {
    if (a == null) {
      return null;
    }
    return a.getCertificateChain();
  }
  
  public PrivateKey getPrivateKey()
  {
    if (a == null) {
      return null;
    }
    return a.getPrivateKey();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adobepass.crypto.SigningCredential
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */