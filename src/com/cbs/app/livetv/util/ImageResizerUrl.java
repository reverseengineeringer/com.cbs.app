package com.cbs.app.livetv.util;

import android.text.TextUtils;
import java.net.URL;

public class ImageResizerUrl
{
  private static String a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      try
      {
        str = new URL(paramString).getPath();
        paramString = str;
      }
      catch (Exception localException)
      {
        String str;
        int i;
        for (;;) {}
      }
      i = paramString.indexOf("files/");
      str = paramString;
      if (i != -1) {
        str = paramString.substring("files/".length() + i - 1);
      }
      return str;
    }
    return null;
  }
  
  public static String a(String paramString, int paramInt)
  {
    String str = a(paramString);
    if (!TextUtils.isEmpty(str)) {
      paramString = String.format("http://wwwimage.cbsstatic.com/thumbnails/%s/w%s%s", new Object[] { "photos", String.valueOf(paramInt), str });
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.util.ImageResizerUrl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */