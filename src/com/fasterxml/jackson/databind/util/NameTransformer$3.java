package com.fasterxml.jackson.databind.util;

final class NameTransformer$3
  extends NameTransformer
{
  NameTransformer$3(String paramString) {}
  
  public final String reverse(String paramString)
  {
    if (paramString.startsWith(val$prefix)) {
      return paramString.substring(val$prefix.length());
    }
    return null;
  }
  
  public final String toString()
  {
    return "[PrefixTransformer('" + val$prefix + "')]";
  }
  
  public final String transform(String paramString)
  {
    return val$prefix + paramString;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.util.NameTransformer.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */