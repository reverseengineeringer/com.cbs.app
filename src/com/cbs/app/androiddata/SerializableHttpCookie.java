package com.cbs.app.androiddata;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.net.HttpCookie;

public class SerializableHttpCookie
  implements Serializable
{
  private static final String a = SerializableHttpCookie.class.getSimpleName();
  private transient HttpCookie b;
  private Field c;
  
  private static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    int j = paramArrayOfByte.length;
    int i = 0;
    while (i < j)
    {
      int k = paramArrayOfByte[i] & 0xFF;
      if (k < 16) {
        localStringBuilder.append('0');
      }
      localStringBuilder.append(Integer.toHexString(k));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static HttpCookie a(String paramString)
  {
    int j = paramString.length();
    byte[] arrayOfByte = new byte[j / 2];
    int i = 0;
    while (i < j)
    {
      arrayOfByte[(i / 2)] = ((byte)((Character.digit(paramString.charAt(i), 16) << 4) + Character.digit(paramString.charAt(i + 1), 16)));
      i += 2;
    }
    paramString = new ByteArrayInputStream(arrayOfByte);
    try
    {
      paramString = ObjectInputStreamreadObjectb;
      return paramString;
    }
    catch (IOException paramString)
    {
      LG.a(a, "IOException in decodeCookie", paramString);
      return null;
    }
    catch (ClassNotFoundException paramString)
    {
      LG.a(a, "ClassNotFoundException in decodeCookie", paramString);
    }
    return null;
  }
  
  private boolean a()
  {
    try
    {
      b();
      boolean bool = ((Boolean)c.get(b)).booleanValue();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  private void b()
  {
    c = b.getClass().getDeclaredField("httpOnly");
    c.setAccessible(true);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    b = new HttpCookie((String)paramObjectInputStream.readObject(), (String)paramObjectInputStream.readObject());
    b.setComment((String)paramObjectInputStream.readObject());
    b.setCommentURL((String)paramObjectInputStream.readObject());
    b.setDomain((String)paramObjectInputStream.readObject());
    b.setMaxAge(paramObjectInputStream.readLong());
    b.setPath((String)paramObjectInputStream.readObject());
    b.setPortlist((String)paramObjectInputStream.readObject());
    b.setVersion(paramObjectInputStream.readInt());
    b.setSecure(paramObjectInputStream.readBoolean());
    b.setDiscard(paramObjectInputStream.readBoolean());
    boolean bool = paramObjectInputStream.readBoolean();
    try
    {
      b();
      c.set(b, Boolean.valueOf(bool));
      return;
    }
    catch (Exception paramObjectInputStream) {}
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeObject(b.getName());
    paramObjectOutputStream.writeObject(b.getValue());
    paramObjectOutputStream.writeObject(b.getComment());
    paramObjectOutputStream.writeObject(b.getCommentURL());
    paramObjectOutputStream.writeObject(b.getDomain());
    paramObjectOutputStream.writeLong(b.getMaxAge());
    paramObjectOutputStream.writeObject(b.getPath());
    paramObjectOutputStream.writeObject(b.getPortlist());
    paramObjectOutputStream.writeInt(b.getVersion());
    paramObjectOutputStream.writeBoolean(b.getSecure());
    paramObjectOutputStream.writeBoolean(b.getDiscard());
    paramObjectOutputStream.writeBoolean(a());
  }
  
  public final String a(HttpCookie paramHttpCookie)
  {
    b = paramHttpCookie;
    paramHttpCookie = new ByteArrayOutputStream();
    try
    {
      new ObjectOutputStream(paramHttpCookie).writeObject(this);
      return a(paramHttpCookie.toByteArray());
    }
    catch (IOException paramHttpCookie)
    {
      LG.a(a, "IOException in encodeCookie", paramHttpCookie);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.SerializableHttpCookie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */