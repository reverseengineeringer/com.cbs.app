package com.cbs.app.androiddata;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public class CBSSSLSocketFactory
  extends SSLSocketFactory
{
  private static final String[] a = { "TLSv1.2", "TLSv1.1", "TLSv1" };
  private SSLContext b = SSLContext.getInstance("TLSv1.2");
  
  public CBSSSLSocketFactory()
  {
    b.init(null, null, null);
  }
  
  public Socket createSocket(String paramString, int paramInt)
  {
    paramString = (SSLSocket)b.getSocketFactory().createSocket(paramString, paramInt);
    paramString.setEnabledProtocols(a);
    return paramString;
  }
  
  public Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    paramString = (SSLSocket)b.getSocketFactory().createSocket(paramString, paramInt1, paramInetAddress, paramInt2);
    paramString.setEnabledProtocols(a);
    return paramString;
  }
  
  public Socket createSocket(InetAddress paramInetAddress, int paramInt)
  {
    paramInetAddress = (SSLSocket)b.getSocketFactory().createSocket(paramInetAddress, paramInt);
    paramInetAddress.setEnabledProtocols(a);
    return paramInetAddress;
  }
  
  public Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
  {
    paramInetAddress1 = (SSLSocket)b.getSocketFactory().createSocket(paramInetAddress1, paramInt1, paramInetAddress2, paramInt2);
    paramInetAddress1.setEnabledProtocols(a);
    return paramInetAddress1;
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    paramSocket = (SSLSocket)b.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
    paramSocket.setEnabledProtocols(a);
    return paramSocket;
  }
  
  public String[] getDefaultCipherSuites()
  {
    return b.getSocketFactory().getDefaultCipherSuites();
  }
  
  public String[] getSupportedCipherSuites()
  {
    return b.getSocketFactory().getSupportedCipherSuites();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.CBSSSLSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */