package com.conviva.platforms;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class ConvivaSSLSocketFactory$1
  implements X509TrustManager
{
  ConvivaSSLSocketFactory$1(ConvivaSSLSocketFactory paramConvivaSSLSocketFactory) {}
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.conviva.platforms.ConvivaSSLSocketFactory.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */