package com.conviva.utils;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.PowerManager;
import android.os.Process;
import android.util.Log;
import com.conviva.platforms.ConvivaSSLSocketFactory;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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

public class Utils
  extends PlatformUtils
{
  private static Context _appContext = null;
  private static final String _clientIdKey = "clId";
  private static final String _convivaJsonFilename = "conviva.json";
  private static Map<String, String> _platformMetadata = null;
  private static boolean _traceOverride = false;
  
  private Utils(Settings paramSettings, Context paramContext)
  {
    super(paramSettings);
    _appContext = paramContext;
    _PLATFORM_VER = Build.VERSION.RELEASE;
  }
  
  public static PlatformUtils CreateUtils(Map<String, Object> paramMap, Context paramContext)
  {
    if (_instance == null)
    {
      Settings localSettings = new Settings();
      localSettings.changeSettings(paramMap);
      _instance = new Utils(localSettings, paramContext);
      _traceOverride = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/conviva_debug.txt").exists();
      return _instance;
    }
    _instance.getSettings().changeSettings(paramMap);
    paramMap = _instance;
    _referenceCount += 1;
    return _instance;
  }
  
  private void writeClientId()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("clId", clientId);
    jsonEncode(localHashMap, new CallableWithParameters.With1()
    {
      /* Error */
      public void exec(String paramAnonymousString)
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_2
        //   2: invokestatic 36	com/conviva/utils/Utils:access$000	()Landroid/content/Context;
        //   5: ldc 38
        //   7: iconst_0
        //   8: invokevirtual 44	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
        //   11: astore 4
        //   13: aload 4
        //   15: astore_2
        //   16: aload 4
        //   18: astore_3
        //   19: aload 4
        //   21: aload_1
        //   22: invokevirtual 48	java/lang/String:getBytes	()[B
        //   25: invokevirtual 54	java/io/FileOutputStream:write	([B)V
        //   28: aload 4
        //   30: astore_2
        //   31: aload 4
        //   33: astore_3
        //   34: aload 4
        //   36: invokevirtual 57	java/io/FileOutputStream:flush	()V
        //   39: aload 4
        //   41: astore_2
        //   42: aload 4
        //   44: astore_3
        //   45: aload 4
        //   47: invokevirtual 60	java/io/FileOutputStream:close	()V
        //   50: aload 4
        //   52: ifnull +8 -> 60
        //   55: aload 4
        //   57: invokevirtual 60	java/io/FileOutputStream:close	()V
        //   60: return
        //   61: astore_1
        //   62: aload_1
        //   63: invokevirtual 63	java/io/IOException:printStackTrace	()V
        //   66: return
        //   67: astore_1
        //   68: aload_2
        //   69: astore_3
        //   70: aload_0
        //   71: getfield 18	com/conviva/utils/Utils$1:this$0	Lcom/conviva/utils/Utils;
        //   74: ldc 65
        //   76: invokevirtual 68	com/conviva/utils/Utils:log	(Ljava/lang/String;)V
        //   79: aload_2
        //   80: ifnull -20 -> 60
        //   83: aload_2
        //   84: invokevirtual 60	java/io/FileOutputStream:close	()V
        //   87: return
        //   88: astore_1
        //   89: aload_1
        //   90: invokevirtual 63	java/io/IOException:printStackTrace	()V
        //   93: return
        //   94: astore_1
        //   95: aconst_null
        //   96: astore_3
        //   97: aload_3
        //   98: ifnull +7 -> 105
        //   101: aload_3
        //   102: invokevirtual 60	java/io/FileOutputStream:close	()V
        //   105: aload_1
        //   106: athrow
        //   107: astore_2
        //   108: aload_2
        //   109: invokevirtual 63	java/io/IOException:printStackTrace	()V
        //   112: goto -7 -> 105
        //   115: astore_1
        //   116: goto -19 -> 97
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	119	0	this	1
        //   0	119	1	paramAnonymousString	String
        //   1	83	2	localObject1	Object
        //   107	2	2	localIOException	java.io.IOException
        //   18	84	3	localObject2	Object
        //   11	45	4	localFileOutputStream	java.io.FileOutputStream
        // Exception table:
        //   from	to	target	type
        //   55	60	61	java/io/IOException
        //   2	13	67	java/lang/Exception
        //   19	28	67	java/lang/Exception
        //   34	39	67	java/lang/Exception
        //   45	50	67	java/lang/Exception
        //   83	87	88	java/io/IOException
        //   2	13	94	finally
        //   101	105	107	java/io/IOException
        //   19	28	115	finally
        //   34	39	115	finally
        //   45	50	115	finally
        //   70	79	115	finally
      }
    });
  }
  
  public void deleteLocalData() {}
  
  public Map<String, String> getPlatformMetadata()
  {
    if (_platformMetadata == null)
    {
      HashMap localHashMap = new HashMap();
      _platformMetadata = localHashMap;
      localHashMap.put("sch", "and1");
    }
    try
    {
      _platformMetadata.put("dv", "android");
      _platformMetadata.put("dvt", "Mobile");
      _platformMetadata.put("os", "AND");
      _platformMetadata.put("osv", Build.VERSION.RELEASE);
      _platformMetadata.put("manu", Build.MANUFACTURER);
      _platformMetadata.put("mod", Build.MODEL);
      return _platformMetadata;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void httpRequest(Boolean paramBoolean, String paramString1, String paramString2, String paramString3, CallableWithParameters.With1<String> paramWith1)
  {
    HTTPTask localHTTPTask = new HTTPTask(null);
    localHTTPTask.setState(paramBoolean, paramString1, paramString2, paramString3, paramWith1);
    new Thread(localHTTPTask).start();
  }
  
  public Boolean inSleepingMode()
  {
    if (!((PowerManager)_appContext.getSystemService("power")).isScreenOn()) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public Boolean isVisible()
  {
    int j = Process.myPid();
    List localList = ((ActivityManager)_appContext.getSystemService("activity")).getRunningAppProcesses();
    if (localList == null) {
      return Boolean.valueOf(false);
    }
    int i = 0;
    while (i < localList.size())
    {
      if (getpid == j)
      {
        if (getimportance <= 200) {
          return Boolean.valueOf(true);
        }
        return Boolean.valueOf(false);
      }
      i += 1;
    }
    return Boolean.valueOf(true);
  }
  
  public void logConsole(String paramString)
  {
    if (((_settings.enableLogging) || (_traceOverride)) && (paramString.contains("ERROR:"))) {
      Log.e("CONVIVA", paramString);
    }
  }
  
  public void setClientIdFromServer(String paramString)
  {
    if (!paramString.equals(clientId))
    {
      clientId = paramString;
      log("Setting the client id to " + paramString + " (from server)");
      writeClientId();
    }
  }
  
  public void startFetchClientId()
  {
    new Thread(new Runnable()
    {
      /* Error */
      public void run()
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: aconst_null
        //   3: astore 5
        //   5: invokestatic 28	com/conviva/utils/Utils:access$000	()Landroid/content/Context;
        //   8: ldc 30
        //   10: invokevirtual 36	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
        //   13: invokevirtual 42	java/io/File:exists	()Z
        //   16: ifeq +293 -> 309
        //   19: new 44	java/lang/StringBuffer
        //   22: dup
        //   23: ldc 46
        //   25: invokespecial 49	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
        //   28: astore 4
        //   30: invokestatic 28	com/conviva/utils/Utils:access$000	()Landroid/content/Context;
        //   33: ldc 30
        //   35: invokevirtual 53	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
        //   38: astore_2
        //   39: aload_2
        //   40: astore_3
        //   41: aload_3
        //   42: astore_2
        //   43: sipush 1024
        //   46: newarray <illegal type>
        //   48: astore 6
        //   50: aload_3
        //   51: astore_2
        //   52: aload_3
        //   53: aload 6
        //   55: invokevirtual 59	java/io/FileInputStream:read	([B)I
        //   58: istore_1
        //   59: iload_1
        //   60: iconst_m1
        //   61: if_icmpeq +146 -> 207
        //   64: aload_3
        //   65: astore_2
        //   66: aload 4
        //   68: new 61	java/lang/String
        //   71: dup
        //   72: aload 6
        //   74: iconst_0
        //   75: iload_1
        //   76: invokespecial 64	java/lang/String:<init>	([BII)V
        //   79: invokevirtual 68	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   82: pop
        //   83: goto -33 -> 50
        //   86: astore_2
        //   87: aload_3
        //   88: astore_2
        //   89: aload_0
        //   90: getfield 15	com/conviva/utils/Utils$1LoadDataTask:this$0	Lcom/conviva/utils/Utils;
        //   93: ldc 70
        //   95: invokevirtual 73	com/conviva/utils/Utils:err	(Ljava/lang/String;)V
        //   98: aload_3
        //   99: ifnull +7 -> 106
        //   102: aload_3
        //   103: invokevirtual 76	java/io/FileInputStream:close	()V
        //   106: aconst_null
        //   107: astore_2
        //   108: aload 5
        //   110: astore_3
        //   111: aload_2
        //   112: ifnull +29 -> 141
        //   115: aload 5
        //   117: astore_3
        //   118: aload_2
        //   119: ldc 78
        //   121: invokeinterface 84 2 0
        //   126: ifeq +15 -> 141
        //   129: aload_2
        //   130: ldc 78
        //   132: invokeinterface 88 2 0
        //   137: invokevirtual 92	java/lang/Object:toString	()Ljava/lang/String;
        //   140: astore_3
        //   141: aload_3
        //   142: ifnull +141 -> 283
        //   145: aload_3
        //   146: ldc 94
        //   148: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
        //   151: ifne +132 -> 283
        //   154: aload_3
        //   155: ldc 99
        //   157: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
        //   160: ifne +123 -> 283
        //   163: aload_3
        //   164: invokevirtual 103	java/lang/String:length	()I
        //   167: ifle +116 -> 283
        //   170: aload_0
        //   171: getfield 15	com/conviva/utils/Utils$1LoadDataTask:this$0	Lcom/conviva/utils/Utils;
        //   174: aload_3
        //   175: putfield 107	com/conviva/utils/Utils:clientId	Ljava/lang/String;
        //   178: aload_0
        //   179: getfield 15	com/conviva/utils/Utils$1LoadDataTask:this$0	Lcom/conviva/utils/Utils;
        //   182: new 109	java/lang/StringBuilder
        //   185: dup
        //   186: ldc 111
        //   188: invokespecial 112	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   191: aload_3
        //   192: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   195: ldc 117
        //   197: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   200: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   203: invokevirtual 121	com/conviva/utils/Utils:log	(Ljava/lang/String;)V
        //   206: return
        //   207: aload_3
        //   208: astore_2
        //   209: aload_3
        //   210: invokevirtual 76	java/io/FileInputStream:close	()V
        //   213: aload_3
        //   214: astore_2
        //   215: aload_0
        //   216: getfield 15	com/conviva/utils/Utils$1LoadDataTask:this$0	Lcom/conviva/utils/Utils;
        //   219: aload 4
        //   221: invokevirtual 122	java/lang/StringBuffer:toString	()Ljava/lang/String;
        //   224: invokevirtual 126	com/conviva/utils/Utils:jsonDecode	(Ljava/lang/String;)Ljava/util/Map;
        //   227: astore 4
        //   229: aload_3
        //   230: ifnull +7 -> 237
        //   233: aload_3
        //   234: invokevirtual 76	java/io/FileInputStream:close	()V
        //   237: aload 4
        //   239: astore_2
        //   240: goto -132 -> 108
        //   243: astore_2
        //   244: aload_2
        //   245: invokevirtual 129	java/io/IOException:printStackTrace	()V
        //   248: aload 4
        //   250: astore_2
        //   251: goto -143 -> 108
        //   254: astore_2
        //   255: aload_2
        //   256: invokevirtual 129	java/io/IOException:printStackTrace	()V
        //   259: aconst_null
        //   260: astore_2
        //   261: goto -153 -> 108
        //   264: astore_2
        //   265: aload_3
        //   266: ifnull +7 -> 273
        //   269: aload_3
        //   270: invokevirtual 76	java/io/FileInputStream:close	()V
        //   273: aload_2
        //   274: athrow
        //   275: astore_3
        //   276: aload_3
        //   277: invokevirtual 129	java/io/IOException:printStackTrace	()V
        //   280: goto -7 -> 273
        //   283: aload_0
        //   284: getfield 15	com/conviva/utils/Utils$1LoadDataTask:this$0	Lcom/conviva/utils/Utils;
        //   287: ldc -125
        //   289: invokevirtual 121	com/conviva/utils/Utils:log	(Ljava/lang/String;)V
        //   292: return
        //   293: astore 4
        //   295: aload_2
        //   296: astore_3
        //   297: aload 4
        //   299: astore_2
        //   300: goto -35 -> 265
        //   303: astore_2
        //   304: aconst_null
        //   305: astore_3
        //   306: goto -219 -> 87
        //   309: aconst_null
        //   310: astore_2
        //   311: goto -203 -> 108
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	314	0	this	1LoadDataTask
        //   58	18	1	i	int
        //   38	28	2	localObject1	Object
        //   86	1	2	localException1	Exception
        //   88	152	2	localObject2	Object
        //   243	2	2	localIOException1	java.io.IOException
        //   250	1	2	localObject3	Object
        //   254	2	2	localIOException2	java.io.IOException
        //   260	1	2	localObject4	Object
        //   264	32	2	localObject5	Object
        //   299	1	2	localObject6	Object
        //   303	1	2	localException2	Exception
        //   310	1	2	localObject7	Object
        //   1	269	3	localObject8	Object
        //   275	2	3	localIOException3	java.io.IOException
        //   296	10	3	localObject9	Object
        //   28	221	4	localObject10	Object
        //   293	5	4	localObject11	Object
        //   3	113	5	localObject12	Object
        //   48	25	6	arrayOfByte	byte[]
        // Exception table:
        //   from	to	target	type
        //   43	50	86	java/lang/Exception
        //   52	59	86	java/lang/Exception
        //   66	83	86	java/lang/Exception
        //   209	213	86	java/lang/Exception
        //   215	229	86	java/lang/Exception
        //   233	237	243	java/io/IOException
        //   102	106	254	java/io/IOException
        //   30	39	264	finally
        //   269	273	275	java/io/IOException
        //   43	50	293	finally
        //   52	59	293	finally
        //   66	83	293	finally
        //   89	98	293	finally
        //   209	213	293	finally
        //   215	229	293	finally
        //   30	39	303	java/lang/Exception
      }
    }).start();
  }
  
  private class HTTPTask
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
    
    private HTTPTask() {}
    
    private void doneHandler(Exception paramException, byte[] paramArrayOfByte)
    {
      CallableWithParameters.With1 localWith1 = _callback;
      _callback = null;
      if (paramException != null) {
        err("Failed to send heartbeat: " + paramException.toString());
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
        log("Error in creating SSL client");
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
}

/* Location:
 * Qualified Name:     com.conviva.utils.Utils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */