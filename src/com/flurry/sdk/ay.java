package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

public class ay<ObjectType>
  implements bb<ObjectType>
{
  protected final bb<ObjectType> a;
  
  public ay(bb<ObjectType> parambb)
  {
    a = parambb;
  }
  
  public ObjectType a(InputStream paramInputStream)
  {
    if ((a != null) && (paramInputStream != null)) {
      return (ObjectType)a.a(paramInputStream);
    }
    return null;
  }
  
  public void a(OutputStream paramOutputStream, ObjectType paramObjectType)
  {
    if ((a != null) && (paramOutputStream != null) && (paramObjectType != null)) {
      a.a(paramOutputStream, paramObjectType);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */