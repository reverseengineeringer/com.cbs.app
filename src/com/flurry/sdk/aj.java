package com.flurry.sdk;

import java.util.Comparator;

public class aj
  implements Comparator<Runnable>
{
  private static final String a = aj.class.getSimpleName();
  
  private static int a(Runnable paramRunnable)
  {
    int i = Integer.MAX_VALUE;
    if (paramRunnable != null)
    {
      if (!(paramRunnable instanceof ak)) {
        break label36;
      }
      paramRunnable = (bu)((ak)paramRunnable).a();
      if (paramRunnable == null) {
        break label84;
      }
    }
    label36:
    label84:
    for (i = paramRunnable.e();; i = Integer.MAX_VALUE)
    {
      return i;
      if ((paramRunnable instanceof bu)) {
        return ((bu)paramRunnable).e();
      }
      am.a(6, a, "Unknown runnable class: " + paramRunnable.getClass().getName());
      return Integer.MAX_VALUE;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */