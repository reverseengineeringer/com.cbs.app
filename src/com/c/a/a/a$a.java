package com.c.a.a;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

final class a$a
  extends HttpEntityWrapper
{
  public a$a(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
  }
  
  public final InputStream getContent()
  {
    return new GZIPInputStream(wrappedEntity.getContent());
  }
  
  public final long getContentLength()
  {
    return -1L;
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */