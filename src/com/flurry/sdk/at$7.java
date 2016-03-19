package com.flurry.sdk;

import java.util.Set;

final class at$7
  extends bt
{
  at$7(at paramat, String paramString1, String paramString2) {}
  
  public final void a()
  {
    if (!c.e.a(a, b)) {
      am.a(6, c.c, "Internal error. Block wasn't deleted with id = " + a);
    }
    if (!c.d.remove(a)) {
      am.a(6, c.c, "Internal error. Block with id = " + a + " was not in progress state");
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.at.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */