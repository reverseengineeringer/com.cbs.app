package com.emilsjolander.components.stickylistheaders;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.MultiChoiceModeListener;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SectionIndexer;
import java.util.ArrayList;

@SuppressLint({"NewApi"})
public class StickyListHeadersListView
  extends ListView
  implements View.OnClickListener, AbsListView.OnScrollListener
{
  private AbsListView.OnScrollListener a;
  private boolean b = true;
  private int c;
  private Drawable d;
  private boolean e;
  private boolean f;
  private Long g = null;
  private b h;
  private a i;
  private int j;
  private ArrayList<View> k;
  private StickyListHeadersListViewWrapper l;
  private boolean m = true;
  private boolean n = false;
  private boolean o;
  private AdapterView.OnItemLongClickListener p;
  private AbsListView.MultiChoiceModeListener q;
  private DataSetObserver r = new DataSetObserver()
  {
    public final void onChanged()
    {
      StickyListHeadersListView.a(StickyListHeadersListView.this);
      StickyListHeadersListView.b(StickyListHeadersListView.this);
    }
    
    public final void onInvalidated()
    {
      StickyListHeadersListView.b(StickyListHeadersListView.this);
      StickyListHeadersListView.c(StickyListHeadersListView.this).a();
    }
  };
  private AdapterView.OnItemLongClickListener s = new AdapterView.OnItemLongClickListener()
  {
    public final boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      if (StickyListHeadersListView.d(StickyListHeadersListView.this) != null) {
        return StickyListHeadersListView.d(StickyListHeadersListView.this).onItemLongClick(paramAnonymousAdapterView, paramAnonymousView, StickyListHeadersListView.e(StickyListHeadersListView.this).d(paramAnonymousInt), paramAnonymousLong);
      }
      return false;
    }
  };
  private AbsListView.MultiChoiceModeListener t;
  
  public StickyListHeadersListView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public StickyListHeadersListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842868);
  }
  
  public StickyListHeadersListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    super.setOnScrollListener(this);
    super.setDivider(null);
    super.setDividerHeight(0);
    setVerticalFadingEdgeEnabled(false);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16843004 }, paramInt, 0);
    o = paramContext.getBoolean(0, false);
    paramContext.recycle();
    if (Build.VERSION.SDK_INT >= 11) {
      t = new AbsListView.MultiChoiceModeListener()
      {
        public final boolean onActionItemClicked(ActionMode paramAnonymousActionMode, MenuItem paramAnonymousMenuItem)
        {
          if (StickyListHeadersListView.f(StickyListHeadersListView.this) != null) {
            return StickyListHeadersListView.f(StickyListHeadersListView.this).onActionItemClicked(paramAnonymousActionMode, paramAnonymousMenuItem);
          }
          return false;
        }
        
        public final boolean onCreateActionMode(ActionMode paramAnonymousActionMode, Menu paramAnonymousMenu)
        {
          if (StickyListHeadersListView.f(StickyListHeadersListView.this) != null) {
            return StickyListHeadersListView.f(StickyListHeadersListView.this).onCreateActionMode(paramAnonymousActionMode, paramAnonymousMenu);
          }
          return false;
        }
        
        public final void onDestroyActionMode(ActionMode paramAnonymousActionMode)
        {
          if (StickyListHeadersListView.f(StickyListHeadersListView.this) != null) {
            StickyListHeadersListView.f(StickyListHeadersListView.this).onDestroyActionMode(paramAnonymousActionMode);
          }
        }
        
        public final void onItemCheckedStateChanged(ActionMode paramAnonymousActionMode, int paramAnonymousInt, long paramAnonymousLong, boolean paramAnonymousBoolean)
        {
          if (StickyListHeadersListView.f(StickyListHeadersListView.this) != null)
          {
            paramAnonymousInt = StickyListHeadersListView.e(StickyListHeadersListView.this).d(paramAnonymousInt);
            StickyListHeadersListView.f(StickyListHeadersListView.this).onItemCheckedStateChanged(paramAnonymousActionMode, paramAnonymousInt, paramAnonymousLong, paramAnonymousBoolean);
          }
        }
        
        public final boolean onPrepareActionMode(ActionMode paramAnonymousActionMode, Menu paramAnonymousMenu)
        {
          if (StickyListHeadersListView.f(StickyListHeadersListView.this) != null) {
            return StickyListHeadersListView.f(StickyListHeadersListView.this).onPrepareActionMode(paramAnonymousActionMode, paramAnonymousMenu);
          }
          return false;
        }
      };
    }
  }
  
  private void a(int paramInt)
  {
    Object localObject = null;
    int i6 = 0;
    if (h == null) {
      return;
    }
    int i3 = h.getCount();
    if ((i3 == 0) || (!b))
    {
      l.a();
      return;
    }
    int i7 = getHeaderViewsCount();
    int i2 = paramInt;
    if (Build.VERSION.SDK_INT < 11) {
      i2 = 0;
    }
    int i1;
    int i8;
    for (;;)
    {
      i1 = paramInt;
      if (i2 < getChildCount())
      {
        if (getChildAt(i2).getBottom() >= 0) {
          i1 = paramInt + i2;
        }
      }
      else
      {
        i2 = i1;
        if (!e)
        {
          i2 = i1;
          if (getPaddingTop() > 0)
          {
            i2 = i1;
            if (super.getChildAt(0).getTop() > 0)
            {
              i2 = i1;
              if (i1 > 0) {
                i2 = i1 - 1;
              }
            }
          }
        }
        i8 = i2 - i7;
        if ((i8 >= 0) && (i8 <= i3 - 1)) {
          break label196;
        }
        if ((g == null) && (!n)) {
          break;
        }
        g = null;
        l.a();
        b();
        invalidate();
        n = false;
        return;
      }
      i2 += 1;
    }
    label196:
    long l1 = h.a(i8);
    View localView;
    if ((g == null) || (g.longValue() != l1))
    {
      j = i8;
      localView = h.a(j, l.a(), l);
      localView.setOnClickListener(this);
      l.a(localView);
    }
    for (i3 = 1;; i3 = 0)
    {
      g = Long.valueOf(l1);
      int i9 = getChildCount();
      if (i9 <= 0) {
        break;
      }
      paramInt = Integer.MAX_VALUE;
      int i4 = 0;
      int i5 = 0;
      if (i4 < i9)
      {
        localView = getChildAt(i4);
        if ((k != null) && (k.contains(localView)))
        {
          i1 = 1;
          label340:
          if (!e) {
            break label428;
          }
          i2 = localView.getTop() - getPaddingTop();
          label358:
          if ((i2 < 0) || ((localObject != null) && ((i5 != 0) || (h.a((View)localObject))) && (((i1 == 0) && (!h.a(localView))) || (i2 >= paramInt)))) {
            break label609;
          }
          localObject = localView;
          paramInt = i2;
          i5 = i1;
        }
      }
      label428:
      label609:
      for (;;)
      {
        i4 += 1;
        break;
        i1 = 0;
        break label340;
        i2 = localView.getTop();
        break label358;
        i1 = l.c();
        if ((localObject != null) && ((i5 != 0) || (h.a((View)localObject)))) {
          if ((i8 == i7) && (getChildAt(0).getTop() > 0) && (!e)) {
            paramInt = i6;
          }
        }
        for (;;)
        {
          if ((l.d() != paramInt) || (i3 != 0)) {
            l.a(paramInt);
          }
          b();
          return;
          if (e)
          {
            i2 = Math.min(((View)localObject).getTop(), getPaddingTop() + i1);
            paramInt = i2;
            if (i2 < getPaddingTop()) {
              paramInt = getPaddingTop() + i1;
            }
          }
          else
          {
            i2 = Math.min(((View)localObject).getTop(), i1);
            paramInt = i2;
            if (i2 < 0)
            {
              paramInt = i1;
              continue;
              if (e) {
                paramInt = getPaddingTop() + i1;
              } else {
                paramInt = i1;
              }
            }
          }
        }
      }
    }
  }
  
  private static boolean a()
  {
    return Thread.currentThread().getStackTrace()[5].getClassName().contains("android.widget.AbsListView");
  }
  
  private void b()
  {
    int i1;
    int i2;
    label19:
    View localView;
    if (e)
    {
      i1 = getPaddingTop();
      int i3 = getChildCount();
      i2 = 0;
      if (i2 >= i3) {
        return;
      }
      localView = getChildAt(i2);
      if (h.a(localView))
      {
        if (localView.getTop() >= i1) {
          break label79;
        }
        if (localView.getVisibility() != 4) {
          localView.setVisibility(4);
        }
      }
    }
    for (;;)
    {
      i2 += 1;
      break label19;
      i1 = 0;
      break;
      label79:
      if (localView.getVisibility() != 0) {
        localView.setVisibility(0);
      }
    }
  }
  
  public void addFooterView(View paramView)
  {
    super.addFooterView(paramView);
    if (k == null) {
      k = new ArrayList();
    }
    k.add(paramView);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (Build.VERSION.SDK_INT < 8) {
      post(new Runnable()
      {
        public final void run()
        {
          StickyListHeadersListView.a(StickyListHeadersListView.this, getFirstVisiblePosition());
        }
      });
    }
    if (!m) {
      paramCanvas.clipRect(0, Math.max(l.d(), 0), paramCanvas.getWidth(), paramCanvas.getHeight());
    }
    super.dispatchDraw(paramCanvas);
  }
  
  public int getCheckedItemPosition()
  {
    int i2 = super.getCheckedItemPosition();
    int i1 = i2;
    if (!a())
    {
      i1 = i2;
      if (i2 != -1) {
        i1 = h.c(i2);
      }
    }
    return i1;
  }
  
  public SparseBooleanArray getCheckedItemPositions()
  {
    SparseBooleanArray localSparseBooleanArray1 = super.getCheckedItemPositions();
    if ((!a()) && (localSparseBooleanArray1 != null))
    {
      SparseBooleanArray localSparseBooleanArray2 = new SparseBooleanArray(localSparseBooleanArray1.size());
      int i1 = 0;
      while (i1 < localSparseBooleanArray1.size())
      {
        localSparseBooleanArray2.put(h.d(localSparseBooleanArray1.keyAt(i1)), localSparseBooleanArray1.valueAt(i1));
        i1 += 1;
      }
      return localSparseBooleanArray2;
    }
    return localSparseBooleanArray1;
  }
  
  protected ContextMenu.ContextMenuInfo getContextMenuInfo()
  {
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)super.getContextMenuInfo();
    position = h.d(position - getHeaderViewsCount());
    return localAdapterContextMenuInfo;
  }
  
  public Object getItemAtPosition(int paramInt)
  {
    if (a()) {
      return super.getItemAtPosition(paramInt);
    }
    if ((h == null) || (paramInt < 0)) {
      return null;
    }
    return h.a.getItem(paramInt);
  }
  
  public long getItemIdAtPosition(int paramInt)
  {
    if (a()) {
      return super.getItemIdAtPosition(paramInt);
    }
    if ((h == null) || (paramInt < 0)) {
      return Long.MIN_VALUE;
    }
    return h.a.getItemId(paramInt);
  }
  
  public boolean isItemChecked(int paramInt)
  {
    int i1 = paramInt;
    if (!a()) {
      i1 = h.c(paramInt);
    }
    return super.isItemChecked(i1);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (l == null)
    {
      ViewGroup localViewGroup = (ViewGroup)getParent();
      int i1 = localViewGroup.indexOfChild(this);
      localViewGroup.removeView(this);
      int i2 = getVisibility();
      setVisibility(0);
      l = new StickyListHeadersListViewWrapper(getContext());
      l.setSelector(getSelector());
      l.setDrawSelectorOnTop(o);
      l.setVisibility(i2);
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)getLayoutParams();
      if (e)
      {
        l.setPadding(0, getPaddingTop(), 0, getPaddingBottom());
        setPadding(getPaddingLeft(), 0, getPaddingRight(), 0);
      }
      setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
      l.addView(this);
      l.setBackgroundDrawable(getBackground());
      super.setBackgroundDrawable(null);
      l.setLayoutParams(localMarginLayoutParams);
      localViewGroup.addView(l, i1);
    }
  }
  
  public void onClick(View paramView)
  {
    if ((l.b(paramView)) && (i != null)) {
      g.longValue();
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (a != null) {
      a.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
    if (Build.VERSION.SDK_INT >= 8) {
      a(paramInt1);
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (a != null) {
      a.onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
  
  public boolean performItemClick(View paramView, int paramInt, long paramLong)
  {
    AdapterView.OnItemClickListener localOnItemClickListener = getOnItemClickListener();
    int i1 = getHeaderViewsCount();
    int i2 = h.getItemViewType(paramInt - i1);
    if (i2 == h.c)
    {
      if (i != null)
      {
        h.d(paramInt - i1);
        return true;
      }
      return false;
    }
    if (i2 == h.b) {
      return false;
    }
    if (localOnItemClickListener != null) {
      if (paramInt >= h.getCount()) {
        paramInt -= h.a();
      }
    }
    for (;;)
    {
      localOnItemClickListener.onItemClick(this, paramView, paramInt, paramLong);
      return true;
      if (paramInt >= i1)
      {
        paramInt = h.d(paramInt - i1) + i1;
        continue;
        return false;
      }
    }
  }
  
  public boolean removeFooterView(View paramView)
  {
    boolean bool = super.removeFooterView(paramView);
    if (bool) {
      k.remove(paramView);
    }
    return bool;
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (isInEditMode())
    {
      super.setAdapter(paramListAdapter);
      return;
    }
    if (!f) {
      e = true;
    }
    if ((paramListAdapter != null) && (!(paramListAdapter instanceof a))) {
      throw new IllegalArgumentException("Adapter must implement StickyListHeadersAdapter");
    }
    if (h != null)
    {
      h.b(r);
      h = null;
    }
    if (paramListAdapter != null) {
      if (!(paramListAdapter instanceof SectionIndexer)) {
        break label147;
      }
    }
    label147:
    for (h = new c(getContext(), (a)paramListAdapter);; h = new b(getContext(), (a)paramListAdapter))
    {
      h.a(d);
      h.b(c);
      h.a(r);
      g = null;
      super.setAdapter(h);
      return;
    }
  }
  
  public void setAreHeadersSticky(boolean paramBoolean)
  {
    if (b != paramBoolean)
    {
      if (paramBoolean) {
        super.setVerticalFadingEdgeEnabled(false);
      }
      requestLayout();
      b = paramBoolean;
    }
  }
  
  @Deprecated
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    if (l != null)
    {
      l.setBackgroundDrawable(paramDrawable);
      return;
    }
    super.setBackgroundDrawable(paramDrawable);
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    super.setClipToPadding(paramBoolean);
    e = paramBoolean;
    f = true;
  }
  
  public void setDivider(Drawable paramDrawable)
  {
    d = paramDrawable;
    if (paramDrawable != null)
    {
      int i1 = paramDrawable.getIntrinsicHeight();
      if (i1 >= 0) {
        setDividerHeight(i1);
      }
    }
    if (h != null)
    {
      h.a(paramDrawable);
      requestLayout();
      invalidate();
    }
  }
  
  public void setDividerHeight(int paramInt)
  {
    c = paramInt;
    if (h != null)
    {
      h.b(paramInt);
      requestLayout();
      invalidate();
    }
  }
  
  public void setDrawSelectorOnTop(boolean paramBoolean)
  {
    super.setDrawSelectorOnTop(paramBoolean);
    o = paramBoolean;
    if (l != null) {
      l.setDrawSelectorOnTop(o);
    }
  }
  
  public void setDrawingListUnderStickyHeader(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void setItemChecked(int paramInt, boolean paramBoolean)
  {
    int i1 = paramInt;
    if (!a()) {
      i1 = h.c(paramInt);
    }
    paramInt = h.getItemViewType(i1);
    if ((paramInt != h.b) && (paramInt != h.c)) {
      super.setItemChecked(i1, paramBoolean);
    }
  }
  
  public void setMultiChoiceModeListener(AbsListView.MultiChoiceModeListener paramMultiChoiceModeListener)
  {
    q = paramMultiChoiceModeListener;
    if (paramMultiChoiceModeListener == null)
    {
      super.setMultiChoiceModeListener(null);
      return;
    }
    super.setMultiChoiceModeListener(t);
  }
  
  public void setOnHeaderClickListener(a parama)
  {
    i = parama;
  }
  
  public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    p = paramOnItemLongClickListener;
    if (paramOnItemLongClickListener == null)
    {
      super.setOnItemLongClickListener(null);
      return;
    }
    super.setOnItemLongClickListener(s);
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    a = paramOnScrollListener;
  }
  
  public void setSelectionFromTop(int paramInt1, int paramInt2)
  {
    int i1 = paramInt2;
    if (b)
    {
      i1 = paramInt2;
      if (l != null)
      {
        i1 = paramInt2;
        if (l.b()) {
          i1 = paramInt2 + l.c();
        }
      }
    }
    super.setSelectionFromTop(paramInt1, i1);
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    super.setSelector(paramDrawable);
    if (l != null) {
      l.setSelector(paramDrawable);
    }
  }
  
  public void setVerticalFadingEdgeEnabled(boolean paramBoolean)
  {
    if (b)
    {
      super.setVerticalFadingEdgeEnabled(false);
      return;
    }
    super.setVerticalFadingEdgeEnabled(paramBoolean);
  }
  
  public void setVisibility(int paramInt)
  {
    if (l != null) {
      l.setVisibility(paramInt);
    }
    super.setVisibility(paramInt);
  }
  
  public static abstract interface a {}
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */