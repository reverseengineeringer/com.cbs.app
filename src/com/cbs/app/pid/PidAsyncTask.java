package com.cbs.app.pid;

import android.os.AsyncTask;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class PidAsyncTask
  extends AsyncTask<String, Void, PidResponseHolder>
{
  private static final String a = PidAsyncTask.class.getSimpleName();
  private String b;
  
  private PidResponseHolder a(String... paramVarArgs)
  {
    int j = 0;
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramVarArgs != null)
    {
      localObject1 = localObject2;
      if (paramVarArgs.length > 0)
      {
        b = paramVarArgs[0];
        localObject1 = new PidResponseHolder();
        ((PidResponseHolder)localObject1).setSmilUrl("http://link.theplatform.com/s/dJ5BDC/" + b + "?format=SMIL&Tracking=true&assetType=OnceURL");
        new StringBuilder("smilUrl: ").append(((PidResponseHolder)localObject1).getSmilUrl());
      }
    }
    try
    {
      paramVarArgs = (HttpURLConnection)new URL(((PidResponseHolder)localObject1).getSmilUrl()).openConnection();
      paramVarArgs.setRequestMethod("GET");
      paramVarArgs.getResponseCode();
      paramVarArgs = paramVarArgs.getInputStream();
      paramVarArgs = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(paramVarArgs);
      ((PidResponseHolder)localObject1).setSmilDocument(paramVarArgs);
      localObject2 = new StringBuilder("smilFile: ");
      Object localObject3 = new DOMSource(paramVarArgs);
      StringWriter localStringWriter = new StringWriter();
      StreamResult localStreamResult = new StreamResult(localStringWriter);
      TransformerFactory.newInstance().newTransformer().transform((Source)localObject3, localStreamResult);
      ((StringBuilder)localObject2).append(localStringWriter.toString());
      paramVarArgs = paramVarArgs.getElementsByTagName("seq");
      new StringBuilder("seqElements.length: ").append(paramVarArgs.getLength());
      paramVarArgs = paramVarArgs.item(0).getChildNodes();
      new StringBuilder("videoElements.length: ").append(paramVarArgs.getLength());
      int i = 0;
      while (i < paramVarArgs.getLength())
      {
        localObject2 = paramVarArgs.item(i);
        if ((((Node)localObject2).getNodeType() == 1) && (((Node)localObject2).getNodeName().equals("video")))
        {
          paramVarArgs = (Element)localObject2;
          ((PidResponseHolder)localObject1).setOriginalSmilContentUrl(paramVarArgs.getAttribute("src"));
          ((PidResponseHolder)localObject1).setGuid(paramVarArgs.getAttribute("guid"));
          paramVarArgs = paramVarArgs.getChildNodes();
          i = j;
          while (i < paramVarArgs.getLength())
          {
            localObject2 = paramVarArgs.item(i);
            if ((((Node)localObject2).getNodeType() == 1) && (((Node)localObject2).getNodeName().equals("param")))
            {
              localObject2 = (Element)localObject2;
              localObject3 = ((Element)localObject2).getAttribute("name");
              if ((localObject3 != null) && (((String)localObject3).equals("ClosedCaptionURL")))
              {
                ((PidResponseHolder)localObject1).setClosedCaptionUrl(((Element)localObject2).getAttribute("value"));
                return (PidResponseHolder)localObject1;
              }
            }
            i += 1;
          }
          return (PidResponseHolder)localObject1;
        }
        i += 1;
      }
      return (PidResponseHolder)localObject1;
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
    }
    return (PidResponseHolder)localObject1;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.pid.PidAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */