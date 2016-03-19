package com.google.c.a;

public abstract class a
  implements e<Character>
{
  public static final a a = new a.1();
  public static final a b = a('\000', '', "CharMatcher.ASCII");
  public static final a c = new a.c("CharMatcher.DIGIT", "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray(), q.toCharArray());
  public static final a d = new a.5("CharMatcher.JAVA_DIGIT");
  public static final a e = new a.6("CharMatcher.JAVA_LETTER");
  public static final a f = new a.7("CharMatcher.JAVA_LETTER_OR_DIGIT");
  public static final a g = new a.8("CharMatcher.JAVA_UPPER_CASE");
  public static final a h = new a.9("CharMatcher.JAVA_LOWER_CASE");
  public static final a i = a('\000', '\037').a(a('', '')).a("CharMatcher.JAVA_ISO_CONTROL");
  public static final a j = new a.c("CharMatcher.INVISIBLE", "\000­؀؜۝܏ ᠎   ⁦⁧⁨⁩⁪　?﻿￹￺".toCharArray(), "  ­؄؜۝܏ ᠎‏ ⁤⁦⁧⁨⁩⁯　﻿￹￻".toCharArray());
  public static final a k = new a.c("CharMatcher.SINGLE_WIDTH", "\000־א׳؀ݐ฀Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ๿₯℺﷿﻿ￜ".toCharArray());
  public static final a l = new a.10("CharMatcher.ANY");
  public static final a m = new a.2("CharMatcher.NONE");
  static final int o = Integer.numberOfLeadingZeros(31);
  public static final a p = new a.4("WHITESPACE");
  private static final String q;
  final String n;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder(31);
    int i1 = 0;
    while (i1 < 31)
    {
      localStringBuilder.append((char)("0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".charAt(i1) + '\t'));
      i1 += 1;
    }
    q = localStringBuilder.toString();
  }
  
  protected a()
  {
    n = super.toString();
  }
  
  a(String paramString)
  {
    n = paramString;
  }
  
  private static a a(char paramChar1, char paramChar2)
  {
    if (paramChar2 >= paramChar1) {}
    for (boolean bool = true;; bool = false)
    {
      d.a(bool);
      return a(paramChar1, paramChar2, "CharMatcher.inRange('" + b(paramChar1) + "', '" + b(paramChar2) + "')");
    }
  }
  
  private static a a(char paramChar1, char paramChar2, String paramString)
  {
    return new a.3(paramString, paramChar1, paramChar2);
  }
  
  private static String b(char paramChar)
  {
    char[] arrayOfChar = new char[6];
    char[] tmp6_5 = arrayOfChar;
    tmp6_5[0] = 92;
    char[] tmp11_6 = tmp6_5;
    tmp11_6[1] = 117;
    char[] tmp16_11 = tmp11_6;
    tmp16_11[2] = 0;
    char[] tmp21_16 = tmp16_11;
    tmp21_16[3] = 0;
    char[] tmp26_21 = tmp21_16;
    tmp26_21[4] = 0;
    char[] tmp31_26 = tmp26_21;
    tmp31_26[5] = 0;
    tmp31_26;
    char c1 = '\000';
    int i1 = paramChar;
    paramChar = c1;
    while (paramChar < '\004')
    {
      arrayOfChar[('\005' - paramChar)] = "0123456789ABCDEF".charAt(i1 & 0xF);
      i1 = (char)(i1 >> 4);
      paramChar += '\001';
    }
    return String.copyValueOf(arrayOfChar);
  }
  
  public a a(a parama)
  {
    return new a.b(this, (a)d.a(parama));
  }
  
  a a(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract boolean a(char paramChar);
  
  public boolean a(CharSequence paramCharSequence)
  {
    int i1 = paramCharSequence.length() - 1;
    while (i1 >= 0)
    {
      if (!a(paramCharSequence.charAt(i1))) {
        return false;
      }
      i1 -= 1;
    }
    return true;
  }
  
  @Deprecated
  public final boolean a(Character paramCharacter)
  {
    return a(paramCharacter.charValue());
  }
  
  public String toString()
  {
    return n;
  }
}

/* Location:
 * Qualified Name:     com.google.c.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */