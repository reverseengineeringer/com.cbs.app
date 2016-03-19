package com.cbs.app.androiddata;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.cbs.app.androiddata.model.DeviceData;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.StringTokenizer;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.HttpsURLConnection;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.Hex;

public class RequestHelper
{
  private static final ObjectMapper e = new ObjectMapper();
  private static final Object o = new Object();
  private static HashMap<String, Long> p = new HashMap();
  public ResponseModelListener a;
  private final Context b;
  private boolean c = true;
  private Class<? extends ResponseModel> d;
  private boolean f = false;
  private boolean g = true;
  private boolean h = false;
  private long i = 3600L;
  private boolean j = true;
  private String k;
  private String l;
  private DeviceData m;
  private String n;
  private boolean q = false;
  
  public RequestHelper(Context paramContext, Class<? extends ResponseModel> paramClass, ResponseModelListener paramResponseModelListener)
  {
    b = paramContext;
    d = paramClass;
    a = paramResponseModelListener;
  }
  
  private ResponseModel a(String paramString)
  {
    
    if (paramString != null) {}
    for (;;)
    {
      try
      {
        paramString = (ResponseModel)e.readValue(paramString, d);
        LG.a();
        return paramString;
      }
      catch (JsonParseException paramString)
      {
        Log.e("RequestHelper", "error1: " + paramString.getLocalizedMessage(), paramString);
        paramString = null;
        continue;
      }
      catch (JsonMappingException paramString)
      {
        Log.e("RequestHelper", "error2: " + paramString.getLocalizedMessage(), paramString);
        paramString = null;
        continue;
      }
      catch (IOException paramString)
      {
        Log.e("RequestHelper", "error3: " + paramString.getLocalizedMessage(), paramString);
      }
      paramString = null;
    }
  }
  
  private ResponseModel a(URL paramURL, String[] paramArrayOfString)
  {
    LG.a();
    Object localObject2 = null;
    boolean bool = a();
    new StringBuilder("isConnected: ").append(bool);
    LG.a();
    Object localObject1 = localObject2;
    int i1;
    if (bool) {
      i1 = 0;
    }
    for (;;)
    {
      if (i1 > 0)
      {
        new StringBuilder("sleeping ").append(i1);
        LG.a();
      }
      try
      {
        Thread.sleep(2000L);
        String str = c(paramURL, paramArrayOfString);
        int i2 = i1 + 1;
        if ((c) && (str == null))
        {
          i1 = i2;
          if (i2 < 3) {
            continue;
          }
        }
        localObject1 = localObject2;
        if (str != null)
        {
          if (f) {
            c(str);
          }
          localObject1 = a(str);
          paramURL = Md5Util.a(paramArrayOfString[1]);
          paramArrayOfString = new CacheEntry((ResponseModel)localObject1);
          paramArrayOfString.setTimeToLive(i);
          paramArrayOfString.setShowIfExpired(h);
          MemoryCache.a(paramURL, paramArrayOfString);
        }
        return (ResponseModel)localObject1;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          Log.e("RequestHelper", "error: " + localInterruptedException.getLocalizedMessage());
        }
      }
    }
  }
  
  private static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = new SecretKeySpec(paramString2.getBytes("UTF-8"), "HmacSHA1");
      Mac localMac = Mac.getInstance("HmacSHA1");
      localMac.init(paramString2);
      paramString1 = localMac.doFinal(paramString1.getBytes("UTF-8"));
      paramString1 = new String(new Hex().encode(paramString1), "UTF-8");
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      Log.e("RequestHelper", "error1: " + paramString1.getLocalizedMessage(), paramString1);
      return null;
    }
    catch (NoSuchAlgorithmException paramString1)
    {
      Log.e("RequestHelper", "error2: " + paramString1.getLocalizedMessage(), paramString1);
      return null;
    }
    catch (InvalidKeyException paramString1)
    {
      Log.e("RequestHelper", "error3: " + paramString1.getLocalizedMessage(), paramString1);
    }
    return null;
  }
  
  private String a(URL paramURL)
  {
    long l2 = System.currentTimeMillis();
    String str = paramURL.getProtocol();
    paramURL = paramURL.getHost();
    paramURL = str + "://" + paramURL + "/";
    paramURL = (Long)p.get(paramURL);
    if (paramURL != null) {}
    for (long l1 = paramURL.longValue();; l1 = 0L)
    {
      str = l1 + l2 + "|" + n;
      new StringBuilder("authToken: ").append(str);
      LG.a();
      try
      {
        paramURL = new SecretKeySpec(b("302a6a0d70a7e9b967f91d39fef3e387816e3095925ae4537bce96063311f9c5"), "AES");
        Object localObject = Cipher.getInstance("AES/CBC/PKCS5Padding");
        byte[] arrayOfByte2 = b();
        ((Cipher)localObject).init(1, paramURL, new IvParameterSpec(arrayOfByte2));
        localObject = ((Cipher)localObject).doFinal(str.getBytes("UTF-8"));
        byte[] arrayOfByte1 = new byte[arrayOfByte2.length + localObject.length + 2];
        paramURL = a((short)arrayOfByte2.length);
        arrayOfByte1[0] = paramURL[0];
        arrayOfByte1[1] = paramURL[1];
        int i3 = arrayOfByte2.length;
        int i2 = 0;
        int i1;
        int i4;
        for (paramURL = Integer.valueOf(2); i2 < i3; paramURL = Integer.valueOf(i4 + 1))
        {
          i1 = arrayOfByte2[i2];
          arrayOfByte1[paramURL.intValue()] = i1;
          i4 = paramURL.intValue();
          i2 += 1;
        }
        i3 = localObject.length;
        i2 = 0;
        while (i2 < i3)
        {
          i1 = localObject[i2];
          arrayOfByte1[paramURL.intValue()] = i1;
          paramURL = Integer.valueOf(paramURL.intValue() + 1);
          i2 += 1;
        }
        paramURL = URLEncoder.encode(new String(Base64.encodeBase64(arrayOfByte1), "UTF-8"), "UTF-8");
      }
      catch (InvalidKeyException paramURL)
      {
        for (;;)
        {
          Log.e("RequestHelper", "error1: " + paramURL.getMessage(), paramURL);
          paramURL = null;
        }
      }
      catch (InvalidAlgorithmParameterException paramURL)
      {
        for (;;)
        {
          Log.e("RequestHelper", "error2: " + paramURL.getMessage(), paramURL);
          paramURL = null;
        }
      }
      catch (BadPaddingException paramURL)
      {
        for (;;)
        {
          Log.e("RequestHelper", "error3: " + paramURL.getMessage(), paramURL);
          paramURL = null;
        }
      }
      catch (IllegalBlockSizeException paramURL)
      {
        for (;;)
        {
          Log.e("RequestHelper", "error4: " + paramURL.getMessage(), paramURL);
          paramURL = null;
        }
      }
      catch (UnsupportedEncodingException paramURL)
      {
        for (;;)
        {
          Log.e("RequestHelper", "error5: " + paramURL.getMessage(), paramURL);
          paramURL = null;
        }
      }
      catch (NoSuchAlgorithmException paramURL)
      {
        for (;;)
        {
          Log.e("RequestHelper", "error6: " + paramURL.getMessage(), paramURL);
          paramURL = null;
        }
      }
      catch (NoSuchPaddingException paramURL)
      {
        for (;;)
        {
          Log.e("RequestHelper", "error7: " + paramURL.getMessage(), paramURL);
          paramURL = null;
        }
      }
      new StringBuilder("final at: ").append(str);
      LG.a();
      return paramURL;
    }
  }
  
  private static void a(HttpURLConnection paramHttpURLConnection)
  {
    LG.a();
    paramHttpURLConnection = paramHttpURLConnection.getHeaderFields().entrySet().iterator();
    while (paramHttpURLConnection.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramHttpURLConnection.next();
      new StringBuilder("res head -> ").append((String)localEntry.getKey()).append(" : ").append(localEntry.getValue());
      LG.a();
    }
  }
  
  private boolean a()
  {
    
    if (b != null)
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)b.getSystemService("connectivity");
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      boolean bool1;
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnectedOrConnecting())) {
        bool1 = true;
      }
      for (;;)
      {
        LG.a();
        int i1 = 0;
        label52:
        bool2 = bool1;
        if (q) {
          return bool2;
        }
        bool2 = bool1;
        if (bool1) {
          return bool2;
        }
        bool2 = bool1;
        if (i1 >= 7) {
          return bool2;
        }
        new StringBuilder("connectedCounter: ").append(i1);
        LG.a();
        try
        {
          Thread.sleep(1000L);
          localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
          if ((localNetworkInfo != null) && (localNetworkInfo.isConnectedOrConnecting()))
          {
            bool1 = true;
            i1 += 1;
            break label52;
            bool1 = false;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            Log.e("RequestHelper", "e.msg: " + localInterruptedException.getLocalizedMessage());
            continue;
            bool1 = false;
          }
        }
      }
    }
    boolean bool2 = false;
    return bool2;
  }
  
  private static byte[] a(short paramShort)
  {
    byte[] arrayOfByte = new byte[2];
    int i1 = 0;
    while (i1 < 2)
    {
      arrayOfByte[i1] = ((byte)(paramShort >>> (1 - i1) * 8 & 0xFF));
      i1 += 1;
    }
    return arrayOfByte;
  }
  
  private HttpURLConnection b(URL paramURL, String... paramVarArgs)
  {
    
    if ((paramVarArgs != null) && (paramVarArgs.length > 1))
    {
      String str1 = paramVarArgs[0];
      Object localObject2 = paramVarArgs[1];
      Object localObject1 = localObject2;
      if (j)
      {
        localObject1 = localObject2;
        if (localObject2 != null)
        {
          if (((String)localObject2).contains("?")) {
            break label742;
          }
          localObject1 = (String)localObject2 + "?";
          localObject1 = (String)localObject1 + "at=" + a(paramURL);
        }
      }
      if (paramVarArgs.length > 3) {}
      for (paramVarArgs = paramVarArgs[2];; paramVarArgs = null)
      {
        new StringBuilder("urlStr: ").append((String)localObject1);
        LG.a();
        localObject2 = DataManager.getInstance().getConfiguration();
        if ((localObject2 != null) && (!((DataManagerConfiguration)localObject2).a())) {
          localObject1 = ((String)localObject1).replace("http://", "https://");
        }
        for (;;)
        {
          localObject2 = (HttpURLConnection)new URL((String)localObject1).openConnection();
          String str2 = paramURL.getProtocol();
          Object localObject3 = paramURL.getHost();
          str2 = str2 + "://" + (String)localObject3 + "/";
          new StringBuilder("hostUrl2: ").append(str2);
          LG.a();
          long l1 = 0L;
          localObject3 = (Long)p.get(str2);
          new StringBuilder("serverOffsetLongObj: ").append(localObject3);
          LG.a();
          if (localObject3 != null) {
            l1 = ((Long)p.get(str2)).longValue();
          }
          new StringBuilder("localServerTimeOffset: ").append(l1);
          LG.a();
          String str3;
          if (!j)
          {
            str2 = m.a();
            new StringBuilder("jsonDeviceData: ").append(str2);
            LG.a();
            str2 = new String(Base64.encodeBase64(str2.getBytes("UTF-8")), "UTF-8");
            new StringBuilder("base64DeviceData: ").append(str2);
            LG.a();
            l1 = (l1 + new Date().getTime()) / 1000L + 300L;
            new StringBuilder("expires: ").append(l1);
            LG.a();
            str3 = paramURL.getQuery();
            localObject3 = new StringBuilder().append(paramURL.getPath());
            if (str3 == null) {
              break label768;
            }
          }
          label742:
          label768:
          for (paramURL = "?" + str3;; paramURL = "")
          {
            paramURL = paramURL;
            new StringBuilder("endpoint: ").append(paramURL);
            LG.a();
            paramURL = a(l1 + str2 + paramURL, l);
            new StringBuilder("signature: ").append(paramURL);
            LG.a();
            new StringBuilder("API_KEY: ").append(k);
            LG.a();
            ((HttpURLConnection)localObject2).setRequestProperty("Accept", "application/json; charset=utf-8");
            ((HttpURLConnection)localObject2).setRequestProperty("device-data", str2);
            ((HttpURLConnection)localObject2).setRequestProperty("api-key", k);
            ((HttpURLConnection)localObject2).setRequestProperty("req-expires", Long.valueOf(l1).toString());
            ((HttpURLConnection)localObject2).setRequestProperty("signature", paramURL);
            ((HttpURLConnection)localObject2).setRequestMethod(str1);
            ((HttpURLConnection)localObject2).setRequestProperty("User-Agent", "CBSAndroid");
            ((HttpURLConnection)localObject2).setReadTimeout(6000);
            ((HttpURLConnection)localObject2).setConnectTimeout(4000);
            ((HttpURLConnection)localObject2).setInstanceFollowRedirects(true);
            ((HttpURLConnection)localObject2).setDoInput(true);
            if (str1.equals("POST"))
            {
              ((HttpURLConnection)localObject2).setDoOutput(true);
              ((HttpURLConnection)localObject2).setRequestProperty("Content-Type", paramVarArgs);
            }
            if (((String)localObject1).contains("https")) {
              paramURL = (HttpsURLConnection)localObject2;
            }
            try
            {
              paramURL.setSSLSocketFactory(new CBSSSLSocketFactory());
              return (HttpURLConnection)localObject2;
            }
            catch (KeyManagementException paramURL)
            {
              paramURL.printStackTrace();
              return (HttpURLConnection)localObject2;
            }
            catch (NoSuchAlgorithmException paramURL)
            {
              paramURL.printStackTrace();
              return (HttpURLConnection)localObject2;
            }
            localObject1 = (String)localObject2 + "&";
            break;
          }
        }
      }
    }
    return null;
  }
  
  private static byte[] b()
  {
    try
    {
      SecureRandom localSecureRandom = SecureRandom.getInstance("SHA1PRNG");
      arrayOfByte = new byte[16];
      Log.e("RequestHelper", localNoSuchAlgorithmException1.getMessage());
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException1)
    {
      try
      {
        localSecureRandom.nextBytes(arrayOfByte);
        return arrayOfByte;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException2)
      {
        byte[] arrayOfByte;
        for (;;) {}
      }
      localNoSuchAlgorithmException1 = localNoSuchAlgorithmException1;
      arrayOfByte = null;
    }
    return arrayOfByte;
  }
  
  private static byte[] b(String paramString)
  {
    int i2 = paramString.length();
    byte[] arrayOfByte = new byte[i2 / 2];
    int i1 = 0;
    while (i1 < i2)
    {
      arrayOfByte[(i1 / 2)] = ((byte)((Character.digit(paramString.charAt(i1), 16) << 4) + Character.digit(paramString.charAt(i1 + 1), 16)));
      i1 += 2;
    }
    return arrayOfByte;
  }
  
  /* Error */
  private String c(URL paramURL, String... paramVarArgs)
  {
    // Byte code:
    //   0: invokestatic 87	com/cbs/app/androiddata/LG:a	()V
    //   3: aload_0
    //   4: aload_1
    //   5: aload_2
    //   6: invokespecial 588	com/cbs/app/androiddata/RequestHelper:b	(Ljava/net/URL;[Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   9: astore_1
    //   10: aload_0
    //   11: getfield 58	com/cbs/app/androiddata/RequestHelper:g	Z
    //   14: ifne +13 -> 27
    //   17: aload_1
    //   18: ldc_w 590
    //   21: ldc_w 592
    //   24: invokevirtual 595	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   27: aload_0
    //   28: getfield 56	com/cbs/app/androiddata/RequestHelper:f	Z
    //   31: ifeq +153 -> 184
    //   34: invokestatic 87	com/cbs/app/androiddata/LG:a	()V
    //   37: aload_1
    //   38: invokevirtual 598	java/net/HttpURLConnection:getRequestProperties	()Ljava/util/Map;
    //   41: invokeinterface 601 1 0
    //   46: invokeinterface 360 1 0
    //   51: astore 4
    //   53: aload 4
    //   55: invokeinterface 365 1 0
    //   60: ifeq +124 -> 184
    //   63: aload 4
    //   65: invokeinterface 369 1 0
    //   70: checkcast 196	java/lang/String
    //   73: astore 5
    //   75: aload 5
    //   77: ifnull -24 -> 53
    //   80: aload_1
    //   81: invokevirtual 598	java/net/HttpURLConnection:getRequestProperties	()Ljava/util/Map;
    //   84: aload 5
    //   86: invokeinterface 602 2 0
    //   91: checkcast 604	java/util/List
    //   94: invokeinterface 605 1 0
    //   99: astore 6
    //   101: aload 6
    //   103: invokeinterface 365 1 0
    //   108: ifeq -55 -> 53
    //   111: aload 6
    //   113: invokeinterface 369 1 0
    //   118: checkcast 196	java/lang/String
    //   121: astore 7
    //   123: new 97	java/lang/StringBuilder
    //   126: dup
    //   127: ldc_w 607
    //   130: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   133: aload 5
    //   135: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: ldc_w 609
    //   141: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: aload 7
    //   146: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: pop
    //   150: invokestatic 87	com/cbs/app/androiddata/LG:a	()V
    //   153: goto -52 -> 101
    //   156: astore_1
    //   157: ldc 95
    //   159: new 97	java/lang/StringBuilder
    //   162: dup
    //   163: ldc -77
    //   165: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   168: aload_1
    //   169: invokevirtual 124	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   172: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: invokevirtual 113	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: invokestatic 183	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   181: pop
    //   182: aconst_null
    //   183: areturn
    //   184: aload_2
    //   185: iconst_0
    //   186: aaload
    //   187: astore 4
    //   189: aload_2
    //   190: arraylength
    //   191: iconst_2
    //   192: if_icmple +117 -> 309
    //   195: new 97	java/lang/StringBuilder
    //   198: dup
    //   199: ldc_w 611
    //   202: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   205: aload 4
    //   207: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: pop
    //   211: invokestatic 87	com/cbs/app/androiddata/LG:a	()V
    //   214: aload_2
    //   215: iconst_3
    //   216: aaload
    //   217: astore 6
    //   219: aload 4
    //   221: ifnull +88 -> 309
    //   224: aload 4
    //   226: ldc_w 535
    //   229: invokevirtual 539	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   232: ifeq +77 -> 309
    //   235: aload_1
    //   236: invokevirtual 614	java/net/HttpURLConnection:connect	()V
    //   239: new 97	java/lang/StringBuilder
    //   242: dup
    //   243: ldc_w 616
    //   246: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   249: aload 6
    //   251: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: pop
    //   255: invokestatic 87	com/cbs/app/androiddata/LG:a	()V
    //   258: invokestatic 87	com/cbs/app/androiddata/LG:a	()V
    //   261: aload_1
    //   262: invokevirtual 620	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   265: astore 4
    //   267: new 622	java/io/BufferedWriter
    //   270: dup
    //   271: new 624	java/io/OutputStreamWriter
    //   274: dup
    //   275: aload 4
    //   277: ldc -62
    //   279: invokespecial 627	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   282: invokespecial 630	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   285: astore 5
    //   287: aload 5
    //   289: aload 6
    //   291: invokevirtual 633	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   294: aload 5
    //   296: invokevirtual 636	java/io/BufferedWriter:close	()V
    //   299: aload 4
    //   301: ifnull +8 -> 309
    //   304: aload 4
    //   306: invokevirtual 639	java/io/OutputStream:close	()V
    //   309: aload_1
    //   310: invokevirtual 642	java/net/HttpURLConnection:getResponseCode	()I
    //   313: istore_3
    //   314: new 97	java/lang/StringBuilder
    //   317: dup
    //   318: ldc_w 644
    //   321: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   324: iload_3
    //   325: invokevirtual 140	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   328: ldc_w 646
    //   331: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: aload_2
    //   335: iconst_1
    //   336: aaload
    //   337: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: pop
    //   341: invokestatic 87	com/cbs/app/androiddata/LG:a	()V
    //   344: aload_0
    //   345: getfield 56	com/cbs/app/androiddata/RequestHelper:f	Z
    //   348: ifeq +7 -> 355
    //   351: aload_1
    //   352: invokestatic 648	com/cbs/app/androiddata/RequestHelper:a	(Ljava/net/HttpURLConnection;)V
    //   355: aload_1
    //   356: invokevirtual 652	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   359: invokestatic 657	com/cbs/app/androiddata/Util:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   362: areturn
    //   363: aload_2
    //   364: ifnull +7 -> 371
    //   367: aload_2
    //   368: invokevirtual 636	java/io/BufferedWriter:close	()V
    //   371: aload 4
    //   373: ifnull +8 -> 381
    //   376: aload 4
    //   378: invokevirtual 639	java/io/OutputStream:close	()V
    //   381: aload_1
    //   382: athrow
    //   383: astore_1
    //   384: aconst_null
    //   385: astore_2
    //   386: goto -23 -> 363
    //   389: astore_1
    //   390: aload 5
    //   392: astore_2
    //   393: goto -30 -> 363
    //   396: astore_1
    //   397: aconst_null
    //   398: astore_2
    //   399: aconst_null
    //   400: astore 4
    //   402: goto -39 -> 363
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	405	0	this	RequestHelper
    //   0	405	1	paramURL	URL
    //   0	405	2	paramVarArgs	String[]
    //   313	12	3	i1	int
    //   51	350	4	localObject1	Object
    //   73	318	5	localObject2	Object
    //   99	191	6	localObject3	Object
    //   121	24	7	str	String
    // Exception table:
    //   from	to	target	type
    //   3	27	156	java/io/IOException
    //   27	53	156	java/io/IOException
    //   53	75	156	java/io/IOException
    //   80	101	156	java/io/IOException
    //   101	153	156	java/io/IOException
    //   189	214	156	java/io/IOException
    //   224	261	156	java/io/IOException
    //   294	299	156	java/io/IOException
    //   304	309	156	java/io/IOException
    //   309	355	156	java/io/IOException
    //   355	363	156	java/io/IOException
    //   367	371	156	java/io/IOException
    //   376	381	156	java/io/IOException
    //   381	383	156	java/io/IOException
    //   267	287	383	finally
    //   287	294	389	finally
    //   261	267	396	finally
  }
  
  private static void c(String paramString)
  {
    if (paramString != null)
    {
      paramString = new StringTokenizer(paramString.replace("},", "},\n").replace(">", ">\n").replace("\",", "\",\n"), "\n");
      while (paramString.hasMoreTokens())
      {
        paramString.nextToken();
        LG.a();
      }
    }
  }
  
  public final ResponseModel a(String[] paramArrayOfString)
  {
    URL localURL;
    Object localObject7;
    int i1;
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0)) {
      try
      {
        localURL = new URL(paramArrayOfString[1]);
        ??? = localURL.getProtocol();
        String str1 = localURL.getHost();
        str1 = (String)??? + "://" + str1 + "/";
        synchronized (o)
        {
          if (!p.containsKey(str1)) {
            LG.a();
          }
          try
          {
            localObject7 = new URL(str1);
            new StringBuilder("hostUrl: ").append(localObject7);
            LG.a();
            localObject7 = (HttpURLConnection)((URL)localObject7).openConnection();
            ((HttpURLConnection)localObject7).setRequestMethod("HEAD");
            i1 = ((HttpURLConnection)localObject7).getResponseCode();
            new StringBuilder("serverTimeOffset responseCode: ").append(i1);
            LG.a();
            long l1 = ((HttpURLConnection)localObject7).getHeaderFieldDate("Date", System.currentTimeMillis()) - System.currentTimeMillis();
            new StringBuilder("serverTimeOffset: ").append(l1);
            LG.a();
            new StringBuilder("putting: ").append(str1).append(" with: ").append(l1);
            LG.a();
            p.put(str1, Long.valueOf(l1));
            boolean bool = q;
            if (!bool) {
              break label309;
            }
            return null;
          }
          catch (IOException localIOException2)
          {
            for (;;)
            {
              localIOException2.printStackTrace();
            }
          }
        }
        Log.e("RequestHelper", "exception: " + localMalformedURLException1.getLocalizedMessage(), localMalformedURLException1);
      }
      catch (MalformedURLException localMalformedURLException1)
      {
        paramArrayOfString = null;
      }
    }
    for (;;)
    {
      label307:
      return paramArrayOfString;
      label309:
      String str2 = Md5Util.a(paramArrayOfString[1]);
      Object localObject8;
      int i2;
      Object localObject5;
      if (paramArrayOfString[0].equals("POST"))
      {
        g = false;
        localObject8 = null;
        i2 = 1;
        localObject5 = null;
      }
      for (;;)
      {
        label342:
        localObject7 = localObject5;
        try
        {
          if (q) {
            break;
          }
          localObject2 = localObject5;
          if (i2 != 0)
          {
            localObject7 = localObject5;
            paramArrayOfString = a(localURL, paramArrayOfString);
            localObject2 = paramArrayOfString;
            if (paramArrayOfString != null)
            {
              localObject2 = paramArrayOfString;
              localObject7 = paramArrayOfString;
              if (g)
              {
                localObject7 = paramArrayOfString;
                localObject2 = new CacheEntry(paramArrayOfString);
                localObject7 = paramArrayOfString;
                ((CacheEntry)localObject2).setTimeToLive(i);
                localObject7 = paramArrayOfString;
                ((CacheEntry)localObject2).setShowIfExpired(h);
                localObject7 = paramArrayOfString;
                MemoryCache.a(str2, (CacheEntry)localObject2);
                localObject2 = paramArrayOfString;
              }
            }
          }
        }
        catch (MalformedURLException localMalformedURLException2)
        {
          Object localObject2;
          CacheEntry localCacheEntry;
          paramArrayOfString = (String[])localObject7;
        }
        try
        {
          if (q) {
            break;
          }
          paramArrayOfString = (String[])localObject2;
          if (!h) {
            break label307;
          }
          paramArrayOfString = (String[])localObject2;
          if (!g) {
            break label307;
          }
          paramArrayOfString = (String[])localObject2;
          if (localObject2 != null) {
            break label307;
          }
          paramArrayOfString = (String[])localObject2;
          if (localObject8 == null) {
            break label307;
          }
          LG.a();
          paramArrayOfString = ((CacheEntry)localObject8).getResponseModel();
        }
        catch (MalformedURLException localMalformedURLException3)
        {
          paramArrayOfString = (String[])localObject4;
          localObject4 = localMalformedURLException3;
        }
        if (g)
        {
          localCacheEntry = MemoryCache.a(str2);
          if ((localCacheEntry != null) && (localCacheEntry.a()))
          {
            new StringBuilder("cache valid: ").append(paramArrayOfString[1]);
            LG.a();
          }
          Object localObject4;
          for (localObject2 = localCacheEntry.getResponseModel();; localObject4 = null)
          {
            try
            {
              localObject2 = e.writeValueAsString(localObject2);
              localObject2 = (ResponseModel)e.readValue((String)localObject2, d);
              i1 = 0;
            }
            catch (JsonProcessingException localJsonProcessingException)
            {
              for (;;)
              {
                i1 = 1;
                Object localObject3 = null;
              }
            }
            catch (IOException localIOException1)
            {
              for (;;)
              {
                i1 = 1;
                localObject4 = null;
              }
            }
            i2 = i1;
            localObject5 = localObject2;
            localObject8 = localCacheEntry;
            if (localCacheEntry != null) {
              break label342;
            }
            localObject7 = localObject2;
            new StringBuilder("cache miss: ").append(paramArrayOfString[1]);
            localObject7 = localObject2;
            LG.a();
            i2 = i1;
            localObject5 = localObject2;
            localObject8 = localCacheEntry;
            break label342;
            break;
            break;
            i1 = 1;
          }
        }
        localObject8 = null;
        i2 = 1;
        Object localObject6 = null;
      }
      paramArrayOfString = null;
    }
  }
  
  public String getCbsAppSecret()
  {
    return n;
  }
  
  public ResponseModelListener getListener()
  {
    return a;
  }
  
  public DeviceData getSyncbakDeviceData()
  {
    return m;
  }
  
  public String getSyncbakKey()
  {
    return k;
  }
  
  public String getSyncbakSecret()
  {
    return l;
  }
  
  public long getTtl()
  {
    return i;
  }
  
  public void setCbsAppSecret(String paramString)
  {
    n = paramString;
  }
  
  public void setIsCbsEndpont(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public void setRetry(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void setShouldWeLogThisRequest(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void setStaleOk(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void setSyncbakDeviceData(DeviceData paramDeviceData)
  {
    m = paramDeviceData;
  }
  
  public void setSyncbakKey(String paramString)
  {
    k = paramString;
  }
  
  public void setSyncbakSecret(String paramString)
  {
    l = paramString;
  }
  
  public void setTtl(long paramLong)
  {
    i = paramLong;
  }
  
  public void setUseCache(boolean paramBoolean)
  {
    g = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.RequestHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */