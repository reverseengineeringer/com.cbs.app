package com.conviva.platforms;

import java.net.Socket;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class ConvivaSSLSocketFactory
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  private SSLContext sslContext = SSLContext.getInstance("TLS");
  
  public ConvivaSSLSocketFactory(KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    paramKeyStore = new X509TrustManager()
    {
      public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString) {}
      
      public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString) {}
      
      public X509Certificate[] getAcceptedIssuers()
      {
        return null;
      }
    };
    sslContext.init(null, new TrustManager[] { paramKeyStore }, null);
  }
  
  public ConvivaSSLSocketFactory(SSLContext paramSSLContext)
  {
    super(null);
    sslContext = paramSSLContext;
  }
  
  public Socket createSocket()
  {
    return sslContext.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.conviva.platforms.ConvivaSSLSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */