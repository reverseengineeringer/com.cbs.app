package android.support.v7.widget;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;

public abstract class RecyclerView$SmoothScroller
{
  private RecyclerView.LayoutManager mLayoutManager;
  private boolean mPendingInitialRun;
  private RecyclerView mRecyclerView;
  private final Action mRecyclingAction = new Action(0, 0);
  private boolean mRunning;
  private int mTargetPosition = -1;
  private View mTargetView;
  
  private void onAnimation(int paramInt1, int paramInt2)
  {
    RecyclerView localRecyclerView = mRecyclerView;
    if ((!mRunning) || (mTargetPosition == -1) || (localRecyclerView == null)) {
      stop();
    }
    mPendingInitialRun = false;
    if (mTargetView != null)
    {
      if (getChildPosition(mTargetView) != mTargetPosition) {
        break label151;
      }
      onTargetFound(mTargetView, mState, mRecyclingAction);
      mRecyclingAction.runIfNecessary(localRecyclerView);
      stop();
    }
    for (;;)
    {
      if (mRunning)
      {
        onSeekTargetStep(paramInt1, paramInt2, mState, mRecyclingAction);
        boolean bool = mRecyclingAction.hasJumpTarget();
        mRecyclingAction.runIfNecessary(localRecyclerView);
        if (bool)
        {
          if (!mRunning) {
            break;
          }
          mPendingInitialRun = true;
          RecyclerView.access$5700(localRecyclerView).postOnAnimation();
        }
      }
      return;
      label151:
      Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
      mTargetView = null;
    }
    stop();
  }
  
  public View findViewByPosition(int paramInt)
  {
    return RecyclerView.access$1100(mRecyclerView).findViewByPosition(paramInt);
  }
  
  public int getChildCount()
  {
    return RecyclerView.access$1100(mRecyclerView).getChildCount();
  }
  
  public int getChildPosition(View paramView)
  {
    return mRecyclerView.getChildLayoutPosition(paramView);
  }
  
  public RecyclerView.LayoutManager getLayoutManager()
  {
    return mLayoutManager;
  }
  
  public int getTargetPosition()
  {
    return mTargetPosition;
  }
  
  @Deprecated
  public void instantScrollToPosition(int paramInt)
  {
    mRecyclerView.scrollToPosition(paramInt);
  }
  
  public boolean isPendingInitialRun()
  {
    return mPendingInitialRun;
  }
  
  public boolean isRunning()
  {
    return mRunning;
  }
  
  protected void normalize(PointF paramPointF)
  {
    double d = Math.sqrt(x * x + y * y);
    x = ((float)(x / d));
    y = ((float)(y / d));
  }
  
  protected void onChildAttachedToWindow(View paramView)
  {
    if (getChildPosition(paramView) == getTargetPosition()) {
      mTargetView = paramView;
    }
  }
  
  protected abstract void onSeekTargetStep(int paramInt1, int paramInt2, RecyclerView.State paramState, Action paramAction);
  
  protected abstract void onStart();
  
  protected abstract void onStop();
  
  protected abstract void onTargetFound(View paramView, RecyclerView.State paramState, Action paramAction);
  
  public void setTargetPosition(int paramInt)
  {
    mTargetPosition = paramInt;
  }
  
  void start(RecyclerView paramRecyclerView, RecyclerView.LayoutManager paramLayoutManager)
  {
    mRecyclerView = paramRecyclerView;
    mLayoutManager = paramLayoutManager;
    if (mTargetPosition == -1) {
      throw new IllegalArgumentException("Invalid target position");
    }
    RecyclerView.State.access$5602(mRecyclerView.mState, mTargetPosition);
    mRunning = true;
    mPendingInitialRun = true;
    mTargetView = findViewByPosition(getTargetPosition());
    onStart();
    RecyclerView.access$5700(mRecyclerView).postOnAnimation();
  }
  
  protected final void stop()
  {
    if (!mRunning) {
      return;
    }
    onStop();
    RecyclerView.State.access$5602(mRecyclerView.mState, -1);
    mTargetView = null;
    mTargetPosition = -1;
    mPendingInitialRun = false;
    mRunning = false;
    RecyclerView.LayoutManager.access$5800(mLayoutManager, this);
    mLayoutManager = null;
    mRecyclerView = null;
  }
  
  public static class Action
  {
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    private boolean changed = false;
    private int consecutiveUpdates = 0;
    private int mDuration;
    private int mDx;
    private int mDy;
    private Interpolator mInterpolator;
    private int mJumpToPosition = -1;
    
    public Action(int paramInt1, int paramInt2)
    {
      this(paramInt1, paramInt2, Integer.MIN_VALUE, null);
    }
    
    public Action(int paramInt1, int paramInt2, int paramInt3)
    {
      this(paramInt1, paramInt2, paramInt3, null);
    }
    
    public Action(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
    {
      mDx = paramInt1;
      mDy = paramInt2;
      mDuration = paramInt3;
      mInterpolator = paramInterpolator;
    }
    
    private void runIfNecessary(RecyclerView paramRecyclerView)
    {
      if (mJumpToPosition >= 0)
      {
        int i = mJumpToPosition;
        mJumpToPosition = -1;
        RecyclerView.access$6000(paramRecyclerView, i);
        changed = false;
        return;
      }
      if (changed)
      {
        validate();
        if (mInterpolator == null) {
          if (mDuration == Integer.MIN_VALUE) {
            RecyclerView.access$5700(paramRecyclerView).smoothScrollBy(mDx, mDy);
          }
        }
        for (;;)
        {
          consecutiveUpdates += 1;
          if (consecutiveUpdates > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
          }
          changed = false;
          return;
          RecyclerView.access$5700(paramRecyclerView).smoothScrollBy(mDx, mDy, mDuration);
          continue;
          RecyclerView.access$5700(paramRecyclerView).smoothScrollBy(mDx, mDy, mDuration, mInterpolator);
        }
      }
      consecutiveUpdates = 0;
    }
    
    private void validate()
    {
      if ((mInterpolator != null) && (mDuration <= 0)) {
        throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
      }
      if (mDuration <= 0) {
        throw new IllegalStateException("Scroll duration must be a positive number");
      }
    }
    
    public int getDuration()
    {
      return mDuration;
    }
    
    public int getDx()
    {
      return mDx;
    }
    
    public int getDy()
    {
      return mDy;
    }
    
    public Interpolator getInterpolator()
    {
      return mInterpolator;
    }
    
    boolean hasJumpTarget()
    {
      return mJumpToPosition >= 0;
    }
    
    public void jumpTo(int paramInt)
    {
      mJumpToPosition = paramInt;
    }
    
    public void setDuration(int paramInt)
    {
      changed = true;
      mDuration = paramInt;
    }
    
    public void setDx(int paramInt)
    {
      changed = true;
      mDx = paramInt;
    }
    
    public void setDy(int paramInt)
    {
      changed = true;
      mDy = paramInt;
    }
    
    public void setInterpolator(Interpolator paramInterpolator)
    {
      changed = true;
      mInterpolator = paramInterpolator;
    }
    
    public void update(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
    {
      mDx = paramInt1;
      mDy = paramInt2;
      mDuration = paramInt3;
      mInterpolator = paramInterpolator;
      changed = true;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.SmoothScroller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */