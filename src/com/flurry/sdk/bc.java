package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class bc<T>
  implements bb<T>
{
  private final String a;
  private final int b;
  private final bd<T> c;
  
  public bc(String paramString, int paramInt, bd<T> parambd)
  {
    a = paramString;
    b = 1;
    c = parambd;
  }
  
  public final T a(InputStream paramInputStream)
  {
    if ((paramInputStream == null) || (c == null)) {
      return null;
    }
    paramInputStream = new DataInputStream(paramInputStream)
    {
      public final void close() {}
    };
    String str = paramInputStream.readUTF();
    if (!a.equals(str)) {
      throw new IOException("Signature: " + str + " is invalid");
    }
    paramInputStream.readInt();
    return (T)c.a().a(paramInputStream);
  }
  
  public final void a(OutputStream paramOutputStream, T paramT)
  {
    if ((paramOutputStream == null) || (c == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public final void close() {}
    };
    paramOutputStream.writeUTF(a);
    paramOutputStream.writeInt(b);
    c.a().a(paramOutputStream, paramT);
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */