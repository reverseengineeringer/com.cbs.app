package com.fasterxml.jackson.core.io;

import java.math.BigDecimal;

public final class NumberInput
{
  static final long L_BILLION = 1000000000L;
  static final String MAX_LONG_STR = "9223372036854775807";
  static final String MIN_LONG_STR_NO_SIGN = "-9223372036854775808".substring(1);
  public static final String NASTY_SMALL_DOUBLE = "2.2250738585072012e-308";
  
  private static NumberFormatException _badBD(String paramString)
  {
    return new NumberFormatException("Value \"" + paramString + "\" can not be represented as BigDecimal");
  }
  
  public static boolean inLongRange(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    int j;
    for (String str = MIN_LONG_STR_NO_SIGN;; str = MAX_LONG_STR)
    {
      j = str.length();
      i = paramString.length();
      if (i >= j) {
        break;
      }
      return true;
    }
    if (i > j) {
      return false;
    }
    int i = 0;
    while (i < j)
    {
      int k = paramString.charAt(i) - str.charAt(i);
      if (k != 0) {
        return k < 0;
      }
      i += 1;
    }
    return true;
  }
  
  public static boolean inLongRange(char[] paramArrayOfChar, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {}
    int i;
    for (String str = MIN_LONG_STR_NO_SIGN;; str = MAX_LONG_STR)
    {
      i = str.length();
      if (paramInt2 >= i) {
        break;
      }
      return true;
    }
    if (paramInt2 > i) {
      return false;
    }
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      int j = paramArrayOfChar[(paramInt1 + paramInt2)] - str.charAt(paramInt2);
      if (j != 0) {
        return j < 0;
      }
      paramInt2 += 1;
    }
    return true;
  }
  
  public static double parseAsDouble(String paramString, double paramDouble)
  {
    if (paramString == null) {}
    do
    {
      return paramDouble;
      paramString = paramString.trim();
    } while (paramString.length() == 0);
    try
    {
      double d = parseDouble(paramString);
      return d;
    }
    catch (NumberFormatException paramString) {}
    return paramDouble;
  }
  
  public static int parseAsInt(String paramString, int paramInt)
  {
    int k = 0;
    if (paramString == null) {}
    int i;
    do
    {
      return paramInt;
      paramString = paramString.trim();
      i = paramString.length();
    } while (i == 0);
    int j;
    if (i > 0)
    {
      j = paramString.charAt(0);
      if (j == 43)
      {
        paramString = paramString.substring(1);
        j = paramString.length();
        i = k;
      }
    }
    for (;;)
    {
      if (i < j)
      {
        k = paramString.charAt(i);
        if ((k <= 57) && (k >= 48)) {}
      }
      try
      {
        double d = parseDouble(paramString);
        return (int)d;
      }
      catch (NumberFormatException paramString)
      {
        try
        {
          i = Integer.parseInt(paramString);
          return i;
        }
        catch (NumberFormatException paramString)
        {
          return paramInt;
        }
        paramString = paramString;
        return paramInt;
      }
      if (j == 45)
      {
        k = 1;
        j = i;
        i = k;
        continue;
        i += 1;
      }
      else
      {
        j = i;
        i = k;
      }
    }
  }
  
  public static long parseAsLong(String paramString, long paramLong)
  {
    int k = 0;
    if (paramString == null) {}
    int i;
    do
    {
      return paramLong;
      paramString = paramString.trim();
      i = paramString.length();
    } while (i == 0);
    int j;
    if (i > 0)
    {
      j = paramString.charAt(0);
      if (j == 43)
      {
        paramString = paramString.substring(1);
        j = paramString.length();
        i = k;
      }
    }
    for (;;)
    {
      if (i < j)
      {
        k = paramString.charAt(i);
        if ((k <= 57) && (k >= 48)) {}
      }
      try
      {
        double d = parseDouble(paramString);
        return d;
      }
      catch (NumberFormatException paramString)
      {
        try
        {
          long l = Long.parseLong(paramString);
          return l;
        }
        catch (NumberFormatException paramString)
        {
          return paramLong;
        }
        paramString = paramString;
        return paramLong;
      }
      if (j == 45)
      {
        k = 1;
        j = i;
        i = k;
        continue;
        i += 1;
      }
      else
      {
        j = i;
        i = k;
      }
    }
  }
  
  public static BigDecimal parseBigDecimal(String paramString)
  {
    try
    {
      BigDecimal localBigDecimal = new BigDecimal(paramString);
      return localBigDecimal;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw _badBD(paramString);
    }
  }
  
  public static BigDecimal parseBigDecimal(char[] paramArrayOfChar)
  {
    return parseBigDecimal(paramArrayOfChar, 0, paramArrayOfChar.length);
  }
  
  public static BigDecimal parseBigDecimal(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    try
    {
      BigDecimal localBigDecimal = new BigDecimal(paramArrayOfChar, paramInt1, paramInt2);
      return localBigDecimal;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw _badBD(new String(paramArrayOfChar, paramInt1, paramInt2));
    }
  }
  
  public static double parseDouble(String paramString)
  {
    if ("2.2250738585072012e-308".equals(paramString)) {
      return Double.MIN_VALUE;
    }
    return Double.parseDouble(paramString);
  }
  
  public static int parseInt(String paramString)
  {
    int k = 1;
    int i = paramString.charAt(0);
    int n = paramString.length();
    int j;
    if (i == 45) {
      j = 1;
    }
    while (j != 0) {
      if ((n == 1) || (n > 10))
      {
        k = Integer.parseInt(paramString);
        return k;
        j = 0;
      }
      else
      {
        i = paramString.charAt(1);
        k = 2;
      }
    }
    while ((i > 57) || (i < 48))
    {
      return Integer.parseInt(paramString);
      if (n > 9) {
        return Integer.parseInt(paramString);
      }
    }
    int m = i - 48;
    i = m;
    if (k < n)
    {
      int i1 = k + 1;
      i = paramString.charAt(k);
      if ((i > 57) || (i < 48)) {
        return Integer.parseInt(paramString);
      }
      k = m * 10 + (i - 48);
      i = k;
      if (i1 < n)
      {
        m = i1 + 1;
        i = paramString.charAt(i1);
        if ((i > 57) || (i < 48)) {
          return Integer.parseInt(paramString);
        }
        k = k * 10 + (i - 48);
        i = k;
        if (m < n) {
          i = k;
        }
      }
    }
    for (;;)
    {
      k = m + 1;
      m = paramString.charAt(m);
      if ((m > 57) || (m < 48)) {
        return Integer.parseInt(paramString);
      }
      i = i * 10 + (m - 48);
      if (k >= n)
      {
        k = i;
        if (j == 0) {
          break;
        }
        return -i;
      }
      m = k;
    }
  }
  
  public static int parseInt(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int m = paramArrayOfChar[paramInt1] - '0';
    int i = m;
    int k = paramInt1;
    int j = paramInt2;
    if (paramInt2 > 4)
    {
      i = paramInt1 + 1;
      paramInt1 = paramArrayOfChar[i];
      j = i + 1;
      i = paramArrayOfChar[j];
      k = j + 1;
      j = paramArrayOfChar[k];
      int n = k + 1;
      paramInt1 = (((m * 10 + (paramInt1 - 48)) * 10 + (i - 48)) * 10 + (j - 48)) * 10 + (paramArrayOfChar[n] - '0');
      paramInt2 -= 4;
      i = paramInt1;
      k = n;
      j = paramInt2;
      if (paramInt2 > 4)
      {
        i = n + 1;
        paramInt2 = paramArrayOfChar[i];
        j = i + 1;
        i = paramArrayOfChar[j];
        j += 1;
        paramInt1 = (((paramInt1 * 10 + (paramInt2 - 48)) * 10 + (i - 48)) * 10 + (paramArrayOfChar[j] - '0')) * 10 + (paramArrayOfChar[(j + 1)] - '0');
      }
    }
    do
    {
      do
      {
        do
        {
          return paramInt1;
          paramInt1 = i;
        } while (j <= 1);
        k += 1;
        paramInt2 = i * 10 + (paramArrayOfChar[k] - '0');
        paramInt1 = paramInt2;
      } while (j <= 2);
      i = k + 1;
      paramInt2 = paramInt2 * 10 + (paramArrayOfChar[i] - '0');
      paramInt1 = paramInt2;
    } while (j <= 3);
    return paramInt2 * 10 + (paramArrayOfChar[(i + 1)] - '0');
  }
  
  public static long parseLong(String paramString)
  {
    if (paramString.length() <= 9) {
      return parseInt(paramString);
    }
    return Long.parseLong(paramString);
  }
  
  public static long parseLong(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    paramInt2 -= 9;
    long l = parseInt(paramArrayOfChar, paramInt1, paramInt2);
    return parseInt(paramArrayOfChar, paramInt2 + paramInt1, 9) + l * 1000000000L;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.io.NumberInput
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */