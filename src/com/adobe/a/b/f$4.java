package com.adobe.a.b;

import java.util.HashSet;

final class f$4
  extends HashSet<String>
{
  f$4()
  {
    add("ce");
    add("ns");
    add("cookieDomainPeriods");
    add("cookieLifetime");
    add("mtp");
    add("mtss");
    add("mti");
    add("mtsd");
    add("ts");
    int i = 1;
    int j;
    for (;;)
    {
      j = k;
      if (i > 75) {
        break;
      }
      add("c" + i);
      i += 1;
    }
    while (j <= 75)
    {
      add("v" + j);
      j += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.a.b.f.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */