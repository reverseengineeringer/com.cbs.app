package com.flurry.sdk;

import java.security.MessageDigest;
import java.util.zip.CRC32;

public final class ae
  extends MessageDigest
{
  private CRC32 a = new CRC32();
  
  public ae()
  {
    super("CRC");
  }
  
  public final byte[] a()
  {
    return engineDigest();
  }
  
  protected final byte[] engineDigest()
  {
    long l = a.getValue();
    return new byte[] { (byte)(int)((0xFFFFFFFFFF000000 & l) >> 24), (byte)(int)((0xFF0000 & l) >> 16), (byte)(int)((0xFF00 & l) >> 8), (byte)(int)((l & 0xFF) >> 0) };
  }
  
  protected final void engineReset()
  {
    a.reset();
  }
  
  protected final void engineUpdate(byte paramByte)
  {
    a.update(paramByte);
  }
  
  protected final void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */