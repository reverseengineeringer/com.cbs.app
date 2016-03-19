package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.ProviderInfo;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.support.v7.mediarouter.R.attr;
import android.support.v7.mediarouter.R.styleable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.Toast;

public class MediaRouteButton
  extends View
{
  private static final int[] CHECKABLE_STATE_SET = { 16842911 };
  private static final int[] CHECKED_STATE_SET = { 16842912 };
  private static final String CHOOSER_FRAGMENT_TAG = "android.support.v7.mediarouter:MediaRouteChooserDialogFragment";
  private static final String CONTROLLER_FRAGMENT_TAG = "android.support.v7.mediarouter:MediaRouteControllerDialogFragment";
  private static final String TAG = "MediaRouteButton";
  private boolean mAttachedToWindow;
  private final MediaRouterCallback mCallback;
  private boolean mCheatSheetEnabled;
  private MediaRouteDialogFactory mDialogFactory = MediaRouteDialogFactory.getDefault();
  private boolean mIsConnecting;
  private int mMinHeight;
  private int mMinWidth;
  private boolean mRemoteActive;
  private Drawable mRemoteIndicator;
  private final MediaRouter mRouter;
  private MediaRouteSelector mSelector = MediaRouteSelector.EMPTY;
  
  public MediaRouteButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MediaRouteButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.mediaRouteButtonStyle);
  }
  
  public MediaRouteButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MediaRouterThemeHelper.createThemedContext(paramContext), paramAttributeSet, paramInt);
    paramContext = getContext();
    mRouter = MediaRouter.getInstance(paramContext);
    mCallback = new MediaRouterCallback(null);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.MediaRouteButton, paramInt, 0);
    setRemoteIndicatorDrawable(paramContext.getDrawable(R.styleable.MediaRouteButton_externalRouteEnabledDrawable));
    mMinWidth = paramContext.getDimensionPixelSize(R.styleable.MediaRouteButton_android_minWidth, 0);
    mMinHeight = paramContext.getDimensionPixelSize(R.styleable.MediaRouteButton_android_minHeight, 0);
    paramContext.recycle();
    setClickable(true);
    setLongClickable(true);
  }
  
  private Activity getActivity()
  {
    for (Context localContext = getContext(); (localContext instanceof ContextWrapper); localContext = ((ContextWrapper)localContext).getBaseContext()) {
      if ((localContext instanceof Activity)) {
        return (Activity)localContext;
      }
    }
    return null;
  }
  
  private FragmentManager getFragmentManager()
  {
    Activity localActivity = getActivity();
    if ((localActivity instanceof FragmentActivity)) {
      return ((FragmentActivity)localActivity).getSupportFragmentManager();
    }
    return null;
  }
  
  private void refreshRoute()
  {
    int i = 0;
    boolean bool1;
    if (mAttachedToWindow)
    {
      MediaRouter.RouteInfo localRouteInfo = mRouter.getSelectedRoute();
      if ((localRouteInfo.isDefault()) || (!localRouteInfo.matchesSelector(mSelector))) {
        break label109;
      }
      bool1 = true;
      if ((!bool1) || (!localRouteInfo.isConnecting())) {
        break label114;
      }
    }
    label109:
    label114:
    for (boolean bool2 = true;; bool2 = false)
    {
      if (mRemoteActive != bool1)
      {
        mRemoteActive = bool1;
        i = 1;
      }
      if (mIsConnecting != bool2)
      {
        mIsConnecting = bool2;
        i = 1;
      }
      if (i != 0) {
        refreshDrawableState();
      }
      setEnabled(mRouter.isRouteAvailable(mSelector, 1));
      return;
      bool1 = false;
      break;
    }
  }
  
  private void setRemoteIndicatorDrawable(Drawable paramDrawable)
  {
    if (mRemoteIndicator != null)
    {
      mRemoteIndicator.setCallback(null);
      unscheduleDrawable(mRemoteIndicator);
    }
    mRemoteIndicator = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      paramDrawable.setState(getDrawableState());
      if (getVisibility() != 0) {
        break label67;
      }
    }
    label67:
    for (boolean bool = true;; bool = false)
    {
      paramDrawable.setVisible(bool, false);
      refreshDrawableState();
      return;
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (mRemoteIndicator != null)
    {
      int[] arrayOfInt = getDrawableState();
      mRemoteIndicator.setState(arrayOfInt);
      invalidate();
    }
  }
  
  public MediaRouteDialogFactory getDialogFactory()
  {
    return mDialogFactory;
  }
  
  public MediaRouteSelector getRouteSelector()
  {
    return mSelector;
  }
  
  public void jumpDrawablesToCurrentState()
  {
    if (getBackground() != null) {
      DrawableCompat.jumpToCurrentState(getBackground());
    }
    if (mRemoteIndicator != null) {
      DrawableCompat.jumpToCurrentState(mRemoteIndicator);
    }
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mAttachedToWindow = true;
    if (!mSelector.isEmpty()) {
      mRouter.addCallback(mSelector, mCallback);
    }
    refreshRoute();
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (mIsConnecting) {
      mergeDrawableStates(arrayOfInt, CHECKABLE_STATE_SET);
    }
    while (!mRemoteActive) {
      return arrayOfInt;
    }
    mergeDrawableStates(arrayOfInt, CHECKED_STATE_SET);
    return arrayOfInt;
  }
  
  public void onDetachedFromWindow()
  {
    mAttachedToWindow = false;
    if (!mSelector.isEmpty()) {
      mRouter.removeCallback(mCallback);
    }
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (mRemoteIndicator != null)
    {
      int i1 = getPaddingLeft();
      int i2 = getWidth();
      int i3 = getPaddingRight();
      int k = getPaddingTop();
      int m = getHeight();
      int n = getPaddingBottom();
      int i = mRemoteIndicator.getIntrinsicWidth();
      int j = mRemoteIndicator.getIntrinsicHeight();
      i1 += (i2 - i3 - i1 - i) / 2;
      k = (m - n - k - j) / 2 + k;
      mRemoteIndicator.setBounds(i1, k, i1 + i, k + j);
      mRemoteIndicator.draw(paramCanvas);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int k = 0;
    int j = View.MeasureSpec.getSize(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt2);
    int m = View.MeasureSpec.getMode(paramInt1);
    paramInt2 = View.MeasureSpec.getMode(paramInt2);
    int n = mMinWidth;
    if (mRemoteIndicator != null)
    {
      paramInt1 = mRemoteIndicator.getIntrinsicWidth();
      n = Math.max(n, paramInt1);
      int i1 = mMinHeight;
      paramInt1 = k;
      if (mRemoteIndicator != null) {
        paramInt1 = mRemoteIndicator.getIntrinsicHeight();
      }
      k = Math.max(i1, paramInt1);
      switch (m)
      {
      default: 
        paramInt1 = n + getPaddingLeft() + getPaddingRight();
        switch (paramInt2)
        {
        default: 
          label129:
          paramInt2 = getPaddingTop() + k + getPaddingBottom();
        }
        break;
      }
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, paramInt2);
      return;
      paramInt1 = 0;
      break;
      paramInt1 = j;
      break label129;
      paramInt1 = Math.min(j, n + getPaddingLeft() + getPaddingRight());
      break label129;
      paramInt2 = i;
      continue;
      paramInt2 = Math.min(i, getPaddingTop() + k + getPaddingBottom());
    }
  }
  
  public boolean performClick()
  {
    boolean bool1 = false;
    boolean bool2 = super.performClick();
    if (!bool2) {
      playSoundEffect(0);
    }
    if ((showDialog()) || (bool2)) {
      bool1 = true;
    }
    return bool1;
  }
  
  public boolean performLongClick()
  {
    if (super.performLongClick()) {
      return true;
    }
    if (!mCheatSheetEnabled) {
      return false;
    }
    Object localObject = getContentDescription();
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return false;
    }
    int[] arrayOfInt = new int[2];
    Rect localRect = new Rect();
    getLocationOnScreen(arrayOfInt);
    getWindowVisibleDisplayFrame(localRect);
    Context localContext = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = arrayOfInt[1];
    int m = j / 2;
    int n = getResourcesgetDisplayMetricswidthPixels;
    localObject = Toast.makeText(localContext, (CharSequence)localObject, 0);
    if (k + m < localRect.height()) {
      ((Toast)localObject).setGravity(8388661, n - arrayOfInt[0] - i / 2, j);
    }
    for (;;)
    {
      ((Toast)localObject).show();
      performHapticFeedback(0);
      return true;
      ((Toast)localObject).setGravity(81, 0, j);
    }
  }
  
  void setCheatSheetEnabled(boolean paramBoolean)
  {
    mCheatSheetEnabled = paramBoolean;
  }
  
  public void setDialogFactory(MediaRouteDialogFactory paramMediaRouteDialogFactory)
  {
    if (paramMediaRouteDialogFactory == null) {
      throw new IllegalArgumentException("factory must not be null");
    }
    mDialogFactory = paramMediaRouteDialogFactory;
  }
  
  public void setRouteSelector(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    if (!mSelector.equals(paramMediaRouteSelector))
    {
      if (mAttachedToWindow)
      {
        if (!mSelector.isEmpty()) {
          mRouter.removeCallback(mCallback);
        }
        if (!paramMediaRouteSelector.isEmpty()) {
          mRouter.addCallback(paramMediaRouteSelector, mCallback);
        }
      }
      mSelector = paramMediaRouteSelector;
      refreshRoute();
    }
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    Drawable localDrawable;
    if (mRemoteIndicator != null)
    {
      localDrawable = mRemoteIndicator;
      if (getVisibility() != 0) {
        break label34;
      }
    }
    label34:
    for (boolean bool = true;; bool = false)
    {
      localDrawable.setVisible(bool, false);
      return;
    }
  }
  
  public boolean showDialog()
  {
    if (!mAttachedToWindow) {}
    FragmentManager localFragmentManager;
    do
    {
      return false;
      localFragmentManager = getFragmentManager();
      if (localFragmentManager == null) {
        throw new IllegalStateException("The activity must be a subclass of FragmentActivity");
      }
      localObject = mRouter.getSelectedRoute();
      if ((!((MediaRouter.RouteInfo)localObject).isDefault()) && (((MediaRouter.RouteInfo)localObject).matchesSelector(mSelector))) {
        break;
      }
    } while (localFragmentManager.findFragmentByTag("android.support.v7.mediarouter:MediaRouteChooserDialogFragment") != null);
    Object localObject = mDialogFactory.onCreateChooserDialogFragment();
    ((MediaRouteChooserDialogFragment)localObject).setRouteSelector(mSelector);
    ((MediaRouteChooserDialogFragment)localObject).show(localFragmentManager, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment");
    for (;;)
    {
      return true;
      if (localFragmentManager.findFragmentByTag("android.support.v7.mediarouter:MediaRouteControllerDialogFragment") != null) {
        break;
      }
      mDialogFactory.onCreateControllerDialogFragment().show(localFragmentManager, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment");
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == mRemoteIndicator);
  }
  
  private final class MediaRouterCallback
    extends MediaRouter.Callback
  {
    private MediaRouterCallback() {}
    
    public final void onProviderAdded(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo)
    {
      MediaRouteButton.this.refreshRoute();
    }
    
    public final void onProviderChanged(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo)
    {
      MediaRouteButton.this.refreshRoute();
    }
    
    public final void onProviderRemoved(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo)
    {
      MediaRouteButton.this.refreshRoute();
    }
    
    public final void onRouteAdded(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      MediaRouteButton.this.refreshRoute();
    }
    
    public final void onRouteChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      MediaRouteButton.this.refreshRoute();
    }
    
    public final void onRouteRemoved(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      MediaRouteButton.this.refreshRoute();
    }
    
    public final void onRouteSelected(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      MediaRouteButton.this.refreshRoute();
    }
    
    public final void onRouteUnselected(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      MediaRouteButton.this.refreshRoute();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */