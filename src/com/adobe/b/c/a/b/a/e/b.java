package com.adobe.b.c.a.b.a.e;

import com.adobe.b.a.c;
import java.io.StringReader;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

class b
{
  private final String a;
  private c b;
  private String c;
  
  public b(String paramString, c paramc)
  {
    if (paramString == null) {
      throw new Error("Reference to the data object cannot be NULL.");
    }
    a = paramString;
    if (paramc == null) {
      throw new Error("Reference to logger object cannot be NULL.");
    }
    b = paramc;
    c = b.class.getSimpleName();
  }
  
  public final Map<String, Object> a()
  {
    boolean bool = false;
    for (;;)
    {
      try
      {
        Object localObject1 = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        localObject3 = new InputSource();
        ((InputSource)localObject3).setCharacterStream(new StringReader(a));
        localObject4 = ((DocumentBuilder)localObject1).parse((InputSource)localObject3);
        ((Document)localObject4).getDocumentElement().normalize();
        localObject1 = ((Document)localObject4).getElementsByTagName("trackingInterval").item(0);
        if (localObject1 == null) {
          break label289;
        }
        localObject1 = Double.valueOf(Double.parseDouble(((Node)localObject1).getFirstChild().getNodeValue()));
        localObject3 = ((Document)localObject4).getElementsByTagName("setupCheckInterval").item(0);
        if (localObject3 == null) {
          break label284;
        }
        localObject3 = Double.valueOf(Double.parseDouble(((Node)localObject3).getFirstChild().getNodeValue()));
        localObject4 = ((Document)localObject4).getElementsByTagName("trackExternalErrors").item(0);
        if (localObject4 == null) {
          break label278;
        }
        if (Double.parseDouble(((Node)localObject4).getFirstChild().getNodeValue()) == 1.0D) {
          bool = true;
        }
        localObject4 = Boolean.valueOf(bool);
        if ((localObject1 != null) && (localObject3 != null) && (localObject4 != null))
        {
          HashMap localHashMap = new HashMap();
          localHashMap.put("reporting_interval", localObject1);
          localHashMap.put("check_status_interval", localObject3);
          localHashMap.put("track_external_errors", localObject4);
          return localHashMap;
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        throw localRuntimeException;
      }
      catch (Exception localException)
      {
        localObject3 = b;
        localObject4 = c;
        new StringBuilder("#parse() - Failed to parse configuration settings: ").append(localException.getMessage());
        ((c)localObject3).c((String)localObject4);
      }
      return null;
      label278:
      Object localObject4 = null;
      continue;
      label284:
      Object localObject3 = null;
      continue;
      label289:
      Object localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */