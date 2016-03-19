package android.support.v7.widget;

final class GridLayout$Arc
{
  public final GridLayout.Interval span;
  public boolean valid = true;
  public final GridLayout.MutableInt value;
  
  public GridLayout$Arc(GridLayout.Interval paramInterval, GridLayout.MutableInt paramMutableInt)
  {
    span = paramInterval;
    value = paramMutableInt;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(span).append(" ");
    if (!valid) {}
    for (String str = "+>";; str = "->") {
      return str + " " + value;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.Arc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */