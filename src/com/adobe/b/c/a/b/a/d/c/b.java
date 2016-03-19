package com.adobe.b.c.a.b.a.d.c;

import com.adobe.b.a.c;
import com.adobe.b.c.a.b.a.d.a.e;
import com.adobe.b.c.a.b.a.d.a.e.b;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class b
  extends a
{
  public b(c paramc)
  {
    super(paramc);
  }
  
  private String a(Map<String, Object> paramMap)
  {
    Object localObject = new StringBuilder();
    Iterator localIterator = paramMap.keySet().iterator();
    for (;;)
    {
      if (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        try
        {
          ((StringBuilder)localObject).append("s:meta:" + str1 + "=" + URLEncoder.encode((String)paramMap.get(str1), "utf-8"));
          ((StringBuilder)localObject).append("&");
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          for (;;)
          {
            c localc = a;
            String str2 = b;
            new StringBuilder("#serializeMap() - Unable to serialize string: ").append(localUnsupportedEncodingException.getMessage());
            localc.c(str2);
          }
        }
      }
    }
    localObject = ((StringBuilder)localObject).toString();
    paramMap = (Map<String, Object>)localObject;
    if (((String)localObject).length() > 0) {
      paramMap = ((String)localObject).substring(0, ((String)localObject).length() - 1);
    }
    return paramMap;
  }
  
  private String c(e parame)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    parame = a(parame);
    int i = 0;
    if (i < parame.size())
    {
      if (i == parame.size() - 1) {
        localStringBuilder.append((String)parame.get(i));
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append((String)parame.get(i)).append("&");
      }
    }
    return localStringBuilder.toString();
  }
  
  protected final Object a(String paramString1, Boolean paramBoolean, String paramString2, Object paramObject)
  {
    if (paramBoolean != null)
    {
      String str = "l";
      long l = 0L;
      if (paramBoolean.booleanValue()) {
        l = 1L;
      }
      paramBoolean = str;
      if (paramObject != null)
      {
        paramBoolean = str;
        if ((paramObject instanceof e.b))
        {
          paramBoolean = str;
          if (paramObject == e.b.a) {
            paramBoolean = "h";
          }
        }
      }
      return paramBoolean + ":" + paramString2 + ":" + paramString1 + "=" + l;
    }
    return null;
  }
  
  protected final Object a(String paramString1, Double paramDouble, String paramString2)
  {
    if (paramDouble != null) {
      return "l:" + paramString2 + ":" + paramString1 + "=" + paramDouble.longValue();
    }
    return null;
  }
  
  protected final Object a(String paramString1, Integer paramInteger, String paramString2)
  {
    if (paramInteger != null) {
      return "l:" + paramString2 + ":" + paramString1 + "=" + paramInteger;
    }
    return null;
  }
  
  protected final Object a(String paramString1, Long paramLong, String paramString2, Object paramObject)
  {
    String str2 = "l";
    if (paramLong != null)
    {
      String str1 = str2;
      if (paramObject != null)
      {
        str1 = str2;
        if ((paramObject instanceof e.b))
        {
          str1 = str2;
          if (paramObject == e.b.a) {
            str1 = "h";
          }
        }
      }
      return str1 + ":" + paramString2 + ":" + paramString1 + "=" + paramLong;
    }
    return null;
  }
  
  protected final Object a(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString2 != null) && (!paramString2.equals(""))) {
      try
      {
        paramString1 = "s:" + paramString3 + ":" + paramString1 + "=" + URLEncoder.encode(paramString2, "utf-8");
        return paramString1;
      }
      catch (UnsupportedEncodingException paramString1)
      {
        paramString2 = a;
        paramString3 = b;
        new StringBuilder("serializeString() - Unable to serialize string: ").append(paramString1.getMessage());
        paramString2.c(paramString3);
      }
    }
    return null;
  }
  
  public final HashMap<String, Object> a(com.adobe.b.c.a.b.a.d.b.a parama)
  {
    Object localObject = new ArrayList();
    if (parama.b() != null) {
      ((ArrayList)localObject).add(c(parama.b()));
    }
    if (parama.a() != null) {
      ((ArrayList)localObject).add(c(parama.a()));
    }
    if (parama.c() != null) {
      ((ArrayList)localObject).add(c(parama.c()));
    }
    if (parama.d() != null) {
      ((ArrayList)localObject).add(c(parama.d()));
    }
    if (parama.e() != null) {
      ((ArrayList)localObject).add(c(parama.e()));
    }
    if (parama.f() != null) {
      ((ArrayList)localObject).add(c(parama.f()));
    }
    if (parama.g() != null) {
      ((ArrayList)localObject).add(c(parama.g()));
    }
    if (parama.h() != null) {
      ((ArrayList)localObject).add(c(parama.h()));
    }
    if (parama.i() != null) {
      ((ArrayList)localObject).add(a((HashMap)parama.i()));
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    if (i < ((ArrayList)localObject).size())
    {
      if (i == ((ArrayList)localObject).size() - 1) {
        localStringBuilder.append((String)((ArrayList)localObject).get(i));
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append((String)((ArrayList)localObject).get(i)).append("&");
      }
    }
    localObject = new HashMap();
    ((HashMap)localObject).put("serializedOutput", localStringBuilder);
    ((HashMap)localObject).put("callback", parama.j());
    return (HashMap<String, Object>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.d.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */