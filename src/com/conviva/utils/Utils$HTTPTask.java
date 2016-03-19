package com.conviva.utils;

import com.conviva.platforms.ConvivaSSLSocketFactory;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EncodingUtils;

class Utils$HTTPTask
  implements Runnable
{
  private CallableWithParameters.With1<String> _callback = null;
  private HttpClient _client = null;
  private String _contentT;
  private String _data;
  private Boolean _isPost;
  private HttpUriRequest _method = null;
  private ResponseHandler<Void> _responseHandler;
  private String _url;
  
  private Utils$HTTPTask(Utils paramUtils) {}
  
  private void doneHandler(Exception paramException, byte[] paramArrayOfByte)
  {
    CallableWithParameters.With1 localWith1 = _callback;
    _callback = null;
    if (paramException != null) {
      this$0.err("Failed to send heartbeat: " + paramException.toString());
    }
    if (paramArrayOfByte == null)
    {
      paramArrayOfByte = null;
      if (localWith1 != null) {
        if (paramException != null) {
          break label72;
        }
      }
    }
    for (;;)
    {
      localWith1.exec(paramArrayOfByte);
      return;
      paramArrayOfByte = EncodingUtils.getString(paramArrayOfByte, "UTF-8");
      break;
      label72:
      paramArrayOfByte = null;
    }
  }
  
  private Boolean shouldUseSsl(String paramString)
  {
    return Boolean.valueOf(paramString.contains("https://"));
  }
  
  private HttpClient sslClient(HttpClient paramHttpClient)
  {
    try
    {
      Object localObject1 = new X509TrustManager()
      {
        public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString) {}
        
        public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString) {}
        
        public X509Certificate[] getAcceptedIssuers()
        {
          return null;
        }
      };
      Object localObject2 = SSLContext.getInstance("TLS");
      ((SSLContext)localObject2).init(null, new TrustManager[] { localObject1 }, null);
      localObject1 = new ConvivaSSLSocketFactory((SSLContext)localObject2);
      ((SSLSocketFactory)localObject1).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      localObject2 = paramHttpClient.getConnectionManager();
      ((ClientConnectionManager)localObject2).getSchemeRegistry().register(new Scheme("https", (SocketFactory)localObject1, 443));
      paramHttpClient = new DefaultHttpClient((ClientConnectionManager)localObject2, paramHttpClient.getParams());
      return paramHttpClient;
    }
    catch (Exception paramHttpClient)
    {
      this$0.log("Error in creating SSL client");
    }
    return null;
  }
  
  public void run()
  {
    Object localObject = new BasicHttpParams();
    HttpProtocolParams.setVersion((HttpParams)localObject, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setContentCharset((HttpParams)localObject, "UTF-8");
    HttpProtocolParams.setUseExpectContinue((HttpParams)localObject, false);
    HttpConnectionParams.setConnectionTimeout((HttpParams)localObject, 60000);
    localObject = new DefaultHttpClient((HttpParams)localObject);
    if (shouldUseSsl(_url).booleanValue()) {
      _client = sslClient((HttpClient)localObject);
    }
    for (;;)
    {
      try
      {
        if (_isPost.booleanValue())
        {
          localObject = new HttpPost(_url);
          ((HttpPost)localObject).setEntity(new ByteArrayEntity(_data.getBytes("UTF-8")));
          _method = ((HttpUriRequest)localObject);
          if (_contentT == null)
          {
            localObject = "application/json";
            _method.setHeader("Content-Type", (String)localObject);
            _responseHandler = new HttpResponseHandler(null);
            _client.execute(_method, _responseHandler);
            return;
            _client = ((HttpClient)localObject);
          }
        }
        else
        {
          _method = new HttpGet(_url);
          continue;
        }
        String str = _contentT;
      }
      catch (Exception localException)
      {
        doneHandler(localException, null);
        return;
      }
    }
  }
  
  public void setState(Boolean paramBoolean, String paramString1, String paramString2, String paramString3, CallableWithParameters.With1<String> paramWith1)
  {
    _isPost = paramBoolean;
    _url = paramString1;
    _data = paramString2;
    _contentT = paramString3;
    _callback = paramWith1;
  }
  
  private class HttpResponseHandler
    implements ResponseHandler<Void>
  {
    private HttpResponseHandler() {}
    
    public Void handleResponse(HttpResponse paramHttpResponse)
    {
      int i;
      try
      {
        i = paramHttpResponse.getStatusLine().getStatusCode();
        if (i != 200) {
          break label95;
        }
        paramHttpResponse = paramHttpResponse.getEntity().getContent();
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        byte[] arrayOfByte = new byte['Ѐ'];
        for (;;)
        {
          i = paramHttpResponse.read(arrayOfByte);
          if (i == -1) {
            break;
          }
          localByteArrayOutputStream.write(arrayOfByte, 0, i);
        }
        Utils.HTTPTask.this.doneHandler(null, localByteArrayOutputStream.toByteArray());
      }
      catch (Exception paramHttpResponse)
      {
        Utils.HTTPTask.this.doneHandler(paramHttpResponse, null);
        return null;
      }
      return null;
      label95:
      Utils.HTTPTask.this.doneHandler(new Exception("Status code in HTTP response is not OK: " + i), null);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.conviva.utils.Utils.HTTPTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */