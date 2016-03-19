package com.google.e;

import com.google.e.b.j;
import com.google.e.d.c;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

public abstract class i
{
  public Number b()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public String c()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public double d()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public long e()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public int f()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public boolean g()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public final l h()
  {
    if ((this instanceof l)) {
      return (l)this;
    }
    throw new IllegalStateException("Not a JSON Object: " + this);
  }
  
  public final o i()
  {
    if ((this instanceof o)) {
      return (o)this;
    }
    throw new IllegalStateException("This is not a JSON Primitive.");
  }
  
  public String toString()
  {
    try
    {
      Object localObject = new StringWriter();
      c localc = new c((Writer)localObject);
      localc.b(true);
      j.a(this, localc);
      localObject = ((StringWriter)localObject).toString();
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.e.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */