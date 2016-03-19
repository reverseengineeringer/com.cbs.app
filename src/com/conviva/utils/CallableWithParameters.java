package com.conviva.utils;

public class CallableWithParameters
{
  public static abstract interface With1<T>
  {
    public abstract void exec(T paramT);
  }
  
  public static abstract interface With1Return1<P1, R2>
  {
    public abstract R2 call(P1 paramP1);
  }
  
  public static abstract interface With2<T1, T2>
  {
    public abstract void exec(T1 paramT1, T2 paramT2);
  }
  
  public static abstract interface With3<T1, T2, T3>
  {
    public abstract void exec(T1 paramT1, T2 paramT2, T3 paramT3);
  }
  
  public static abstract interface With5<T1, T2, T3, T4, T5>
  {
    public abstract void exec(T1 paramT1, T2 paramT2, T3 paramT3, T4 paramT4, T5 paramT5);
  }
}

/* Location:
 * Qualified Name:     com.conviva.utils.CallableWithParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */