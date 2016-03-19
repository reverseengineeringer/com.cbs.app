package com.d.a.a.a.a.a;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

final class a$a$a
  extends FilterOutputStream
{
  private a$a$a(a.a parama, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public final void close()
  {
    try
    {
      out.close();
      return;
    }
    catch (IOException localIOException)
    {
      a.a.c(a);
    }
  }
  
  public final void flush()
  {
    try
    {
      out.flush();
      return;
    }
    catch (IOException localIOException)
    {
      a.a.c(a);
    }
  }
  
  public final void write(int paramInt)
  {
    try
    {
      out.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      a.a.c(a);
    }
  }
  
  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      a.a.c(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.a.a.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */