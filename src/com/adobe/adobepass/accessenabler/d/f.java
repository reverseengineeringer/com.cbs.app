package com.adobe.adobepass.accessenabler.d;

import android.util.Base64;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public final class f
{
  public static String a()
  {
    Calendar localCalendar = Calendar.getInstance();
    return new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(localCalendar.getTime());
  }
  
  public static String a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    try
    {
      Object localObject = MessageDigest.getInstance(paramString2);
      ((MessageDigest)localObject).update(paramString1.getBytes("iso-8859-1"), 0, paramString1.length());
      localObject = ((MessageDigest)localObject).digest();
      paramString1 = (String)localObject;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int i;
        c.b("Utils", "Cannot calculate " + paramString2 + " hash:" + localException.toString());
        paramString1 = paramString1.getBytes();
        continue;
        paramString2.append((char)(k - 10 + 97));
      }
    }
    paramString2 = new StringBuffer();
    i = 0;
    int k;
    int j;
    if (i < paramString1.length)
    {
      k = paramString1[i] >>> 4 & 0xF;
      j = 0;
    }
    for (;;)
    {
      if ((k >= 0) && (k <= 9))
      {
        paramString2.append((char)(k + 48));
        k = paramString1[i];
        if (j <= 0) {
          break label171;
        }
        i += 1;
        break;
      }
      return paramString2.toString();
      label171:
      j += 1;
      k &= 0xF;
    }
  }
  
  public static String a(String paramString, List<NameValuePair> paramList, boolean paramBoolean)
  {
    String str;
    ArrayList localArrayList;
    if (paramList != null)
    {
      str = "" + "?";
      localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        localArrayList.add(((NameValuePair)paramList.next()).toString());
      }
    }
    for (paramList = str + a(localArrayList, "&");; paramList = "")
    {
      if (paramBoolean) {}
      for (str = "https://";; str = "http://")
      {
        paramString = str + paramString;
        return paramString + paramList;
      }
    }
  }
  
  public static String a(List<? extends CharSequence> paramList, String paramString)
  {
    int i = 0;
    int j = paramString.length();
    Object localObject = paramList.iterator();
    if (((Iterator)localObject).hasNext()) {
      i = ((CharSequence)((Iterator)localObject).next()).length() + j + 0;
    }
    localObject = new StringBuilder(i);
    paramList = paramList.iterator();
    if (paramList.hasNext())
    {
      ((StringBuilder)localObject).append((CharSequence)paramList.next());
      while (paramList.hasNext())
      {
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append((CharSequence)paramList.next());
      }
    }
    return ((StringBuilder)localObject).toString();
  }
  
  public static Node a(Node paramNode, String paramString)
  {
    if (paramNode != null)
    {
      paramNode = paramNode.getChildNodes();
      int i = 0;
      while (i < paramNode.getLength())
      {
        Node localNode = paramNode.item(i);
        if (paramString.equals(localNode.getNodeName())) {
          return localNode;
        }
        i += 1;
      }
    }
    return null;
  }
  
  public static byte[] a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = Base64.decode(paramString.getBytes(), 0);
      return paramString;
    }
    catch (Exception paramString)
    {
      c.b("Utils", paramString.getMessage());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.d.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */