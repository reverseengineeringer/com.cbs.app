package com.fasterxml.jackson.databind.util;

final class NameTransformer$2
  extends NameTransformer
{
  NameTransformer$2(String paramString1, String paramString2) {}
  
  public final String reverse(String paramString)
  {
    if (paramString.startsWith(val$prefix))
    {
      paramString = paramString.substring(val$prefix.length());
      if (paramString.endsWith(val$suffix)) {
        return paramString.substring(0, paramString.length() - val$suffix.length());
      }
    }
    return null;
  }
  
  public final String toString()
  {
    return "[PreAndSuffixTransformer('" + val$prefix + "','" + val$suffix + "')]";
  }
  
  public final String transform(String paramString)
  {
    return val$prefix + paramString + val$suffix;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.util.NameTransformer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */