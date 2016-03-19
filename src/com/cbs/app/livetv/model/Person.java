package com.cbs.app.livetv.model;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

public class Person
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e = "US";
  public String f;
  public String g;
  public String h;
  public SocialProvider i = new SocialProvider();
  private String j;
  
  private static String a(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      paramString = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    return paramString.replace("+", "%2B");
  }
  
  private HashMap<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("firstName", a(a));
    localHashMap.put("lastName", a(b));
    localHashMap.put("email", a(c));
    localHashMap.put("birthday", j);
    localHashMap.put("gender", h);
    localHashMap.put("country", e);
    localHashMap.put("state", f);
    localHashMap.put("mpid", "4812");
    localHashMap.put("zip", d);
    localHashMap.put("optIn", "true");
    return localHashMap;
  }
  
  public String getBirthDay()
  {
    return j;
  }
  
  public HashMap<String, Object> getEndpointPostMap()
  {
    HashMap localHashMap = a();
    String str = a(g);
    localHashMap.put("password", str);
    localHashMap.put("confirmPassword", str);
    return localHashMap;
  }
  
  public HashMap<String, Object> getEndpointPostMapSocial()
  {
    HashMap localHashMap = a();
    localHashMap.put("provider", i.getNameString());
    localHashMap.put("accessToken", i.b);
    if (i.c != null) {
      localHashMap.put("secret", i.c);
    }
    return localHashMap;
  }
  
  public String getGender()
  {
    return h;
  }
  
  public void setBirthDay(Date paramDate)
  {
    j = new SimpleDateFormat("MM/dd/yyyy").format(paramDate);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.model.Person
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */