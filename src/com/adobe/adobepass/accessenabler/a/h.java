package com.adobe.adobepass.accessenabler.a;

public final class h
{
  private String a;
  
  public h(String paramString)
  {
    a = paramString;
  }
  
  public final String a()
  {
    return a;
  }
  
  /* Error */
  public final java.util.List<i> b()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 13	com/adobe/adobepass/accessenabler/a/h:a	Ljava/lang/String;
    //   6: astore_3
    //   7: invokestatic 25	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   10: invokevirtual 29	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   13: astore 4
    //   15: new 31	org/xml/sax/InputSource
    //   18: dup
    //   19: invokespecial 32	org/xml/sax/InputSource:<init>	()V
    //   22: astore 5
    //   24: aload 5
    //   26: new 34	java/io/StringReader
    //   29: dup
    //   30: aload_3
    //   31: invokespecial 36	java/io/StringReader:<init>	(Ljava/lang/String;)V
    //   34: invokevirtual 40	org/xml/sax/InputSource:setCharacterStream	(Ljava/io/Reader;)V
    //   37: aload 4
    //   39: aload 5
    //   41: invokevirtual 46	javax/xml/parsers/DocumentBuilder:parse	(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    //   44: astore_3
    //   45: aload_3
    //   46: invokeinterface 52 1 0
    //   51: invokeinterface 57 1 0
    //   56: aload_3
    //   57: ldc 59
    //   59: invokeinterface 63 2 0
    //   64: astore 5
    //   66: new 65	java/util/ArrayList
    //   69: dup
    //   70: invokespecial 66	java/util/ArrayList:<init>	()V
    //   73: astore 4
    //   75: aload 5
    //   77: invokeinterface 72 1 0
    //   82: istore_2
    //   83: aload 4
    //   85: astore_3
    //   86: iload_1
    //   87: iload_2
    //   88: if_icmpge +93 -> 181
    //   91: aload 4
    //   93: new 74	com/adobe/adobepass/accessenabler/a/i
    //   96: dup
    //   97: aload 5
    //   99: iload_1
    //   100: invokeinterface 78 2 0
    //   105: invokeinterface 84 1 0
    //   110: iconst_0
    //   111: invokeinterface 78 2 0
    //   116: invokeinterface 87 1 0
    //   121: aload 5
    //   123: iload_1
    //   124: invokeinterface 78 2 0
    //   129: invokeinterface 84 1 0
    //   134: iconst_1
    //   135: invokeinterface 78 2 0
    //   140: invokeinterface 87 1 0
    //   145: invokevirtual 92	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   148: ldc 94
    //   150: invokevirtual 98	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   153: invokespecial 101	com/adobe/adobepass/accessenabler/a/i:<init>	(Ljava/lang/String;Z)V
    //   156: invokevirtual 104	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   159: pop
    //   160: iload_1
    //   161: iconst_1
    //   162: iadd
    //   163: istore_1
    //   164: goto -81 -> 83
    //   167: astore_3
    //   168: ldc 106
    //   170: aload_3
    //   171: invokevirtual 109	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   174: invokestatic 114	com/adobe/adobepass/accessenabler/d/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   177: invokestatic 119	java/util/Collections:emptyList	()Ljava/util/List;
    //   180: astore_3
    //   181: aload_3
    //   182: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	h
    //   1	163	1	i	int
    //   82	7	2	j	int
    //   6	80	3	localObject1	Object
    //   167	4	3	localException	Exception
    //   180	2	3	localList	java.util.List
    //   13	79	4	localObject2	Object
    //   22	100	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	83	167	java/lang/Exception
    //   91	160	167	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */