package com.d.a.a.a.a.a;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class a$a
{
  private final a.b b;
  private final boolean[] c;
  private boolean d;
  private boolean e;
  
  private a$a(a parama, a.b paramb)
  {
    b = paramb;
    if (a.b.e(paramb)) {}
    for (parama = null;; parama = new boolean[a.g(parama)])
    {
      c = parama;
      return;
    }
  }
  
  public final OutputStream a()
  {
    synchronized (a)
    {
      if (a.b.b(b) != this) {
        throw new IllegalStateException();
      }
    }
    if (!a.b.e(b)) {
      c[0] = true;
    }
    File localFile = b.b(0);
    try
    {
      Object localObject2 = new FileOutputStream(localFile);
      localObject2 = new a((OutputStream)localObject2, (byte)0);
      return (OutputStream)localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      for (;;)
      {
        a.h(a).mkdirs();
        try
        {
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          OutputStream localOutputStream = a.a();
          return localOutputStream;
        }
      }
    }
  }
  
  public final void b()
  {
    if (d)
    {
      a.a(a, this, false);
      a.c(a.b.d(b));
    }
    for (;;)
    {
      e = true;
      return;
      a.a(a, this, true);
    }
  }
  
  public final void c()
  {
    a.a(a, this, false);
  }
  
  private final class a
    extends FilterOutputStream
  {
    private a(OutputStream paramOutputStream)
    {
      super();
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
        a.a.c(a.a.this);
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
        a.a.c(a.a.this);
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
        a.a.c(a.a.this);
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
        a.a.c(a.a.this);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.a.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */