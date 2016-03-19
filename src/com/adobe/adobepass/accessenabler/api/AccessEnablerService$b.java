package com.adobe.adobepass.accessenabler.api;

import android.os.Bundle;
import com.adobe.adobepass.accessenabler.d.c;

final class AccessEnablerService$b
  extends Thread
{
  private int b;
  private Bundle c;
  
  public AccessEnablerService$b(AccessEnablerService paramAccessEnablerService, int paramInt, Bundle paramBundle)
  {
    c = paramBundle;
    b = paramInt;
  }
  
  public final void run()
  {
    if (AccessEnablerService.d(a) == null)
    {
      c.b("AccessEnablerService", "No implementation for the IAccessEnablerDelegate was provided.");
      return;
    }
    if (AccessEnablerService.e(a) == null)
    {
      c.b("AccessEnablerService", "AccessEnabler context not initialized.");
      return;
    }
    try
    {
      AccessEnablerService.f(a)[b].a(c);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      localRuntimeException.printStackTrace();
      c.b("AccessEnablerService", "Exception in the worker thread. " + localRuntimeException.getClass().getSimpleName() + " | " + localRuntimeException.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.api.AccessEnablerService.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */