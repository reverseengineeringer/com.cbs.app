package com.d.a.b.a;

public final class e
{
  private final int a;
  private final int b;
  
  public e(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public e(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 % 180 == 0)
    {
      a = paramInt1;
      b = paramInt2;
      return;
    }
    a = paramInt2;
    b = paramInt1;
  }
  
  public final int a()
  {
    return a;
  }
  
  public final e a(float paramFloat)
  {
    return new e((int)(a * paramFloat), (int)(b * paramFloat));
  }
  
  public final e a(int paramInt)
  {
    return new e(a / paramInt, b / paramInt);
  }
  
  public final int b()
  {
    return b;
  }
  
  public final String toString()
  {
    return 9 + a + "x" + b;
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */