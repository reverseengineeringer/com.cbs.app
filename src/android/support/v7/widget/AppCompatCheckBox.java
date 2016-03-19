package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.TintableCompoundButton;
import android.support.v7.appcompat.R.attr;
import android.util.AttributeSet;
import android.widget.CheckBox;

public class AppCompatCheckBox
  extends CheckBox
  implements TintableCompoundButton
{
  private AppCompatCompoundButtonHelper mCompoundButtonHelper;
  private TintManager mTintManager;
  
  public AppCompatCheckBox(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatCheckBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.checkboxStyle);
  }
  
  public AppCompatCheckBox(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    mTintManager = TintManager.get(paramContext);
    mCompoundButtonHelper = new AppCompatCompoundButtonHelper(this, mTintManager);
    mCompoundButtonHelper.loadFromAttributes(paramAttributeSet, paramInt);
  }
  
  public int getCompoundPaddingLeft()
  {
    int j = super.getCompoundPaddingLeft();
    int i = j;
    if (mCompoundButtonHelper != null) {
      i = mCompoundButtonHelper.getCompoundPaddingLeft(j);
    }
    return i;
  }
  
  public ColorStateList getSupportButtonTintList()
  {
    if (mCompoundButtonHelper != null) {
      return mCompoundButtonHelper.getSupportButtonTintList();
    }
    return null;
  }
  
  public PorterDuff.Mode getSupportButtonTintMode()
  {
    if (mCompoundButtonHelper != null) {
      return mCompoundButtonHelper.getSupportButtonTintMode();
    }
    return null;
  }
  
  public void setButtonDrawable(int paramInt)
  {
    if (mTintManager != null) {}
    for (Drawable localDrawable = mTintManager.getDrawable(paramInt);; localDrawable = ContextCompat.getDrawable(getContext(), paramInt))
    {
      setButtonDrawable(localDrawable);
      return;
    }
  }
  
  public void setButtonDrawable(Drawable paramDrawable)
  {
    super.setButtonDrawable(paramDrawable);
    if (mCompoundButtonHelper != null) {
      mCompoundButtonHelper.onSetButtonDrawable();
    }
  }
  
  public void setSupportButtonTintList(ColorStateList paramColorStateList)
  {
    if (mCompoundButtonHelper != null) {
      mCompoundButtonHelper.setSupportButtonTintList(paramColorStateList);
    }
  }
  
  public void setSupportButtonTintMode(PorterDuff.Mode paramMode)
  {
    if (mCompoundButtonHelper != null) {
      mCompoundButtonHelper.setSupportButtonTintMode(paramMode);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatCheckBox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */