package com.adobe.adobepass.accessenabler.a;

import com.adobe.adobepass.accessenabler.d.c;
import com.adobe.adobepass.accessenabler.d.e;
import java.io.StringReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public final class a
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private List<String> i = new ArrayList();
  
  public a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (paramBoolean = a(paramString); !paramBoolean; paramBoolean = b(paramString)) {
      throw new RuntimeException("Error parsing authentication token.");
    }
  }
  
  private boolean a(String paramString)
  {
    boolean bool = false;
    try
    {
      paramString = c(paramString);
      paramString = paramString.getElementsByTagName("authnToken").item(0);
      if (paramString != null) {
        bool = b(e.a(paramString.getFirstChild().getNodeValue()));
      }
      return bool;
    }
    catch (Exception paramString)
    {
      c.b("AuthenticationToken", paramString.getMessage());
    }
    return false;
  }
  
  /* Error */
  private boolean b(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: aload_1
    //   4: putfield 87	com/adobe/adobepass/accessenabler/a/a:a	Ljava/lang/String;
    //   7: aload_1
    //   8: ldc 89
    //   10: invokevirtual 95	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   13: iconst_2
    //   14: aaload
    //   15: astore 6
    //   17: aload 6
    //   19: ldc 97
    //   21: invokevirtual 101	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   24: istore_3
    //   25: aload 6
    //   27: ldc 103
    //   29: invokevirtual 101	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   32: istore 4
    //   34: iload_3
    //   35: iflt +499 -> 534
    //   38: iload 4
    //   40: iload_3
    //   41: if_icmple +493 -> 534
    //   44: aload 6
    //   46: iload_3
    //   47: ldc 103
    //   49: invokevirtual 107	java/lang/String:length	()I
    //   52: iload 4
    //   54: iadd
    //   55: invokevirtual 111	java/lang/String:substring	(II)Ljava/lang/String;
    //   58: astore_1
    //   59: aload 6
    //   61: astore 5
    //   63: aload_1
    //   64: ifnull +13 -> 77
    //   67: aload 6
    //   69: aload_1
    //   70: ldc 113
    //   72: invokevirtual 117	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   75: astore 5
    //   77: aload 5
    //   79: invokestatic 46	com/adobe/adobepass/accessenabler/a/a:c	(Ljava/lang/String;)Lorg/w3c/dom/Document;
    //   82: astore 6
    //   84: aload 6
    //   86: ldc 119
    //   88: invokeinterface 54 2 0
    //   93: iconst_0
    //   94: invokeinterface 60 2 0
    //   99: astore 7
    //   101: aload 7
    //   103: ifnull +429 -> 532
    //   106: aload_0
    //   107: aload 7
    //   109: invokeinterface 66 1 0
    //   114: invokeinterface 70 1 0
    //   119: putfield 121	com/adobe/adobepass/accessenabler/a/a:b	Ljava/lang/String;
    //   122: aload 6
    //   124: ldc 123
    //   126: invokeinterface 54 2 0
    //   131: iconst_0
    //   132: invokeinterface 60 2 0
    //   137: astore 7
    //   139: aload 7
    //   141: ifnull +391 -> 532
    //   144: aload_0
    //   145: aload 7
    //   147: invokeinterface 66 1 0
    //   152: invokeinterface 70 1 0
    //   157: putfield 125	com/adobe/adobepass/accessenabler/a/a:c	Ljava/lang/String;
    //   160: aload 6
    //   162: ldc 127
    //   164: invokeinterface 54 2 0
    //   169: iconst_0
    //   170: invokeinterface 60 2 0
    //   175: astore 7
    //   177: aload 7
    //   179: ifnull +353 -> 532
    //   182: aload_0
    //   183: aload 7
    //   185: invokeinterface 66 1 0
    //   190: invokeinterface 70 1 0
    //   195: putfield 129	com/adobe/adobepass/accessenabler/a/a:e	Ljava/lang/String;
    //   198: aload 6
    //   200: ldc -125
    //   202: invokeinterface 54 2 0
    //   207: iconst_0
    //   208: invokeinterface 60 2 0
    //   213: astore 7
    //   215: aload 7
    //   217: ifnull +19 -> 236
    //   220: aload_0
    //   221: aload 7
    //   223: invokeinterface 66 1 0
    //   228: invokeinterface 70 1 0
    //   233: putfield 133	com/adobe/adobepass/accessenabler/a/a:g	Ljava/lang/String;
    //   236: aload 6
    //   238: ldc -121
    //   240: invokeinterface 54 2 0
    //   245: iconst_0
    //   246: invokeinterface 60 2 0
    //   251: astore 7
    //   253: aload 7
    //   255: ifnull +19 -> 274
    //   258: aload_0
    //   259: aload 7
    //   261: invokeinterface 66 1 0
    //   266: invokeinterface 70 1 0
    //   271: putfield 137	com/adobe/adobepass/accessenabler/a/a:f	Ljava/lang/String;
    //   274: aload 6
    //   276: ldc -117
    //   278: invokeinterface 54 2 0
    //   283: iconst_0
    //   284: invokeinterface 60 2 0
    //   289: astore 7
    //   291: aload 7
    //   293: ifnull +239 -> 532
    //   296: aload_0
    //   297: aload 7
    //   299: invokeinterface 66 1 0
    //   304: invokeinterface 70 1 0
    //   309: putfield 141	com/adobe/adobepass/accessenabler/a/a:d	Ljava/lang/String;
    //   312: aload 6
    //   314: ldc -113
    //   316: invokeinterface 54 2 0
    //   321: iconst_0
    //   322: invokeinterface 60 2 0
    //   327: astore 6
    //   329: aload 6
    //   331: ifnull +201 -> 532
    //   334: aload_0
    //   335: aload 6
    //   337: invokeinterface 66 1 0
    //   342: invokeinterface 70 1 0
    //   347: putfield 145	com/adobe/adobepass/accessenabler/a/a:h	Ljava/lang/String;
    //   350: ldc 77
    //   352: aload 5
    //   354: invokestatic 147	com/adobe/adobepass/accessenabler/d/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   357: aload_1
    //   358: ifnull +143 -> 501
    //   361: aload_1
    //   362: invokestatic 46	com/adobe/adobepass/accessenabler/a/a:c	(Ljava/lang/String;)Lorg/w3c/dom/Document;
    //   365: ldc -107
    //   367: invokeinterface 54 2 0
    //   372: astore_1
    //   373: aload_1
    //   374: ifnull +134 -> 508
    //   377: aload_1
    //   378: invokeinterface 152 1 0
    //   383: istore_3
    //   384: iload_2
    //   385: iload_3
    //   386: if_icmpge +122 -> 508
    //   389: aload_1
    //   390: iload_2
    //   391: invokeinterface 60 2 0
    //   396: invokeinterface 156 1 0
    //   401: iconst_0
    //   402: invokeinterface 159 2 0
    //   407: astore 5
    //   409: aload 5
    //   411: ifnull +35 -> 446
    //   414: aload 5
    //   416: invokeinterface 162 1 0
    //   421: ldc -92
    //   423: invokevirtual 168	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   426: ifeq +20 -> 446
    //   429: aload_0
    //   430: getfield 28	com/adobe/adobepass/accessenabler/a/a:i	Ljava/util/List;
    //   433: aload 5
    //   435: invokeinterface 70 1 0
    //   440: invokeinterface 173 2 0
    //   445: pop
    //   446: iload_2
    //   447: iconst_1
    //   448: iadd
    //   449: istore_2
    //   450: goto -66 -> 384
    //   453: astore_1
    //   454: ldc 77
    //   456: aload_1
    //   457: invokevirtual 176	java/lang/Exception:toString	()Ljava/lang/String;
    //   460: invokestatic 85	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   463: iconst_0
    //   464: ireturn
    //   465: astore_1
    //   466: ldc 77
    //   468: aload_1
    //   469: invokevirtual 176	java/lang/Exception:toString	()Ljava/lang/String;
    //   472: invokestatic 85	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   475: iconst_0
    //   476: ireturn
    //   477: astore_1
    //   478: ldc 77
    //   480: aload_1
    //   481: invokevirtual 176	java/lang/Exception:toString	()Ljava/lang/String;
    //   484: invokestatic 85	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   487: iconst_0
    //   488: ireturn
    //   489: astore_1
    //   490: ldc 77
    //   492: aload_1
    //   493: invokevirtual 176	java/lang/Exception:toString	()Ljava/lang/String;
    //   496: invokestatic 85	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   499: iconst_0
    //   500: ireturn
    //   501: ldc 77
    //   503: ldc -78
    //   505: invokestatic 147	com/adobe/adobepass/accessenabler/d/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   508: iconst_1
    //   509: ireturn
    //   510: astore_1
    //   511: aload_0
    //   512: getfield 28	com/adobe/adobepass/accessenabler/a/a:i	Ljava/util/List;
    //   515: invokeinterface 181 1 0
    //   520: ldc 77
    //   522: aload_1
    //   523: invokevirtual 176	java/lang/Exception:toString	()Ljava/lang/String;
    //   526: invokestatic 85	com/adobe/adobepass/accessenabler/d/c:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   529: goto -21 -> 508
    //   532: iconst_0
    //   533: ireturn
    //   534: aconst_null
    //   535: astore_1
    //   536: goto -477 -> 59
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	539	0	this	a
    //   0	539	1	paramString	String
    //   1	449	2	j	int
    //   24	363	3	k	int
    //   32	23	4	m	int
    //   61	373	5	localObject1	Object
    //   15	321	6	localObject2	Object
    //   99	199	7	localNode	Node
    // Exception table:
    //   from	to	target	type
    //   7	17	453	java/lang/Exception
    //   17	34	465	java/lang/Exception
    //   44	59	465	java/lang/Exception
    //   67	77	465	java/lang/Exception
    //   77	84	465	java/lang/Exception
    //   350	357	477	java/lang/Exception
    //   454	463	477	java/lang/Exception
    //   466	475	477	java/lang/Exception
    //   490	499	477	java/lang/Exception
    //   84	101	489	java/lang/Exception
    //   106	139	489	java/lang/Exception
    //   144	177	489	java/lang/Exception
    //   182	215	489	java/lang/Exception
    //   220	236	489	java/lang/Exception
    //   236	253	489	java/lang/Exception
    //   258	274	489	java/lang/Exception
    //   274	291	489	java/lang/Exception
    //   296	329	489	java/lang/Exception
    //   334	350	489	java/lang/Exception
    //   361	373	510	java/lang/Exception
    //   377	384	510	java/lang/Exception
    //   389	409	510	java/lang/Exception
    //   414	446	510	java/lang/Exception
    //   501	508	510	java/lang/Exception
  }
  
  private static Document c(String paramString)
  {
    DocumentBuilder localDocumentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
    InputSource localInputSource = new InputSource();
    localInputSource.setCharacterStream(new StringReader(paramString));
    paramString = localDocumentBuilder.parse(localInputSource);
    paramString.getDocumentElement().normalize();
    return paramString;
  }
  
  public final boolean a()
  {
    try
    {
      Date localDate = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss zzz Z").parse(d);
      if (localDate.compareTo(Calendar.getInstance().getTime()) < 0)
      {
        c.a("AuthenticationToken", "Found expired authentication token.");
        return false;
      }
    }
    catch (ParseException localParseException)
    {
      c.b("AuthenticationToken", localParseException.toString());
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
    return c;
  }
  
  public final String d()
  {
    return d;
  }
  
  public final String e()
  {
    return e;
  }
  
  public final String f()
  {
    return f;
  }
  
  public final String g()
  {
    return g;
  }
  
  public final String h()
  {
    return h;
  }
  
  public final boolean i()
  {
    return i.size() > 0;
  }
  
  public final List<String> j()
  {
    return i;
  }
  
  public final String k()
  {
    return a;
  }
  
  public static enum a
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */