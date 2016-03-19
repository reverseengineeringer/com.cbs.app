package com.d.a.a.a.a.a;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

final class c$1
  extends ByteArrayOutputStream
{
  c$1(c paramc, int paramInt)
  {
    super(paramInt);
  }
  
  public final String toString()
  {
    if ((count > 0) && (buf[(count - 1)] == 13)) {}
    for (int i = count - 1;; i = count) {
      try
      {
        String str = new String(buf, 0, i, c.a(a).name());
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new AssertionError(localUnsupportedEncodingException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.a.a.a.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */