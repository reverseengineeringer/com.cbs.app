package com.emilsjolander.components.stickylistheaders;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.AbsListView.MultiChoiceModeListener;

final class StickyListHeadersListView$3
  implements AbsListView.MultiChoiceModeListener
{
  StickyListHeadersListView$3(StickyListHeadersListView paramStickyListHeadersListView) {}
  
  public final boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    if (StickyListHeadersListView.f(a) != null) {
      return StickyListHeadersListView.f(a).onActionItemClicked(paramActionMode, paramMenuItem);
    }
    return false;
  }
  
  public final boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    if (StickyListHeadersListView.f(a) != null) {
      return StickyListHeadersListView.f(a).onCreateActionMode(paramActionMode, paramMenu);
    }
    return false;
  }
  
  public final void onDestroyActionMode(ActionMode paramActionMode)
  {
    if (StickyListHeadersListView.f(a) != null) {
      StickyListHeadersListView.f(a).onDestroyActionMode(paramActionMode);
    }
  }
  
  public final void onItemCheckedStateChanged(ActionMode paramActionMode, int paramInt, long paramLong, boolean paramBoolean)
  {
    if (StickyListHeadersListView.f(a) != null)
    {
      paramInt = StickyListHeadersListView.e(a).d(paramInt);
      StickyListHeadersListView.f(a).onItemCheckedStateChanged(paramActionMode, paramInt, paramLong, paramBoolean);
    }
  }
  
  public final boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    if (StickyListHeadersListView.f(a) != null) {
      return StickyListHeadersListView.f(a).onPrepareActionMode(paramActionMode, paramMenu);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersListView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */