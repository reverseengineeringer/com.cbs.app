package com.adobe.adobepass.accessenabler.d;

final class b
{
  private transient a[] a = new a[20];
  private transient int b;
  private int c = 15;
  private final float d = 0.75F;
  
  public b()
  {
    this((byte)0);
  }
  
  private b(byte paramByte) {}
  
  public final Object a(int paramInt, Object paramObject)
  {
    Object localObject2 = a;
    int i = (paramInt & 0x7FFFFFFF) % localObject2.length;
    for (Object localObject1 = localObject2[i]; localObject1 != null; localObject1 = d) {
      if (a == paramInt)
      {
        localObject2 = c;
        c = paramObject;
        return localObject2;
      }
    }
    localObject1 = localObject2;
    if (b >= c)
    {
      i = a.length;
      a[] arrayOfa1 = a;
      int k = i * 2 + 1;
      a[] arrayOfa2 = new a[k];
      c = ((int)(k * d));
      a = arrayOfa2;
      for (;;)
      {
        int j = i - 1;
        if (i <= 0) {
          break;
        }
        for (localObject1 = arrayOfa1[j]; localObject1 != null; localObject1 = localObject2)
        {
          localObject2 = d;
          i = (a & 0x7FFFFFFF) % k;
          d = arrayOfa2[i];
          arrayOfa2[i] = localObject1;
        }
        i = j;
      }
      localObject1 = a;
      i = (paramInt & 0x7FFFFFFF) % localObject1.length;
    }
    localObject1[i] = new a(paramInt, paramInt, paramObject, localObject1[i]);
    b += 1;
    return null;
  }
  
  private static final class a
  {
    final int a;
    final int b;
    Object c;
    a d;
    
    protected a(int paramInt1, int paramInt2, Object paramObject, a parama)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramObject;
      d = parama;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */