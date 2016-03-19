package com.cbs.app.view.fragments;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewParent;

final class HomeFragment$7
  implements View.OnTouchListener
{
  HomeFragment$7(HomeFragment paramHomeFragment) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    HomeFragment.e(a).removeCallbacks(HomeFragment.d(a));
    HomeFragment.e(a).postDelayed(HomeFragment.d(a), 4000L);
    if (paramView.getId() == 2131690079) {
      paramView.getParent().requestDisallowInterceptTouchEvent(true);
    }
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      return false;
    }
    paramView.getParent().requestDisallowInterceptTouchEvent(false);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.HomeFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */