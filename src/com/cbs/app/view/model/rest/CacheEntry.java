package com.cbs.app.view.model.rest;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.NotSerializableException;
import java.io.ObjectOutputStream;

@Deprecated
public class CacheEntry
{
  private static final String TAG = CacheEntry.class.getSimpleName();
  private long entered = 0L;
  private ResponseModel responseModel;
  private boolean showIfExpired = true;
  int size = -1;
  private long timeToLive = 3600L;
  
  public CacheEntry()
  {
    this(null);
  }
  
  public CacheEntry(ResponseModel paramResponseModel)
  {
    responseModel = paramResponseModel;
    entered = (System.currentTimeMillis() / 1000L);
  }
  
  public long getEntered()
  {
    return entered;
  }
  
  public ResponseModel getResponseModel()
  {
    return responseModel;
  }
  
  public int getSize()
  {
    if (size == -1)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      try
      {
        ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localByteArrayOutputStream);
        localObjectOutputStream.writeObject(this);
        localObjectOutputStream.flush();
        localObjectOutputStream.close();
        size = localByteArrayOutputStream.toByteArray().length;
        if (size == -1) {
          size = 0;
        }
        return size;
      }
      catch (NotSerializableException localNotSerializableException)
      {
        for (;;)
        {
          localNotSerializableException.printStackTrace();
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          localIOException.printStackTrace();
          size = 0;
        }
      }
    }
    return size;
  }
  
  public long getTimeToLive()
  {
    return timeToLive;
  }
  
  public boolean isValid()
  {
    boolean bool = false;
    long l = System.currentTimeMillis() / 1000L;
    if (entered >= l - timeToLive) {
      bool = true;
    }
    return bool;
  }
  
  public void setEntered(long paramLong)
  {
    entered = paramLong;
  }
  
  public void setResponseModel(ResponseModel paramResponseModel)
  {
    responseModel = paramResponseModel;
  }
  
  public void setShowIfExpired(boolean paramBoolean)
  {
    showIfExpired = paramBoolean;
  }
  
  public void setTimeToLive(long paramLong)
  {
    timeToLive = paramLong;
  }
  
  public boolean showIfExpired()
  {
    return showIfExpired;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer(1024);
    localStringBuffer.append("{\n \"size\": ");
    localStringBuffer.append(size);
    localStringBuffer.append(",\n \"showIfExpired\": ");
    if (showIfExpired) {}
    for (String str = "true";; str = "false")
    {
      localStringBuffer.append(str);
      localStringBuffer.append(",\n \"entered\": ");
      localStringBuffer.append(entered);
      localStringBuffer.append(",\n \"timeToLive\": ");
      localStringBuffer.append(timeToLive);
      localStringBuffer.append(",\n \"responseModel\": \"");
      localStringBuffer.append(responseModel.toString());
      localStringBuffer.append("\"\n}");
      return localStringBuffer.toString();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.CacheEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */