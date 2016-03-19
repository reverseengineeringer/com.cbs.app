package com.d.a.a.a.a.a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

final class c
  implements Closeable
{
  private final InputStream a;
  private final Charset b;
  private byte[] c;
  private int d;
  private int e;
  
  public c(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, paramCharset, (byte)0);
  }
  
  private c(InputStream paramInputStream, Charset paramCharset, byte paramByte)
  {
    if ((paramInputStream == null) || (paramCharset == null)) {
      throw new NullPointerException();
    }
    if (!paramCharset.equals(d.a)) {
      throw new IllegalArgumentException("Unsupported encoding");
    }
    a = paramInputStream;
    b = paramCharset;
    c = new byte[' '];
  }
  
  private void b()
  {
    int i = a.read(c, 0, c.length);
    if (i == -1) {
      throw new EOFException();
    }
    d = 0;
    e = i;
  }
  
  public final String a()
  {
    synchronized (a)
    {
      if (c == null) {
        throw new IOException("LineReader is closed");
      }
    }
    if (d >= e) {
      b();
    }
    int i = d;
    for (;;)
    {
      if (i != e)
      {
        if (c[i] != 10) {
          break label272;
        }
        if ((i == d) || (c[(i - 1)] != 13)) {
          break label267;
        }
      }
      label267:
      for (int j = i - 1;; j = i)
      {
        Object localObject2 = new String(c, d, j - d, b.name());
        d = (i + 1);
        return (String)localObject2;
        localObject2 = new ByteArrayOutputStream(e - d + 80)
        {
          public final String toString()
          {
            if ((count > 0) && (buf[(count - 1)] == 13)) {}
            for (int i = count - 1;; i = count) {
              try
              {
                String str = new String(buf, 0, i, c.a(c.this).name());
                return str;
              }
              catch (UnsupportedEncodingException localUnsupportedEncodingException)
              {
                throw new AssertionError(localUnsupportedEncodingException);
              }
            }
          }
        };
        for (;;)
        {
          ((ByteArrayOutputStream)localObject2).write(c, d, e - d);
          e = -1;
          b();
          i = d;
          while (i != e)
          {
            if (c[i] == 10)
            {
              if (i != d) {
                ((ByteArrayOutputStream)localObject2).write(c, d, i - d);
              }
              d = (i + 1);
              localObject2 = ((ByteArrayOutputStream)localObject2).toString();
              return (String)localObject2;
            }
            i += 1;
          }
        }
      }
      label272:
      i += 1;
    }
  }
  
  public final void close()
  {
    synchronized (a)
    {
      if (c != null)
      {
        c = null;
        a.close();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.a.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */