package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

public class au
{
  private static final String b = au.class.getSimpleName();
  String a = null;
  private byte[] c = null;
  
  private au() {}
  
  public au(byte[] paramArrayOfByte)
  {
    a = UUID.randomUUID().toString();
    c = paramArrayOfByte;
  }
  
  public static String a(String paramString)
  {
    return ".yflurrydatasenderblock." + paramString;
  }
  
  public final byte[] a()
  {
    return c;
  }
  
  public static final class a
    implements bb<au>
  {}
}

/* Location:
 * Qualified Name:     com.flurry.sdk.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */