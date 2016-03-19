package com.adobe.adobepass.accessenabler.d;

import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

final class a
{
  static final String[][] a;
  static final String[][] b;
  public static final a c;
  private static final String[][] d;
  private final a e = new b();
  
  static
  {
    Object localObject = { "gt", "62" };
    d = new String[][] { { "quot", "34" }, { "amp", "38" }, { "lt", "60" }, localObject };
    localObject = new String[] { "pound", "163" };
    String[] arrayOfString1 = { "curren", "164" };
    String[] arrayOfString2 = { "sect", "167" };
    String[] arrayOfString3 = { "copy", "169" };
    String[] arrayOfString4 = { "ordf", "170" };
    String[] arrayOfString5 = { "laquo", "171" };
    String[] arrayOfString6 = { "shy", "173" };
    String[] arrayOfString7 = { "reg", "174" };
    String[] arrayOfString8 = { "sup2", "178" };
    String[] arrayOfString9 = { "sup3", "179" };
    String[] arrayOfString10 = { "acute", "180" };
    String[] arrayOfString11 = { "para", "182" };
    String[] arrayOfString12 = { "cedil", "184" };
    String[] arrayOfString13 = { "ordm", "186" };
    String[] arrayOfString14 = { "frac12", "189" };
    String[] arrayOfString15 = { "Aacute", "193" };
    String[] arrayOfString16 = { "Acirc", "194" };
    String[] arrayOfString17 = { "Atilde", "195" };
    String[] arrayOfString18 = { "Aring", "197" };
    String[] arrayOfString19 = { "AElig", "198" };
    String[] arrayOfString20 = { "Ccedil", "199" };
    String[] arrayOfString21 = { "Ecirc", "202" };
    String[] arrayOfString22 = { "Iacute", "205" };
    String[] arrayOfString23 = { "Iuml", "207" };
    String[] arrayOfString24 = { "Ograve", "210" };
    String[] arrayOfString25 = { "Oacute", "211" };
    String[] arrayOfString26 = { "Oslash", "216" };
    String[] arrayOfString27 = { "Ucirc", "219" };
    String[] arrayOfString28 = { "Yacute", "221" };
    String[] arrayOfString29 = { "acirc", "226" };
    String[] arrayOfString30 = { "auml", "228" };
    String[] arrayOfString31 = { "aring", "229" };
    String[] arrayOfString32 = { "aelig", "230" };
    String[] arrayOfString33 = { "euml", "235" };
    String[] arrayOfString34 = { "icirc", "238" };
    String[] arrayOfString35 = { "iuml", "239" };
    String[] arrayOfString36 = { "eth", "240" };
    String[] arrayOfString37 = { "ocirc", "244" };
    String[] arrayOfString38 = { "otilde", "245" };
    String[] arrayOfString39 = { "divide", "247" };
    String[] arrayOfString40 = { "uacute", "250" };
    String[] arrayOfString41 = { "uuml", "252" };
    a = new String[][] { { "nbsp", "160" }, { "iexcl", "161" }, { "cent", "162" }, localObject, arrayOfString1, { "yen", "165" }, { "brvbar", "166" }, arrayOfString2, { "uml", "168" }, arrayOfString3, arrayOfString4, arrayOfString5, { "not", "172" }, arrayOfString6, arrayOfString7, { "macr", "175" }, { "deg", "176" }, { "plusmn", "177" }, arrayOfString8, arrayOfString9, arrayOfString10, { "micro", "181" }, arrayOfString11, { "middot", "183" }, arrayOfString12, { "sup1", "185" }, arrayOfString13, { "raquo", "187" }, { "frac14", "188" }, arrayOfString14, { "frac34", "190" }, { "iquest", "191" }, { "Agrave", "192" }, arrayOfString15, arrayOfString16, arrayOfString17, { "Auml", "196" }, arrayOfString18, arrayOfString19, arrayOfString20, { "Egrave", "200" }, { "Eacute", "201" }, arrayOfString21, { "Euml", "203" }, { "Igrave", "204" }, arrayOfString22, { "Icirc", "206" }, arrayOfString23, { "ETH", "208" }, { "Ntilde", "209" }, arrayOfString24, arrayOfString25, { "Ocirc", "212" }, { "Otilde", "213" }, { "Ouml", "214" }, { "times", "215" }, arrayOfString26, { "Ugrave", "217" }, { "Uacute", "218" }, arrayOfString27, { "Uuml", "220" }, arrayOfString28, { "THORN", "222" }, { "szlig", "223" }, { "agrave", "224" }, { "aacute", "225" }, arrayOfString29, { "atilde", "227" }, arrayOfString30, arrayOfString31, arrayOfString32, { "ccedil", "231" }, { "egrave", "232" }, { "eacute", "233" }, { "ecirc", "234" }, arrayOfString33, { "igrave", "236" }, { "iacute", "237" }, arrayOfString34, arrayOfString35, arrayOfString36, { "ntilde", "241" }, { "ograve", "242" }, { "oacute", "243" }, arrayOfString37, arrayOfString38, { "ouml", "246" }, arrayOfString39, { "oslash", "248" }, { "ugrave", "249" }, arrayOfString40, { "ucirc", "251" }, arrayOfString41, { "yacute", "253" }, { "thorn", "254" }, { "yuml", "255" } };
    localObject = new String[] { "fnof", "402" };
    arrayOfString1 = new String[] { "Beta", "914" };
    arrayOfString2 = new String[] { "Gamma", "915" };
    arrayOfString3 = new String[] { "Delta", "916" };
    arrayOfString4 = new String[] { "Epsilon", "917" };
    arrayOfString5 = new String[] { "Eta", "919" };
    arrayOfString6 = new String[] { "Theta", "920" };
    arrayOfString7 = new String[] { "Iota", "921" };
    arrayOfString8 = new String[] { "Kappa", "922" };
    arrayOfString9 = new String[] { "Xi", "926" };
    arrayOfString10 = new String[] { "Omicron", "927" };
    arrayOfString11 = new String[] { "Rho", "929" };
    arrayOfString12 = new String[] { "Tau", "932" };
    arrayOfString13 = new String[] { "Upsilon", "933" };
    arrayOfString14 = new String[] { "Chi", "935" };
    arrayOfString15 = new String[] { "Psi", "936" };
    arrayOfString16 = new String[] { "Omega", "937" };
    arrayOfString17 = new String[] { "alpha", "945" };
    arrayOfString18 = new String[] { "beta", "946" };
    arrayOfString19 = new String[] { "gamma", "947" };
    arrayOfString20 = new String[] { "epsilon", "949" };
    arrayOfString21 = new String[] { "zeta", "950" };
    arrayOfString22 = new String[] { "eta", "951" };
    arrayOfString23 = new String[] { "theta", "952" };
    arrayOfString24 = new String[] { "iota", "953" };
    arrayOfString25 = new String[] { "kappa", "954" };
    arrayOfString26 = new String[] { "nu", "957" };
    arrayOfString27 = new String[] { "omicron", "959" };
    arrayOfString28 = new String[] { "pi", "960" };
    arrayOfString29 = new String[] { "rho", "961" };
    arrayOfString30 = new String[] { "sigma", "963" };
    arrayOfString31 = new String[] { "tau", "964" };
    arrayOfString32 = new String[] { "psi", "968" };
    arrayOfString33 = new String[] { "omega", "969" };
    arrayOfString34 = new String[] { "upsih", "978" };
    arrayOfString35 = new String[] { "bull", "8226" };
    arrayOfString36 = new String[] { "Prime", "8243" };
    arrayOfString37 = new String[] { "oline", "8254" };
    arrayOfString38 = new String[] { "frasl", "8260" };
    arrayOfString39 = new String[] { "image", "8465" };
    arrayOfString40 = new String[] { "real", "8476" };
    arrayOfString41 = new String[] { "trade", "8482" };
    String[] arrayOfString42 = { "alefsym", "8501" };
    String[] arrayOfString43 = { "uarr", "8593" };
    String[] arrayOfString44 = { "rarr", "8594" };
    String[] arrayOfString45 = { "crarr", "8629" };
    String[] arrayOfString46 = { "lArr", "8656" };
    String[] arrayOfString47 = { "uArr", "8657" };
    String[] arrayOfString48 = { "rArr", "8658" };
    String[] arrayOfString49 = { "dArr", "8659" };
    String[] arrayOfString50 = { "hArr", "8660" };
    String[] arrayOfString51 = { "forall", "8704" };
    String[] arrayOfString52 = { "part", "8706" };
    String[] arrayOfString53 = { "exist", "8707" };
    String[] arrayOfString54 = { "empty", "8709" };
    String[] arrayOfString55 = { "ni", "8715" };
    String[] arrayOfString56 = { "prod", "8719" };
    String[] arrayOfString57 = { "sum", "8721" };
    String[] arrayOfString58 = { "minus", "8722" };
    String[] arrayOfString59 = { "lowast", "8727" };
    String[] arrayOfString60 = { "radic", "8730" };
    String[] arrayOfString61 = { "prop", "8733" };
    String[] arrayOfString62 = { "infin", "8734" };
    String[] arrayOfString63 = { "ang", "8736" };
    String[] arrayOfString64 = { "and", "8743" };
    String[] arrayOfString65 = { "or", "8744" };
    String[] arrayOfString66 = { "cap", "8745" };
    String[] arrayOfString67 = { "int", "8747" };
    String[] arrayOfString68 = { "there4", "8756" };
    String[] arrayOfString69 = { "cong", "8773" };
    String[] arrayOfString70 = { "ne", "8800" };
    String[] arrayOfString71 = { "ge", "8805" };
    String[] arrayOfString72 = { "sub", "8834" };
    String[] arrayOfString73 = { "sup", "8835" };
    String[] arrayOfString74 = { "sube", "8838" };
    String[] arrayOfString75 = { "supe", "8839" };
    String[] arrayOfString76 = { "oplus", "8853" };
    String[] arrayOfString77 = { "otimes", "8855" };
    String[] arrayOfString78 = { "perp", "8869" };
    String[] arrayOfString79 = { "sdot", "8901" };
    String[] arrayOfString80 = { "lceil", "8968" };
    String[] arrayOfString81 = { "rceil", "8969" };
    String[] arrayOfString82 = { "lfloor", "8970" };
    String[] arrayOfString83 = { "rang", "9002" };
    String[] arrayOfString84 = { "loz", "9674" };
    String[] arrayOfString85 = { "clubs", "9827" };
    String[] arrayOfString86 = { "oelig", "339" };
    String[] arrayOfString87 = { "Scaron", "352" };
    String[] arrayOfString88 = { "scaron", "353" };
    String[] arrayOfString89 = { "Yuml", "376" };
    String[] arrayOfString90 = { "circ", "710" };
    String[] arrayOfString91 = { "tilde", "732" };
    String[] arrayOfString92 = { "ensp", "8194" };
    String[] arrayOfString93 = { "emsp", "8195" };
    String[] arrayOfString94 = { "thinsp", "8201" };
    String[] arrayOfString95 = { "zwnj", "8204" };
    String[] arrayOfString96 = { "zwj", "8205" };
    String[] arrayOfString97 = { "rlm", "8207" };
    String[] arrayOfString98 = { "lsquo", "8216" };
    String[] arrayOfString99 = { "rsquo", "8217" };
    String[] arrayOfString100 = { "bdquo", "8222" };
    String[] arrayOfString101 = { "dagger", "8224" };
    String[] arrayOfString102 = { "Dagger", "8225" };
    String[] arrayOfString103 = { "permil", "8240" };
    String[] arrayOfString104 = { "lsaquo", "8249" };
    String[] arrayOfString105 = { "rsaquo", "8250" };
    String[] arrayOfString106 = { "euro", "8364" };
    b = new String[][] { localObject, { "Alpha", "913" }, arrayOfString1, arrayOfString2, arrayOfString3, arrayOfString4, { "Zeta", "918" }, arrayOfString5, arrayOfString6, arrayOfString7, arrayOfString8, { "Lambda", "923" }, { "Mu", "924" }, { "Nu", "925" }, arrayOfString9, arrayOfString10, { "Pi", "928" }, arrayOfString11, { "Sigma", "931" }, arrayOfString12, arrayOfString13, { "Phi", "934" }, arrayOfString14, arrayOfString15, arrayOfString16, arrayOfString17, arrayOfString18, arrayOfString19, { "delta", "948" }, arrayOfString20, arrayOfString21, arrayOfString22, arrayOfString23, arrayOfString24, arrayOfString25, { "lambda", "955" }, { "mu", "956" }, arrayOfString26, { "xi", "958" }, arrayOfString27, arrayOfString28, arrayOfString29, { "sigmaf", "962" }, arrayOfString30, arrayOfString31, { "upsilon", "965" }, { "phi", "966" }, { "chi", "967" }, arrayOfString32, arrayOfString33, { "thetasym", "977" }, arrayOfString34, { "piv", "982" }, arrayOfString35, { "hellip", "8230" }, { "prime", "8242" }, arrayOfString36, arrayOfString37, arrayOfString38, { "weierp", "8472" }, arrayOfString39, arrayOfString40, arrayOfString41, arrayOfString42, { "larr", "8592" }, arrayOfString43, arrayOfString44, { "darr", "8595" }, { "harr", "8596" }, arrayOfString45, arrayOfString46, arrayOfString47, arrayOfString48, arrayOfString49, arrayOfString50, arrayOfString51, arrayOfString52, arrayOfString53, arrayOfString54, { "nabla", "8711" }, { "isin", "8712" }, { "notin", "8713" }, arrayOfString55, arrayOfString56, arrayOfString57, arrayOfString58, arrayOfString59, arrayOfString60, arrayOfString61, arrayOfString62, arrayOfString63, arrayOfString64, arrayOfString65, arrayOfString66, { "cup", "8746" }, arrayOfString67, arrayOfString68, { "sim", "8764" }, arrayOfString69, { "asymp", "8776" }, arrayOfString70, { "equiv", "8801" }, { "le", "8804" }, arrayOfString71, arrayOfString72, arrayOfString73, arrayOfString74, arrayOfString75, arrayOfString76, arrayOfString77, arrayOfString78, arrayOfString79, arrayOfString80, arrayOfString81, arrayOfString82, { "rfloor", "8971" }, { "lang", "9001" }, arrayOfString83, arrayOfString84, { "spades", "9824" }, arrayOfString85, { "hearts", "9829" }, { "diams", "9830" }, { "OElig", "338" }, arrayOfString86, arrayOfString87, arrayOfString88, arrayOfString89, arrayOfString90, arrayOfString91, arrayOfString92, arrayOfString93, arrayOfString94, arrayOfString95, arrayOfString96, { "lrm", "8206" }, arrayOfString97, { "ndash", "8211" }, { "mdash", "8212" }, arrayOfString98, arrayOfString99, { "sbquo", "8218" }, { "ldquo", "8220" }, { "rdquo", "8221" }, arrayOfString100, arrayOfString101, arrayOfString102, arrayOfString103, arrayOfString104, arrayOfString105, arrayOfString106 };
    localObject = new a();
    ((a)localObject).a(d);
    ((a)localObject).a(a);
    ((a)localObject).a(b);
    c = (a)localObject;
  }
  
  private void a(String[][] paramArrayOfString)
  {
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String[] arrayOfString = paramArrayOfString[i];
      String str = arrayOfString[0];
      int k = Integer.parseInt(arrayOfString[1]);
      e.a(str, k);
      i += 1;
    }
  }
  
  public final void a(Writer paramWriter, String paramString)
  {
    int i = paramString.indexOf('&');
    if (i < 0)
    {
      paramWriter.write(paramString);
      return;
    }
    paramWriter.write(paramString, 0, i);
    int m = paramString.length();
    label30:
    int j;
    int n;
    int k;
    if (i < m)
    {
      j = paramString.charAt(i);
      if (j != 38) {
        break label285;
      }
      n = i + 1;
      k = paramString.indexOf(';', n);
      if (k != -1) {
        break label84;
      }
      paramWriter.write(j);
    }
    for (;;)
    {
      i += 1;
      break label30;
      break;
      label84:
      int i1 = paramString.indexOf('&', i + 1);
      if ((i1 == -1) || (i1 >= k)) {
        break label117;
      }
      paramWriter.write(j);
    }
    label117:
    String str = paramString.substring(n, k);
    i = str.length();
    if (i > 0) {
      if (str.charAt(0) == '#')
      {
        if (i <= 1) {
          break label294;
        }
        switch (str.charAt(1))
        {
        }
      }
    }
    for (;;)
    {
      try
      {
        j = Integer.parseInt(str.substring(1), 10);
        i = j;
        if (j > 65535) {
          i = -1;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        i = -1;
        continue;
      }
      if (i == -1)
      {
        paramWriter.write(38);
        paramWriter.write(str);
        paramWriter.write(59);
        i = k;
        break;
        j = Integer.parseInt(str.substring(2), 16);
        continue;
        i = e.a(str);
        continue;
      }
      paramWriter.write(i);
      continue;
      label285:
      paramWriter.write(j);
      break;
      label294:
      i = -1;
    }
  }
  
  static abstract interface a
  {
    public abstract int a(String paramString);
    
    public abstract void a(String paramString, int paramInt);
  }
  
  static final class b
    extends a.c
  {}
  
  static class c
    implements a.a
  {
    private final Map a = new HashMap();
    private final b b = new b();
    
    public final int a(String paramString)
    {
      paramString = a.get(paramString);
      if (paramString == null) {
        return -1;
      }
      return ((Integer)paramString).intValue();
    }
    
    public final void a(String paramString, int paramInt)
    {
      a.put(paramString, Integer.valueOf(paramInt));
      b.a(paramInt, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */