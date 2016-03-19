package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.gridlayout.R.styleable;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class GridLayout$LayoutParams
  extends ViewGroup.MarginLayoutParams
{
  private static final int BOTTOM_MARGIN;
  private static final int COLUMN;
  private static final int COLUMN_SPAN;
  private static final int COLUMN_WEIGHT;
  private static final int DEFAULT_COLUMN = Integer.MIN_VALUE;
  private static final int DEFAULT_HEIGHT = -2;
  private static final int DEFAULT_MARGIN = Integer.MIN_VALUE;
  private static final int DEFAULT_ROW = Integer.MIN_VALUE;
  private static final GridLayout.Interval DEFAULT_SPAN;
  private static final int DEFAULT_SPAN_SIZE;
  private static final int DEFAULT_WIDTH = -2;
  private static final int GRAVITY = R.styleable.GridLayout_Layout_layout_gravity;
  private static final int LEFT_MARGIN;
  private static final int MARGIN;
  private static final int RIGHT_MARGIN;
  private static final int ROW;
  private static final int ROW_SPAN;
  private static final int ROW_WEIGHT;
  private static final int TOP_MARGIN;
  public GridLayout.Spec columnSpec = GridLayout.Spec.UNDEFINED;
  public GridLayout.Spec rowSpec = GridLayout.Spec.UNDEFINED;
  
  static
  {
    GridLayout.Interval localInterval = new GridLayout.Interval(Integer.MIN_VALUE, -2147483647);
    DEFAULT_SPAN = localInterval;
    DEFAULT_SPAN_SIZE = localInterval.size();
    MARGIN = R.styleable.GridLayout_Layout_android_layout_margin;
    LEFT_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginLeft;
    TOP_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginTop;
    RIGHT_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginRight;
    BOTTOM_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginBottom;
    COLUMN = R.styleable.GridLayout_Layout_layout_column;
    COLUMN_SPAN = R.styleable.GridLayout_Layout_layout_columnSpan;
    COLUMN_WEIGHT = R.styleable.GridLayout_Layout_layout_columnWeight;
    ROW = R.styleable.GridLayout_Layout_layout_row;
    ROW_SPAN = R.styleable.GridLayout_Layout_layout_rowSpan;
    ROW_WEIGHT = R.styleable.GridLayout_Layout_layout_rowWeight;
  }
  
  public GridLayout$LayoutParams()
  {
    this(GridLayout.Spec.UNDEFINED, GridLayout.Spec.UNDEFINED);
  }
  
  private GridLayout$LayoutParams(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, GridLayout.Spec paramSpec1, GridLayout.Spec paramSpec2)
  {
    super(paramInt1, paramInt2);
    setMargins(paramInt3, paramInt4, paramInt5, paramInt6);
    rowSpec = paramSpec1;
    columnSpec = paramSpec2;
  }
  
  public GridLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    reInitSuper(paramContext, paramAttributeSet);
    init(paramContext, paramAttributeSet);
  }
  
  public GridLayout$LayoutParams(LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
    rowSpec = rowSpec;
    columnSpec = columnSpec;
  }
  
  public GridLayout$LayoutParams(GridLayout.Spec paramSpec1, GridLayout.Spec paramSpec2)
  {
    this(-2, -2, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, paramSpec1, paramSpec2);
  }
  
  public GridLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public GridLayout$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
  
  private void init(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.GridLayout_Layout);
    try
    {
      int i = paramContext.getInt(GRAVITY, 0);
      int j = paramContext.getInt(COLUMN, Integer.MIN_VALUE);
      int k = paramContext.getInt(COLUMN_SPAN, DEFAULT_SPAN_SIZE);
      float f = paramContext.getFloat(COLUMN_WEIGHT, 0.0F);
      columnSpec = GridLayout.spec(j, k, GridLayout.getAlignment(i, true), f);
      j = paramContext.getInt(ROW, Integer.MIN_VALUE);
      k = paramContext.getInt(ROW_SPAN, DEFAULT_SPAN_SIZE);
      f = paramContext.getFloat(ROW_WEIGHT, 0.0F);
      rowSpec = GridLayout.spec(j, k, GridLayout.getAlignment(i, false), f);
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  private void reInitSuper(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.GridLayout_Layout);
    try
    {
      int i = paramContext.getDimensionPixelSize(MARGIN, Integer.MIN_VALUE);
      leftMargin = paramContext.getDimensionPixelSize(LEFT_MARGIN, i);
      topMargin = paramContext.getDimensionPixelSize(TOP_MARGIN, i);
      rightMargin = paramContext.getDimensionPixelSize(RIGHT_MARGIN, i);
      bottomMargin = paramContext.getDimensionPixelSize(BOTTOM_MARGIN, i);
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (LayoutParams)paramObject;
      if (!columnSpec.equals(columnSpec)) {
        return false;
      }
    } while (rowSpec.equals(rowSpec));
    return false;
  }
  
  public int hashCode()
  {
    return rowSpec.hashCode() * 31 + columnSpec.hashCode();
  }
  
  protected void setBaseAttributes(TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    width = paramTypedArray.getLayoutDimension(paramInt1, -2);
    height = paramTypedArray.getLayoutDimension(paramInt2, -2);
  }
  
  final void setColumnSpecSpan(GridLayout.Interval paramInterval)
  {
    columnSpec = columnSpec.copyWriteSpan(paramInterval);
  }
  
  public void setGravity(int paramInt)
  {
    rowSpec = rowSpec.copyWriteAlignment(GridLayout.getAlignment(paramInt, false));
    columnSpec = columnSpec.copyWriteAlignment(GridLayout.getAlignment(paramInt, true));
  }
  
  final void setRowSpecSpan(GridLayout.Interval paramInterval)
  {
    rowSpec = rowSpec.copyWriteSpan(paramInterval);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.LayoutParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */