package com.adobe.adobepass.accessenabler.a;

import com.adobe.adobepass.accessenabler.api.b;
import com.adobe.adobepass.accessenabler.d.f;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public final class j
{
  private final b a;
  private boolean b;
  private String c;
  private String d;
  private String e;
  private ArrayList<g> f = new ArrayList();
  
  public j(b paramb)
  {
    a = paramb;
  }
  
  private static boolean a(Node paramNode, ArrayList<g> paramArrayList, String paramString)
  {
    if (paramNode == null) {}
    int i;
    Node localNode1;
    Object localObject1;
    Object localObject2;
    do
    {
      do
      {
        do
        {
          do
          {
            return false;
            paramNode = paramNode.getChildNodes();
            i = 0;
            if (i >= paramNode.getLength()) {
              break;
            }
            localNode1 = paramNode.item(i);
          } while (!"mvpd".equals(localNode1.getNodeName()));
          localObject1 = f.a(localNode1, "id");
        } while (localObject1 == null);
        localObject1 = ((Node)localObject1).getFirstChild().getNodeValue();
        localObject2 = f.a(localNode1, "displayName");
      } while (localObject2 == null);
      localObject2 = ((Node)localObject2).getFirstChild().getNodeValue();
      localObject3 = f.a(localNode1, "logoUrl");
    } while (localObject3 == null);
    Object localObject3 = ((Node)localObject3).getFirstChild().getNodeValue();
    Node localNode2 = f.a(localNode1, "passiveAuthnEnabled");
    if (localNode2 != null) {}
    for (boolean bool1 = localNode2.getFirstChild().getNodeValue().equalsIgnoreCase("true");; bool1 = true)
    {
      localNode1 = f.a(localNode1, "authPerAggregator");
      if (localNode1 != null) {}
      for (boolean bool2 = localNode1.getFirstChild().getNodeValue().equalsIgnoreCase("true");; bool2 = false)
      {
        paramArrayList.add(new g((String)localObject1, (String)localObject2, (String)localObject3, paramString, bool2, bool1));
        i += 1;
        break;
        return true;
      }
    }
  }
  
  public final void a(String paramString)
  {
    c = paramString;
  }
  
  public final void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public final boolean a()
  {
    return b;
  }
  
  public final boolean a(String paramString1, String paramString2)
  {
    for (;;)
    {
      Object localObject2;
      Object localObject3;
      int i;
      try
      {
        localObject1 = new ArrayList();
        try
        {
          localObject2 = DocumentBuilderFactory.newInstance().newDocumentBuilder();
          localObject3 = new InputSource();
          ((InputSource)localObject3).setCharacterStream(new StringReader(paramString1));
          paramString1 = ((DocumentBuilder)localObject2).parse((InputSource)localObject3);
          paramString1.getDocumentElement().normalize();
        }
        catch (Exception paramString1)
        {
          com.adobe.adobepass.accessenabler.d.c.b("Requestor", paramString1.toString());
          bool = false;
          continue;
        }
        try
        {
          localObject2 = paramString1.getElementsByTagName("device");
          if ((localObject2 != null) && (((NodeList)localObject2).getLength() > 0))
          {
            localObject2 = ((Element)((NodeList)localObject2).item(0)).getTextContent();
            if (localObject2 != null) {
              a.h().a((String)localObject2);
            }
          }
          localObject2 = paramString1.getElementsByTagName("clientType");
          if ((localObject2 != null) && (((NodeList)localObject2).getLength() > 0))
          {
            localObject2 = ((Element)((NodeList)localObject2).item(0)).getTextContent();
            if (localObject2 != null) {
              a.h().b((String)localObject2);
            }
          }
          localObject2 = paramString1.getElementsByTagName("os");
          if ((localObject2 != null) && (((NodeList)localObject2).getLength() > 0))
          {
            localObject2 = ((Element)((NodeList)localObject2).item(0)).getTextContent();
            if (localObject2 != null) {
              a.h().c((String)localObject2);
            }
          }
          paramString1 = paramString1.getElementsByTagName("requestor").item(0);
          if (paramString1 == null) {
            break label556;
          }
          localObject2 = f.a(paramString1, "id");
          if (localObject2 == null) {
            break label544;
          }
          localObject2 = ((Node)localObject2).getFirstChild().getNodeValue();
          localObject3 = f.a(paramString1, "name");
          if (localObject3 == null) {
            break label550;
          }
          localObject3 = ((Node)localObject3).getFirstChild().getNodeValue();
          bool = a(f.a(paramString1, "mvpds"), (ArrayList)localObject1, paramString2);
          if (bool) {
            continue;
          }
          bool = false;
        }
        catch (Exception paramString1)
        {
          com.adobe.adobepass.accessenabler.d.c.b("Requestor", paramString1.toString());
          b = false;
          bool = false;
          continue;
          c = ((String)localObject2);
          e = ((String)localObject3);
          paramString1 = ((ArrayList)localObject1).iterator();
          if (!paramString1.hasNext()) {
            break label533;
          }
        }
        return bool;
      }
      finally {}
      paramString2 = (g)paramString1.next();
      Object localObject1 = f.iterator();
      if (((Iterator)localObject1).hasNext())
      {
        if (!paramString2.equals((g)((Iterator)localObject1).next())) {
          continue;
        }
        com.adobe.adobepass.accessenabler.d.c.a("Requestor", "MVPD already added: " + paramString2.b());
        i = 1;
        if (i == 0)
        {
          com.adobe.adobepass.accessenabler.d.c.a("Requestor", "Added MVPD: " + paramString2.b() + " with SP: " + paramString2.d());
          f.add(paramString2);
          continue;
          label533:
          bool = true;
        }
      }
      else
      {
        i = 0;
        continue;
      }
      continue;
      label544:
      boolean bool = false;
      continue;
      label550:
      bool = false;
      continue;
      label556:
      bool = false;
    }
  }
  
  public final String b()
  {
    return c;
  }
  
  public final void b(String paramString)
  {
    d = paramString;
  }
  
  public final g c(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      if (paramString.equals(localg.a())) {
        return localg;
      }
    }
    return null;
  }
  
  public final String c()
  {
    return d;
  }
  
  public final ArrayList<g> d()
  {
    return f;
  }
  
  public final boolean d(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext()) {
      if (paramString.equals(((g)localIterator.next()).a())) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */