package com.cbs.app.service.social;

import android.content.Context;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class OAuthBuilder
{
  private static final char[] b = new char[62];
  private static final String c = OAuthBuilder.class.getSimpleName();
  private static SecureRandom d = new SecureRandom();
  TreeMap<String, String> a;
  private Context e;
  
  static
  {
    int j = 0;
    int i = 48;
    while (i <= 57)
    {
      b[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    i = 97;
    while (i <= 122)
    {
      b[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    i = 65;
    while (i <= 90)
    {
      b[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
  }
  
  public OAuthBuilder(Context paramContext)
  {
    e = paramContext;
    a = new TreeMap();
  }
  
  private OAuthRequestBundle a(String paramString1, String paramString2, TwitterOAuthTokens paramTwitterOAuthTokens, String paramString3, String paramString4, int paramInt)
  {
    OAuthRequestBundle localOAuthRequestBundle = new OAuthRequestBundle();
    c = paramString1;
    b = paramString2;
    c();
    a.put("oauth_token", a);
    a = paramString4;
    a(c, b, b, paramString3, a);
    d = b();
    f = paramInt;
    e = "application/x-www-form-urlencoded;charset=UTF-8";
    if ((paramString3 != null) && (a != null)) {
      a = (paramString3 + "&" + a);
    }
    return localOAuthRequestBundle;
  }
  
  public static String a(String paramString)
  {
    return "https://api.twitter.com/oauth/authenticate?oauth_token=" + paramString;
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    long l = System.currentTimeMillis() / 1000L;
    a.put("oauth_timestamp", String.valueOf(l));
    if (paramString4 == null) {}
    for (paramString4 = new StringBuilder();; paramString4 = new StringBuilder(paramString4 + "&"))
    {
      Iterator localIterator = a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramString4.append(b((String)localEntry.getKey())).append("=").append(b((String)localEntry.getValue())).append("&");
      }
    }
    if (paramString5 == null) {
      paramString4.deleteCharAt(paramString4.length() - 1);
    }
    for (;;)
    {
      paramString4 = b(paramString4.toString());
      paramString4 = paramString2 + "&" + b(paramString1) + "&" + paramString4;
      paramString1 = e.getString(2131231340);
      paramString2 = b(paramString1) + "&";
      paramString1 = paramString2;
      if (paramString3 != null) {
        paramString1 = paramString2 + b(paramString3);
      }
      paramString1 = new SecretKeySpec(paramString1.getBytes(), "HmacSHA1");
      try
      {
        paramString2 = Mac.getInstance("HmacSHA1");
        paramString2.init(paramString1);
        paramString1 = Base64.encodeToString(paramString2.doFinal(paramString4.getBytes()), 2);
        a.put("oauth_signature", paramString1);
        return;
      }
      catch (NoSuchAlgorithmException paramString1)
      {
        return;
      }
      catch (InvalidKeyException paramString1) {}
      paramString4.append(paramString5);
    }
  }
  
  private String b()
  {
    StringBuilder localStringBuilder = new StringBuilder("OAuth");
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append(" ").append(b((String)localEntry.getKey())).append("=\"").append(b((String)localEntry.getValue())).append("\",");
    }
    localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
    return localStringBuilder.toString();
  }
  
  private static String b(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8").replace("+", "%20").replace("*", "%2A").replace("%7E", "~");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString) {}
    return "";
  }
  
  private void c()
  {
    a.clear();
    a.put("oauth_signature_method", "HMAC-SHA1");
    TreeMap localTreeMap = a;
    String str = "";
    int i = 0;
    while (i <= 32)
    {
      int j = d.nextInt(62);
      str = str + b[j];
      i += 1;
    }
    localTreeMap.put("oauth_nonce", str);
    a.put("oauth_version", "1.0");
    str = e.getString(2131231339);
    a.put("oauth_consumer_key", str);
  }
  
  public final OAuthRequestBundle a()
  {
    OAuthRequestBundle localOAuthRequestBundle = new OAuthRequestBundle();
    b = "POST";
    c = "https://api.twitter.com/oauth/request_token";
    c();
    a.put("oauth_callback", "twitter-authorize-response://cbs-on-twitter");
    a(c, b, null, null, null);
    d = b();
    f = 0;
    e = "text/html; charset=UTF-8";
    return localOAuthRequestBundle;
  }
  
  public final OAuthRequestBundle a(TwitterOAuthTokens paramTwitterOAuthTokens, long paramLong)
  {
    return a("https://api.twitter.com/1.1/statuses/retweet/" + paramLong + ".json", "POST", paramTwitterOAuthTokens, null, null, 4);
  }
  
  public final OAuthRequestBundle a(TwitterOAuthTokens paramTwitterOAuthTokens, String paramString)
  {
    return a("https://api.twitter.com/1.1/statuses/update.json", "POST", paramTwitterOAuthTokens, "include_entities=false", "status=" + b(paramString), 2);
  }
  
  public final OAuthRequestBundle a(TwitterOAuthTokens paramTwitterOAuthTokens, String paramString, long paramLong)
  {
    paramString = "status=" + b(paramString);
    return a("https://api.twitter.com/1.1/statuses/update.json", "POST", paramTwitterOAuthTokens, "in_reply_to_status_id=" + paramLong + "&include_entities=false", paramString, 2);
  }
  
  public final OAuthRequestBundle a(String paramString1, String paramString2)
  {
    OAuthRequestBundle localOAuthRequestBundle = new OAuthRequestBundle();
    b = "POST";
    c = "https://api.twitter.com/oauth/access_token";
    c();
    a.put("oauth_token", paramString1);
    a.put("oauth_verifier", paramString2);
    a(c, b, null, null, null);
    d = b();
    f = 1;
    e = "application/x-www-form-urlencoded;charset=UTF-8";
    return localOAuthRequestBundle;
  }
  
  public final OAuthRequestBundle b(TwitterOAuthTokens paramTwitterOAuthTokens, long paramLong)
  {
    paramTwitterOAuthTokens = a("https://api.twitter.com/1.1/favorites/create.json", "POST", paramTwitterOAuthTokens, "id=" + paramLong, null, 6);
    c = (c + "?id=" + paramLong);
    return paramTwitterOAuthTokens;
  }
  
  public final OAuthRequestBundle b(TwitterOAuthTokens paramTwitterOAuthTokens, String paramString)
  {
    return a("https://api.twitter.com/1.1/friendships/create.json", "POST", paramTwitterOAuthTokens, "include_entities=false", "screen_name=" + b(paramString), 3);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.OAuthBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */