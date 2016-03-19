package android.support.v4.widget;

import android.widget.PopupWindow;
import java.lang.reflect.Field;

class PopupWindowCompatApi21
{
  private static final String TAG = "PopupWindowCompatApi21";
  private static Field sOverlapAnchorField;
  
  static
  {
    try
    {
      Field localField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
      sOverlapAnchorField = localField;
      localField.setAccessible(true);
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException) {}
  }
  
  static boolean getOverlapAnchor(PopupWindow paramPopupWindow)
  {
    if (sOverlapAnchorField != null) {
      try
      {
        boolean bool = ((Boolean)sOverlapAnchorField.get(paramPopupWindow)).booleanValue();
        return bool;
      }
      catch (IllegalAccessException paramPopupWindow) {}
    }
    return false;
  }
  
  static void setOverlapAnchor(PopupWindow paramPopupWindow, boolean paramBoolean)
  {
    if (sOverlapAnchorField != null) {}
    try
    {
      sOverlapAnchorField.set(paramPopupWindow, Boolean.valueOf(paramBoolean));
      return;
    }
    catch (IllegalAccessException paramPopupWindow) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.PopupWindowCompatApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */