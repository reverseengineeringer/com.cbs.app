package com.cbs.app.view.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

public class MomentUtil
{
  public static final HashMap<String, String> a;
  public static final ArrayList<String> b;
  public static final String[] c;
  
  static
  {
    Object localObject = new HashMap(9);
    a = (HashMap)localObject;
    ((HashMap)localObject).put("AddActivity", "https://developers.google.com/+/plugins/snippet/examples/thing");
    a.put("BuyActivity", "https://developers.google.com/+/plugins/snippet/examples/a-book");
    a.put("CheckInActivity", "https://developers.google.com/+/plugins/snippet/examples/place");
    a.put("CommentActivity", "https://developers.google.com/+/plugins/snippet/examples/blog-entry");
    a.put("CreateActivity", "https://developers.google.com/+/plugins/snippet/examples/photo");
    a.put("ListenActivity", "https://developers.google.com/+/plugins/snippet/examples/song");
    a.put("ReserveActivity", "https://developers.google.com/+/plugins/snippet/examples/restaurant");
    a.put("ReviewActivity", "https://developers.google.com/+/plugins/snippet/examples/widget");
    localObject = new ArrayList(a.keySet());
    b = (ArrayList)localObject;
    Collections.sort((List)localObject);
    localObject = (String[])a.keySet().toArray(new String[0]);
    c = (String[])localObject;
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      c[i] = ("http://schemas.google.com/" + c[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.MomentUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */