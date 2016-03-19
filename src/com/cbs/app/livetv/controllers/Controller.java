package com.cbs.app.livetv.controllers;

import android.content.Context;

public abstract class Controller<T extends Callback>
{
  private boolean a;
  private final Context b;
  private T c;
  
  public Controller(Context paramContext)
  {
    b = paramContext;
  }
  
  public final void a(T paramT)
  {
    c = paramT;
  }
  
  public void c()
  {
    a = true;
  }
  
  protected final Context d()
  {
    return b;
  }
  
  protected final boolean e()
  {
    return (!a) && (c != null);
  }
  
  public T getCallback()
  {
    return c;
  }
  
  public static abstract class Callback {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.Controller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */