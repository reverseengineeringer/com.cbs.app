package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

public abstract interface bb<ObjectType>
{
  public abstract ObjectType a(InputStream paramInputStream);
  
  public abstract void a(OutputStream paramOutputStream, ObjectType paramObjectType);
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */