package android.support.v7.widget;

class GridLayout$Axis$1
{
  GridLayout.Arc[][] arcsByVertex = this$1.groupArcsByFirstVertex(val$arcs);
  int cursor = result.length - 1;
  GridLayout.Arc[] result = new GridLayout.Arc[val$arcs.length];
  int[] visited = new int[this$1.getCount() + 1];
  
  static
  {
    if (!GridLayout.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  GridLayout$Axis$1(GridLayout.Axis paramAxis, GridLayout.Arc[] paramArrayOfArc) {}
  
  GridLayout.Arc[] sort()
  {
    int i = 0;
    int j = arcsByVertex.length;
    while (i < j)
    {
      walk(i);
      i += 1;
    }
    assert (cursor == -1);
    return result;
  }
  
  void walk(int paramInt)
  {
    switch (visited[paramInt])
    {
    }
    do
    {
      return;
      visited[paramInt] = 1;
      GridLayout.Arc[] arrayOfArc1 = arcsByVertex[paramInt];
      int j = arrayOfArc1.length;
      int i = 0;
      while (i < j)
      {
        GridLayout.Arc localArc = arrayOfArc1[i];
        walk(span.max);
        GridLayout.Arc[] arrayOfArc2 = result;
        int k = cursor;
        cursor = (k - 1);
        arrayOfArc2[k] = localArc;
        i += 1;
      }
      visited[paramInt] = 2;
      return;
    } while ($assertionsDisabled);
    throw new AssertionError();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.Axis.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */