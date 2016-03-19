package com.cbs.app.pid;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.view.utils.Util;
import java.io.IOException;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.apache.commons.codec.binary.Base64;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

@Deprecated
public class AllUnicornAsyncTask
  extends AsyncTask<String, Void, PidResponseHolder>
{
  private static final String a = AllUnicornAsyncTask.class.getSimpleName();
  private Context b;
  private String c;
  
  private PidResponseHolder a(String... paramVarArgs)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramVarArgs != null)
    {
      localObject1 = localObject2;
      if (paramVarArgs.length > 0)
      {
        c = paramVarArgs[0];
        localObject1 = new PidResponseHolder();
        ((PidResponseHolder)localObject1).setSmilUrl("http://link.theplatform.com/s/dJ5BDC/" + c + "?format=SMIL&Tracking=true&assetType=OnceURL");
        new StringBuilder("smilUrl: ").append(((PidResponseHolder)localObject1).getSmilUrl());
      }
    }
    for (;;)
    {
      int i;
      try
      {
        paramVarArgs = (HttpURLConnection)new URL(((PidResponseHolder)localObject1).getSmilUrl()).openConnection();
        paramVarArgs.setRequestMethod("GET");
        paramVarArgs.getResponseCode();
        paramVarArgs = paramVarArgs.getInputStream();
        localObject2 = DocumentBuilderFactory.newInstance();
        paramVarArgs = ((DocumentBuilderFactory)localObject2).newDocumentBuilder().parse(paramVarArgs);
        ((PidResponseHolder)localObject1).setSmilDocument(paramVarArgs);
        new StringBuilder("smilFile: ").append(a(paramVarArgs));
        paramVarArgs = paramVarArgs.getElementsByTagName("seq");
        new StringBuilder("seqElements.length: ").append(paramVarArgs.getLength());
        paramVarArgs = paramVarArgs.item(0).getChildNodes();
        new StringBuilder("videoElements.length: ").append(paramVarArgs.getLength());
        i = 0;
        Object localObject3;
        String str1;
        if (i < paramVarArgs.getLength())
        {
          localObject3 = paramVarArgs.item(i);
          if ((((Node)localObject3).getNodeType() != 1) || (!((Node)localObject3).getNodeName().equals("video"))) {
            break label1059;
          }
          paramVarArgs = (Element)localObject3;
          ((PidResponseHolder)localObject1).setOriginalSmilContentUrl(paramVarArgs.getAttribute("src"));
          ((PidResponseHolder)localObject1).setGuid(paramVarArgs.getAttribute("guid"));
          paramVarArgs = paramVarArgs.getChildNodes();
          i = 0;
          if (i < paramVarArgs.getLength())
          {
            localObject3 = paramVarArgs.item(i);
            if ((((Node)localObject3).getNodeType() != 1) || (!((Node)localObject3).getNodeName().equals("param"))) {
              break label1052;
            }
            localObject3 = (Element)localObject3;
            str1 = ((Element)localObject3).getAttribute("name");
            if ((str1 == null) || (!str1.equals("ClosedCaptionURL"))) {
              break label1052;
            }
            ((PidResponseHolder)localObject1).setClosedCaptionUrl(((Element)localObject3).getAttribute("value"));
          }
        }
        paramVarArgs = new URL(((PidResponseHolder)localObject1).getOriginalSmilContentUrl()).getPath();
        if (paramVarArgs != null)
        {
          paramVarArgs = paramVarArgs.split("/");
          if (paramVarArgs.length >= 6)
          {
            str1 = paramVarArgs[4];
            String str2 = paramVarArgs[5];
            localObject3 = paramVarArgs[6];
            new StringBuilder("OLD: ").append(str2).append(" domainGUID: ").append(str1).append(" old: ").append(paramVarArgs[3]);
            str1 = Long.valueOf(System.currentTimeMillis() / 1000L - 300L).toString();
            if (!Util.e(b)) {
              continue;
            }
            paramVarArgs = "fd8345f4-b034-4192-a30a-712542d3ef99";
            str2 = Util.a(AuthStatusManager.getUserAuthStatus());
            str2 = "UMPTPARAMcust_params=sb%3D" + str2;
            paramVarArgs = "http://onceux.unicornmedia.com/now/ads/vmap/adaptive/m3u8/" + "bb0b18ba-64f5-4b1b-a29f-0ac252f06b68" + "/" + paramVarArgs + "/" + (String)localObject3 + "/?UMTP=0&umsstime=" + str1 + "&umsttl=" + "7200";
            localObject3 = a(a(paramVarArgs, b.getResources().getString(2131231352)));
            ((PidResponseHolder)localObject1).setVmapUrl(paramVarArgs + "&umshash=" + (String)localObject3 + "&" + str2);
          }
        }
        paramVarArgs = (HttpURLConnection)new URL(((PidResponseHolder)localObject1).getVmapUrl()).openConnection();
        paramVarArgs.setRequestMethod("GET");
        paramVarArgs.getResponseCode();
        paramVarArgs = paramVarArgs.getInputStream();
        paramVarArgs = ((DocumentBuilderFactory)localObject2).newDocumentBuilder().parse(paramVarArgs);
        ((PidResponseHolder)localObject1).setVmapDocument(paramVarArgs);
        new StringBuilder("vmapFile: ").append(a(paramVarArgs));
        paramVarArgs = paramVarArgs.getDocumentElement();
        new StringBuilder("documentElement: ").append(paramVarArgs.getNodeName());
        paramVarArgs = paramVarArgs.getChildNodes();
        new StringBuilder("extensionsNodes.length: ").append(paramVarArgs.getLength());
        i = 0;
        if (i < paramVarArgs.getLength())
        {
          localObject2 = paramVarArgs.item(i);
          if (((Node)localObject2).getNodeType() == 1)
          {
            localObject2 = (Element)localObject2;
            localObject3 = ((Element)localObject2).getNodeName();
            if ((localObject3 != null) && (((String)localObject3).equals("vmap:Extensions")))
            {
              localObject2 = ((Element)localObject2).getChildNodes();
              new StringBuilder("extensionsChildren.length: ").append(((NodeList)localObject2).getLength());
              int j = 0;
              if (j < ((NodeList)localObject2).getLength())
              {
                localObject3 = ((NodeList)localObject2).item(j);
                if (((Node)localObject3).getNodeType() == 1)
                {
                  localObject3 = (Element)localObject3;
                  str1 = ((Element)localObject3).getNodeName();
                  if ((str1 != null) && (str1.equals("uo:unicornOnce")))
                  {
                    localObject2 = ((Element)localObject3).getAttribute("contenturi");
                    ((Element)localObject3).getAttribute("contentlength");
                    ((Element)localObject3).getAttribute("payloadlength");
                    ((PidResponseHolder)localObject1).setStreamingUrl((String)localObject2);
                    break label1045;
                    paramVarArgs = "5bd36573-84c7-407c-936b-b6065842cbe6";
                    continue;
                  }
                }
                j += 1;
                continue;
              }
            }
          }
        }
        else
        {
          return (PidResponseHolder)localObject1;
        }
      }
      catch (MalformedURLException paramVarArgs)
      {
        paramVarArgs.printStackTrace();
        return (PidResponseHolder)localObject1;
      }
      catch (IOException paramVarArgs)
      {
        paramVarArgs.printStackTrace();
        return (PidResponseHolder)localObject1;
      }
      catch (ParserConfigurationException paramVarArgs)
      {
        paramVarArgs.printStackTrace();
        return (PidResponseHolder)localObject1;
      }
      catch (SAXException paramVarArgs)
      {
        paramVarArgs.printStackTrace();
        return (PidResponseHolder)localObject1;
      }
      catch (TransformerException paramVarArgs)
      {
        paramVarArgs.printStackTrace();
        return (PidResponseHolder)localObject1;
      }
      label1045:
      i += 1;
      continue;
      label1052:
      i += 1;
      continue;
      label1059:
      i += 1;
    }
  }
  
  private static String a(String paramString)
  {
    Object localObject = URLEncoder.encode(paramString, "UTF-8");
    paramString = ((String)localObject).toLowerCase().toCharArray();
    localObject = ((String)localObject).toCharArray();
    int i = 0;
    while (i < localObject.length - 2)
    {
      if (localObject[i] == '%')
      {
        localObject[(i + 1)] = paramString[(i + 1)];
        localObject[(i + 2)] = paramString[(i + 2)];
      }
      i += 1;
    }
    return new String((char[])localObject);
  }
  
  private static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = new SecretKeySpec(paramString2.getBytes("UTF-8"), "HmacSHA1");
      Mac localMac = Mac.getInstance("HmacSHA1");
      localMac.init(paramString2);
      paramString1 = new String(Base64.encodeBase64(localMac.doFinal(paramString1.getBytes("UTF-8"))), "UTF-8");
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      paramString1.printStackTrace();
      return null;
    }
    catch (NoSuchAlgorithmException paramString1)
    {
      paramString1.printStackTrace();
      return null;
    }
    catch (InvalidKeyException paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  private static String a(Document paramDocument)
  {
    paramDocument = new DOMSource(paramDocument);
    StringWriter localStringWriter = new StringWriter();
    StreamResult localStreamResult = new StreamResult(localStringWriter);
    TransformerFactory.newInstance().newTransformer().transform(paramDocument, localStreamResult);
    return localStringWriter.toString();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.pid.AllUnicornAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */