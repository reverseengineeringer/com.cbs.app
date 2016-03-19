package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

public final class aq<RequestObjectType, ResponseObjectType>
  extends ar
{
  private a<RequestObjectType, ResponseObjectType> a;
  private RequestObjectType b;
  private ResponseObjectType c;
  private bb<RequestObjectType> d;
  private bb<ResponseObjectType> g;
  
  public final void a()
  {
    a(new ar.b()
    {
      public final void a()
      {
        aq.d(aq.this);
      }
      
      public final void a(ar paramAnonymousar, InputStream paramAnonymousInputStream)
      {
        if (!paramAnonymousar.c()) {}
        while (aq.c(aq.this) == null) {
          return;
        }
        aq.a(aq.this, aq.c(aq.this).a(paramAnonymousInputStream));
      }
      
      public final void a(OutputStream paramAnonymousOutputStream)
      {
        if ((aq.a(aq.this) != null) && (aq.b(aq.this) != null)) {
          aq.b(aq.this).a(paramAnonymousOutputStream, aq.a(aq.this));
        }
      }
    });
    super.a();
  }
  
  public final void a(a<RequestObjectType, ResponseObjectType> parama)
  {
    a = parama;
  }
  
  public final void a(bb<RequestObjectType> parambb)
  {
    d = parambb;
  }
  
  public final void a(RequestObjectType paramRequestObjectType)
  {
    b = paramRequestObjectType;
  }
  
  public static abstract interface a<RequestObjectType, ResponseObjectType>
  {
    public abstract void a(aq<RequestObjectType, ResponseObjectType> paramaq);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */