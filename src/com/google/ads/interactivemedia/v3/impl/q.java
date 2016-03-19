package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.a.a.c;
import com.google.ads.interactivemedia.v3.b.j;
import com.google.ads.interactivemedia.v3.b.o;
import java.util.List;
import java.util.Set;

public final class q
  implements j
{
  @c(a="bitrate")
  private int a = -1;
  @c(a="mimeTypes")
  private List<String> b = null;
  @c(a="uiElements")
  private Set<o> c;
  @c(a="loadVideoTimeout")
  private int d = -1;
  
  public final void a(List<String> paramList)
  {
    b = paramList;
  }
  
  public final void a(Set<o> paramSet)
  {
    c = paramSet;
  }
  
  public final String toString()
  {
    int i = a;
    String str1 = String.valueOf(b);
    String str2 = String.valueOf(c);
    return String.valueOf(str1).length() + 67 + String.valueOf(str2).length() + "AdsRenderingSettings [bitrate=" + i + ", mimeTypes=" + str1 + ", uiElements=" + str2 + "]";
  }
}

/* Location:
 * Qualified Name:     com.google.ads.interactivemedia.v3.impl.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */