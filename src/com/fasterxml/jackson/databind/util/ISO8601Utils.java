package com.fasterxml.jackson.databind.util;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

public class ISO8601Utils
{
  private static final String GMT_ID = "GMT";
  private static final TimeZone TIMEZONE_GMT = TimeZone.getTimeZone("GMT");
  
  private static boolean checkOffset(String paramString, int paramInt, char paramChar)
  {
    return (paramInt < paramString.length()) && (paramString.charAt(paramInt) == paramChar);
  }
  
  public static String format(Date paramDate)
  {
    return format(paramDate, false, TIMEZONE_GMT);
  }
  
  public static String format(Date paramDate, boolean paramBoolean)
  {
    return format(paramDate, paramBoolean, TIMEZONE_GMT);
  }
  
  public static String format(Date paramDate, boolean paramBoolean, TimeZone paramTimeZone)
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar(paramTimeZone, Locale.US);
    localGregorianCalendar.setTime(paramDate);
    int i;
    int j;
    label36:
    char c;
    if (paramBoolean)
    {
      i = 4;
      if (paramTimeZone.getRawOffset() != 0) {
        break label269;
      }
      j = 1;
      paramDate = new StringBuilder(j + (i + 19));
      padInt(paramDate, localGregorianCalendar.get(1), 4);
      paramDate.append('-');
      padInt(paramDate, localGregorianCalendar.get(2) + 1, 2);
      paramDate.append('-');
      padInt(paramDate, localGregorianCalendar.get(5), 2);
      paramDate.append('T');
      padInt(paramDate, localGregorianCalendar.get(11), 2);
      paramDate.append(':');
      padInt(paramDate, localGregorianCalendar.get(12), 2);
      paramDate.append(':');
      padInt(paramDate, localGregorianCalendar.get(13), 2);
      if (paramBoolean)
      {
        paramDate.append('.');
        padInt(paramDate, localGregorianCalendar.get(14), 3);
      }
      i = paramTimeZone.getOffset(localGregorianCalendar.getTimeInMillis());
      if (i == 0) {
        break label282;
      }
      j = Math.abs(i / 60000 / 60);
      int k = Math.abs(i / 60000 % 60);
      if (i >= 0) {
        break label276;
      }
      c = '-';
      label231:
      paramDate.append(c);
      padInt(paramDate, j, 2);
      paramDate.append(':');
      padInt(paramDate, k, 2);
    }
    for (;;)
    {
      return paramDate.toString();
      i = 0;
      break;
      label269:
      j = 6;
      break label36;
      label276:
      c = '+';
      break label231;
      label282:
      paramDate.append('Z');
    }
  }
  
  private static void padInt(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    String str = Integer.toString(paramInt1);
    paramInt1 = paramInt2 - str.length();
    while (paramInt1 > 0)
    {
      paramStringBuilder.append('0');
      paramInt1 -= 1;
    }
    paramStringBuilder.append(str);
  }
  
  public static Date parse(String paramString, ParsePosition paramParsePosition)
  {
    try
    {
      j = paramParsePosition.getIndex();
      i = j + 4;
      i2 = parseInt(paramString, j, i);
      if (!checkOffset(paramString, i, '-')) {
        break label773;
      }
      i += 1;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      for (;;)
      {
        int i2;
        int i3;
        int i4;
        boolean bool;
        GregorianCalendar localGregorianCalendar;
        if (paramString == null) {}
        for (paramString = null;; paramString = "\"" + paramString + "'")
        {
          String str2 = localIndexOutOfBoundsException.getMessage();
          if (str2 != null)
          {
            localObject2 = str2;
            if (!str2.isEmpty()) {}
          }
          else
          {
            localObject2 = "(" + localIndexOutOfBoundsException.getClass().getName() + ")";
          }
          paramString = new ParseException("Failed to parse date [" + paramString + "]: " + (String)localObject2, paramParsePosition.getIndex());
          paramString.initCause(localIndexOutOfBoundsException);
          throw paramString;
          c = paramString.charAt(j);
          if ((c != '+') && (c != '-')) {
            break;
          }
          Object localObject2 = paramString.substring(j);
          Object localObject1 = "GMT" + (String)localObject2;
          j += ((String)localObject2).length();
          localObject2 = TimeZone.getTimeZone((String)localObject1);
          str2 = ((TimeZone)localObject2).getID();
          if ((!str2.equals(localObject1)) && (!str2.replace(":", "").equals(localObject1)))
          {
            throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + (String)localObject1 + " given, resolves to " + ((TimeZone)localObject2).getID());
            throw new IndexOutOfBoundsException("Invalid time zone indicator " + c);
          }
          localObject1 = new GregorianCalendar((TimeZone)localObject2);
          ((Calendar)localObject1).setLenient(false);
          ((Calendar)localObject1).set(1, i2);
          ((Calendar)localObject1).set(2, i3 - 1);
          ((Calendar)localObject1).set(5, i4);
          ((Calendar)localObject1).set(11, n);
          ((Calendar)localObject1).set(12, m);
          ((Calendar)localObject1).set(13, k);
          ((Calendar)localObject1).set(14, i);
          paramParsePosition.setIndex(j);
          localObject1 = ((Calendar)localObject1).getTime();
          return (Date)localObject1;
        }
        int n = j;
        j = m;
        int m = i;
        int i = 0;
        continue;
        m = i;
        n = j;
        i = 0;
        int i1 = 0;
        j = k;
        int k = i1;
        continue;
        continue;
        i = 0;
        k = 0;
        m = 0;
        n = 0;
        continue;
        i = j;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        int j;
        char c;
        continue;
        if (c == 'Z')
        {
          String str1 = "GMT";
          j += 1;
        }
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      label773:
      for (;;) {}
    }
    j = i + 2;
    i3 = parseInt(paramString, i, j);
    if (checkOffset(paramString, j, '-'))
    {
      i = j + 1;
      j = i + 2;
      i4 = parseInt(paramString, i, j);
      bool = checkOffset(paramString, j, 'T');
      if ((!bool) && (paramString.length() <= j))
      {
        localGregorianCalendar = new GregorianCalendar(i2, i3 - 1, i4);
        paramParsePosition.setIndex(j);
        return localGregorianCalendar.getTime();
      }
      if (bool)
      {
        j += 1;
        i = j + 2;
        j = parseInt(paramString, j, i);
        if (checkOffset(paramString, i, ':'))
        {
          i += 1;
          m = i + 2;
          i = parseInt(paramString, i, m);
          k = m;
          if (checkOffset(paramString, m, ':')) {
            k = m + 1;
          }
          if (paramString.length() > k)
          {
            m = paramString.charAt(k);
            if ((m != 90) && (m != 43) && (m != 45))
            {
              m = k + 2;
              k = parseInt(paramString, k, m);
              if (checkOffset(paramString, m, '.'))
              {
                n = m + 1;
                m = n + 3;
                i1 = parseInt(paramString, n, m);
                n = j;
                j = m;
                m = i;
                i = i1;
                if (paramString.length() <= j) {
                  throw new IllegalArgumentException("No time zone indicator");
                }
              }
            }
          }
        }
      }
    }
  }
  
  private static int parseInt(String paramString, int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt2 > paramString.length()) || (paramInt1 > paramInt2)) {
      throw new NumberFormatException(paramString);
    }
    int j = 0;
    int i = paramInt1;
    if (paramInt1 < paramInt2)
    {
      i = Character.digit(paramString.charAt(paramInt1), 10);
      if (i < 0) {
        throw new NumberFormatException("Invalid number: " + paramString);
      }
      j = -i;
      i = paramInt1 + 1;
    }
    while (i < paramInt2)
    {
      paramInt1 = Character.digit(paramString.charAt(i), 10);
      if (paramInt1 < 0) {
        throw new NumberFormatException("Invalid number: " + paramString);
      }
      j = j * 10 - paramInt1;
      i += 1;
    }
    return -j;
  }
  
  public static TimeZone timeZoneGMT()
  {
    return TIMEZONE_GMT;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.util.ISO8601Utils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */