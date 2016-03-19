package com.adobe.adobepass.accessenabler.a;

import com.adobe.adobepass.accessenabler.d.c;
import java.io.StringReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public final class b
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  
  public b(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (paramBoolean = a(paramString); !paramBoolean; paramBoolean = b(paramString)) {
      throw new RuntimeException("Error parsing authorization token.");
    }
  }
  
  private static String a(Node paramNode)
  {
    Object localObject;
    if ((paramNode == null) || (paramNode.getChildNodes() == null)) {
      localObject = null;
    }
    do
    {
      return (String)localObject;
      NodeList localNodeList = paramNode.getChildNodes();
      paramNode = "";
      int i = 0;
      while (i < localNodeList.getLength())
      {
        Node localNode = localNodeList.item(i);
        localObject = paramNode;
        if (localNode != null)
        {
          localObject = paramNode;
          if (localNode.getNodeValue() != null) {
            localObject = paramNode + localNode.getNodeValue();
          }
        }
        i += 1;
        paramNode = (Node)localObject;
      }
      localObject = paramNode;
    } while (paramNode.length() > 0);
    return null;
  }
  
  private boolean a(String paramString)
  {
    boolean bool2 = false;
    try
    {
      DocumentBuilder localDocumentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
      InputSource localInputSource = new InputSource();
      localInputSource.setCharacterStream(new StringReader(paramString));
      paramString = localDocumentBuilder.parse(localInputSource);
      paramString.getDocumentElement().normalize();
      paramString = paramString.getElementsByTagName("authzToken").item(0);
      boolean bool1 = bool2;
      if (paramString != null)
      {
        bool1 = bool2;
        if (b(paramString.getFirstChild().getNodeValue())) {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (Exception paramString)
    {
      c.b("AuthorizationToken", paramString.getMessage());
    }
    return false;
  }
  
  /* Error */
  private boolean b(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: aload_1
    //   4: putfield 127	com/adobe/adobepass/accessenabler/a/b:a	Ljava/lang/String;
    //   7: aload_1
    //   8: invokestatic 132	com/adobe/adobepass/accessenabler/d/e:a	(Ljava/lang/String;)Ljava/lang/String;
    //   11: astore_1
    //   12: aload_1
    //   13: ldc -122
    //   15: invokevirtual 138	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   18: iconst_2
    //   19: aaload
    //   20: astore_1
    //   21: aload_1
    //   22: ldc -116
    //   24: ldc -114
    //   26: invokevirtual 146	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   29: astore_1
    //   30: invokestatic 74	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   33: invokevirtual 78	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   36: astore 4
    //   38: new 80	org/xml/sax/InputSource
    //   41: dup
    //   42: invokespecial 81	org/xml/sax/InputSource:<init>	()V
    //   45: astore 5
    //   47: aload 5
    //   49: new 83	java/io/StringReader
    //   52: dup
    //   53: aload_1
    //   54: invokespecial 84	java/io/StringReader:<init>	(Ljava/lang/String;)V
    //   57: invokevirtual 88	org/xml/sax/InputSource:setCharacterStream	(Ljava/io/Reader;)V
    //   60: aload 4
    //   62: aload 5
    //   64: invokevirtual 94	javax/xml/parsers/DocumentBuilder:parse	(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    //   67: astore_1
    //   68: aload_1
    //   69: invokeinterface 100 1 0
    //   74: invokeinterface 105 1 0
    //   79: aload_1
    //   80: ldc -108
    //   82: invokeinterface 111 2 0
    //   87: iconst_0
    //   88: invokeinterface 47 2 0
    //   93: astore 4
    //   95: iload_3
    //   96: istore_2
    //   97: aload 4
    //   99: ifnull +128 -> 227
    //   102: aload_0
    //   103: aload 4
    //   105: invokeinterface 115 1 0
    //   110: invokeinterface 51 1 0
    //   115: putfield 150	com/adobe/adobepass/accessenabler/a/b:c	Ljava/lang/String;
    //   118: aload_1
    //   119: ldc -104
    //   121: invokeinterface 111 2 0
    //   126: iconst_0
    //   127: invokeinterface 47 2 0
    //   132: astore 4
    //   134: iload_3
    //   135: istore_2
    //   136: aload 4
    //   138: ifnull +89 -> 227
    //   141: aload_0
    //   142: aload 4
    //   144: invokestatic 154	com/adobe/adobepass/accessenabler/a/b:a	(Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   147: putfield 156	com/adobe/adobepass/accessenabler/a/b:b	Ljava/lang/String;
    //   150: aload_1
    //   151: ldc -98
    //   153: invokeinterface 111 2 0
    //   158: iconst_0
    //   159: invokeinterface 47 2 0
    //   164: astore 4
    //   166: iload_3
    //   167: istore_2
    //   168: aload 4
    //   170: ifnull +57 -> 227
    //   173: aload_0
    //   174: aload 4
    //   176: invokeinterface 115 1 0
    //   181: invokeinterface 51 1 0
    //   186: putfield 160	com/adobe/adobepass/accessenabler/a/b:d	Ljava/lang/String;
    //   189: aload_1
    //   190: ldc -94
    //   192: invokeinterface 111 2 0
    //   197: iconst_0
    //   198: invokeinterface 47 2 0
    //   203: astore_1
    //   204: iload_3
    //   205: istore_2
    //   206: aload_1
    //   207: ifnull +20 -> 227
    //   210: aload_0
    //   211: aload_1
    //   212: invokeinterface 115 1 0
    //   217: invokeinterface 51 1 0
    //   222: putfield 164	com/adobe/adobepass/accessenabler/a/b:e	Ljava/lang/String;
    //   225: iconst_1
    //   226: istore_2
    //   227: iload_2
    //   228: ireturn
    //   229: astore_1
    //   230: ldc 117
    //   232: aload_1
    //   233: invokevirtual 165	java/lang/Exception:toString	()Ljava/lang/String;
    //   236: invokestatic 125	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   239: iconst_0
    //   240: ireturn
    //   241: astore_1
    //   242: ldc 117
    //   244: aload_1
    //   245: invokevirtual 165	java/lang/Exception:toString	()Ljava/lang/String;
    //   248: invokestatic 125	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   251: iconst_0
    //   252: ireturn
    //   253: astore_1
    //   254: ldc 117
    //   256: aload_1
    //   257: invokevirtual 165	java/lang/Exception:toString	()Ljava/lang/String;
    //   260: invokestatic 125	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   263: iconst_0
    //   264: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	265	0	this	b
    //   0	265	1	paramString	String
    //   96	132	2	bool1	boolean
    //   1	204	3	bool2	boolean
    //   36	139	4	localObject	Object
    //   45	18	5	localInputSource	InputSource
    // Exception table:
    //   from	to	target	type
    //   12	21	229	java/lang/Exception
    //   30	79	241	java/lang/Exception
    //   79	95	253	java/lang/Exception
    //   102	134	253	java/lang/Exception
    //   141	166	253	java/lang/Exception
    //   173	204	253	java/lang/Exception
    //   210	225	253	java/lang/Exception
  }
  
  public final boolean a()
  {
    try
    {
      Date localDate = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss zzz Z").parse(d);
      if (localDate.compareTo(Calendar.getInstance().getTime()) < 0)
      {
        c.a("AuthorizationToken", "Found expired authorization token.");
        return false;
      }
    }
    catch (ParseException localParseException)
    {
      c.b("AuthorizationToken", localParseException.toString());
      return false;
    }
    return true;
  }
  
  public final String b()
  {
    return b;
  }
  
  public final String c()
  {
    return d;
  }
  
  public final String d()
  {
    return a;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof b)) {
      return false;
    }
    return b.equals(b);
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */