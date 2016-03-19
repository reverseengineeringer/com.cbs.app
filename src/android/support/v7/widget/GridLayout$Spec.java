package android.support.v7.widget;

public class GridLayout$Spec
{
  static final float DEFAULT_WEIGHT = 0.0F;
  static final Spec UNDEFINED = GridLayout.spec(Integer.MIN_VALUE);
  final GridLayout.Alignment alignment;
  final GridLayout.Interval span;
  final boolean startDefined;
  final float weight;
  
  private GridLayout$Spec(boolean paramBoolean, int paramInt1, int paramInt2, GridLayout.Alignment paramAlignment, float paramFloat)
  {
    this(paramBoolean, new GridLayout.Interval(paramInt1, paramInt1 + paramInt2), paramAlignment, paramFloat);
  }
  
  private GridLayout$Spec(boolean paramBoolean, GridLayout.Interval paramInterval, GridLayout.Alignment paramAlignment, float paramFloat)
  {
    startDefined = paramBoolean;
    span = paramInterval;
    alignment = paramAlignment;
    weight = paramFloat;
  }
  
  final Spec copyWriteAlignment(GridLayout.Alignment paramAlignment)
  {
    return new Spec(startDefined, span, paramAlignment, weight);
  }
  
  final Spec copyWriteSpan(GridLayout.Interval paramInterval)
  {
    return new Spec(startDefined, paramInterval, alignment, weight);
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
      paramObject = (Spec)paramObject;
      if (!alignment.equals(alignment)) {
        return false;
      }
    } while (span.equals(span));
    return false;
  }
  
  public GridLayout.Alignment getAbsoluteAlignment(boolean paramBoolean)
  {
    if (alignment != GridLayout.UNDEFINED_ALIGNMENT) {
      return alignment;
    }
    if (weight == 0.0F)
    {
      if (paramBoolean) {
        return GridLayout.START;
      }
      return GridLayout.BASELINE;
    }
    return GridLayout.FILL;
  }
  
  final int getFlexibility()
  {
    if ((alignment == GridLayout.UNDEFINED_ALIGNMENT) && (weight == 0.0F)) {
      return 0;
    }
    return 2;
  }
  
  public int hashCode()
  {
    return span.hashCode() * 31 + alignment.hashCode();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.Spec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */