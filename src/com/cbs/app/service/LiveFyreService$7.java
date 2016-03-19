package com.cbs.app.service;

final class LiveFyreService$7
  implements Runnable
{
  LiveFyreService$7(LiveFyreService paramLiveFyreService) {}
  
  public final void run()
  {
    synchronized (LiveFyreService.f(a))
    {
      a.a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.LiveFyreService.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */