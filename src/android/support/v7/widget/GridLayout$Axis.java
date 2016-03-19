package android.support.v7.widget;

import android.util.Printer;
import android.view.View;
import android.view.View.MeasureSpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

final class GridLayout$Axis
{
  private static final int COMPLETE = 2;
  private static final int NEW = 0;
  private static final int PENDING = 1;
  public GridLayout.Arc[] arcs;
  public boolean arcsValid = false;
  GridLayout.PackedMap<GridLayout.Interval, GridLayout.MutableInt> backwardLinks;
  public boolean backwardLinksValid = false;
  public int definedCount = Integer.MIN_VALUE;
  public int[] deltas;
  GridLayout.PackedMap<GridLayout.Interval, GridLayout.MutableInt> forwardLinks;
  public boolean forwardLinksValid = false;
  GridLayout.PackedMap<GridLayout.Spec, GridLayout.Bounds> groupBounds;
  public boolean groupBoundsValid = false;
  public boolean hasWeights;
  public boolean hasWeightsValid = false;
  public final boolean horizontal;
  public int[] leadingMargins;
  public boolean leadingMarginsValid = false;
  public int[] locations;
  public boolean locationsValid = false;
  private int maxIndex = Integer.MIN_VALUE;
  boolean orderPreserved = true;
  private GridLayout.MutableInt parentMax = new GridLayout.MutableInt(-100000);
  private GridLayout.MutableInt parentMin = new GridLayout.MutableInt(0);
  public int[] trailingMargins;
  public boolean trailingMarginsValid = false;
  
  static
  {
    if (!GridLayout.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private GridLayout$Axis(GridLayout paramGridLayout, boolean paramBoolean)
  {
    horizontal = paramBoolean;
  }
  
  private void addComponentSizes(List<GridLayout.Arc> paramList, GridLayout.PackedMap<GridLayout.Interval, GridLayout.MutableInt> paramPackedMap)
  {
    int i = 0;
    while (i < ((GridLayout.Interval[])keys).length)
    {
      include(paramList, ((GridLayout.Interval[])keys)[i], ((GridLayout.MutableInt[])values)[i], false);
      i += 1;
    }
  }
  
  private String arcsToString(List<GridLayout.Arc> paramList)
  {
    String str;
    label33:
    label61:
    int j;
    int k;
    int m;
    if (horizontal)
    {
      str = "x";
      localObject = new StringBuilder();
      Iterator localIterator = paramList.iterator();
      paramList = (List<GridLayout.Arc>)localObject;
      int i = 1;
      if (!localIterator.hasNext()) {
        break label219;
      }
      localObject = (GridLayout.Arc)localIterator.next();
      if (i == 0) {
        break label159;
      }
      i = 0;
      j = span.min;
      k = span.max;
      m = value.value;
      if (j >= k) {
        break label169;
      }
    }
    label159:
    label169:
    for (Object localObject = str + k + "-" + str + j + ">=" + m;; localObject = str + j + "-" + str + k + "<=" + -m)
    {
      paramList.append((String)localObject);
      break label33;
      str = "y";
      break;
      paramList = paramList.append(", ");
      break label61;
    }
    label219:
    return paramList.toString();
  }
  
  private int calculateMaxIndex()
  {
    int k = this$0.getChildCount();
    int i = 0;
    int j = -1;
    if (i < k)
    {
      Object localObject = this$0.getChildAt(i);
      localObject = this$0.getLayoutParams((View)localObject);
      if (horizontal) {}
      for (localObject = columnSpec;; localObject = rowSpec)
      {
        localObject = span;
        j = Math.max(Math.max(Math.max(j, min), max), ((GridLayout.Interval)localObject).size());
        i += 1;
        break;
      }
    }
    if (j == -1) {
      return Integer.MIN_VALUE;
    }
    return j;
  }
  
  private float calculateTotalWeight()
  {
    float f = 0.0F;
    int j = this$0.getChildCount();
    int i = 0;
    Object localObject;
    if (i < j)
    {
      localObject = this$0.getChildAt(i);
      if (((View)localObject).getVisibility() == 8) {
        break label89;
      }
      localObject = this$0.getLayoutParams((View)localObject);
      if (horizontal)
      {
        localObject = columnSpec;
        label62:
        f = weight + f;
      }
    }
    label89:
    for (;;)
    {
      i += 1;
      break;
      localObject = rowSpec;
      break label62;
      return f;
    }
  }
  
  private void computeArcs()
  {
    getForwardLinks();
    getBackwardLinks();
  }
  
  private void computeGroupBounds()
  {
    Object localObject = (GridLayout.Bounds[])groupBounds.values;
    int i = 0;
    while (i < localObject.length)
    {
      localObject[i].reset();
      i += 1;
    }
    int k = this$0.getChildCount();
    i = 0;
    if (i < k)
    {
      View localView = this$0.getChildAt(i);
      localObject = this$0.getLayoutParams(localView);
      label85:
      int m;
      if (horizontal)
      {
        localObject = columnSpec;
        m = this$0.getMeasurementIncludingMargin(localView, horizontal);
        if (weight != 0.0F) {
          break label156;
        }
      }
      label156:
      for (int j = 0;; j = getDeltas()[i])
      {
        ((GridLayout.Bounds)groupBounds.getValue(i)).include(this$0, localView, (GridLayout.Spec)localObject, this, m + j);
        i += 1;
        break;
        localObject = rowSpec;
        break label85;
      }
    }
  }
  
  private boolean computeHasWeights()
  {
    int j = this$0.getChildCount();
    int i = 0;
    while (i < j)
    {
      Object localObject = this$0.getChildAt(i);
      if (((View)localObject).getVisibility() != 8)
      {
        localObject = this$0.getLayoutParams((View)localObject);
        if (horizontal) {}
        for (localObject = columnSpec; weight != 0.0F; localObject = rowSpec) {
          return true;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private void computeLinks(GridLayout.PackedMap<GridLayout.Interval, GridLayout.MutableInt> paramPackedMap, boolean paramBoolean)
  {
    int j = 0;
    Object localObject = (GridLayout.MutableInt[])values;
    int i = 0;
    while (i < localObject.length)
    {
      localObject[i].reset();
      i += 1;
    }
    localObject = (GridLayout.Bounds[])getGroupBoundsvalues;
    i = j;
    if (i < localObject.length)
    {
      j = localObject[i].size(paramBoolean);
      GridLayout.MutableInt localMutableInt = (GridLayout.MutableInt)paramPackedMap.getValue(i);
      int k = value;
      if (paramBoolean) {}
      for (;;)
      {
        value = Math.max(k, j);
        i += 1;
        break;
        j = -j;
      }
    }
  }
  
  private void computeLocations(int[] paramArrayOfInt)
  {
    int i = 0;
    if (!hasWeights()) {
      solve(paramArrayOfInt);
    }
    while (!orderPreserved)
    {
      int j = paramArrayOfInt[0];
      int k = paramArrayOfInt.length;
      while (i < k)
      {
        paramArrayOfInt[i] -= j;
        i += 1;
      }
      solveAndDistributeSpace(paramArrayOfInt);
    }
  }
  
  private void computeMargins(boolean paramBoolean)
  {
    int[] arrayOfInt;
    int i;
    label21:
    View localView;
    Object localObject;
    if (paramBoolean)
    {
      arrayOfInt = leadingMargins;
      int k = this$0.getChildCount();
      i = 0;
      if (i >= k) {
        return;
      }
      localView = this$0.getChildAt(i);
      if (localView.getVisibility() != 8)
      {
        localObject = this$0.getLayoutParams(localView);
        if (!horizontal) {
          break label130;
        }
        localObject = columnSpec;
        label72:
        localObject = span;
        if (!paramBoolean) {
          break label140;
        }
      }
    }
    label130:
    label140:
    for (int j = min;; j = max)
    {
      arrayOfInt[j] = Math.max(arrayOfInt[j], this$0.getMargin1(localView, horizontal, paramBoolean));
      i += 1;
      break label21;
      arrayOfInt = trailingMargins;
      break;
      localObject = rowSpec;
      break label72;
    }
  }
  
  private GridLayout.Arc[] createArcs()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    addComponentSizes(localArrayList1, getForwardLinks());
    addComponentSizes(localArrayList2, getBackwardLinks());
    if (orderPreserved)
    {
      i = 0;
      while (i < getCount())
      {
        include(localArrayList1, new GridLayout.Interval(i, i + 1), new GridLayout.MutableInt(0));
        i += 1;
      }
    }
    int i = getCount();
    include(localArrayList1, new GridLayout.Interval(0, i), parentMin, false);
    include(localArrayList2, new GridLayout.Interval(i, 0), parentMax, false);
    return (GridLayout.Arc[])GridLayout.append(topologicalSort(localArrayList1), topologicalSort(localArrayList2));
  }
  
  private GridLayout.PackedMap<GridLayout.Spec, GridLayout.Bounds> createGroupBounds()
  {
    GridLayout.Assoc localAssoc = GridLayout.Assoc.of(GridLayout.Spec.class, GridLayout.Bounds.class);
    int j = this$0.getChildCount();
    int i = 0;
    if (i < j)
    {
      Object localObject = this$0.getChildAt(i);
      localObject = this$0.getLayoutParams((View)localObject);
      if (horizontal) {}
      for (localObject = columnSpec;; localObject = rowSpec)
      {
        localAssoc.put(localObject, ((GridLayout.Spec)localObject).getAbsoluteAlignment(horizontal).getBounds());
        i += 1;
        break;
      }
    }
    return localAssoc.pack();
  }
  
  private GridLayout.PackedMap<GridLayout.Interval, GridLayout.MutableInt> createLinks(boolean paramBoolean)
  {
    GridLayout.Assoc localAssoc = GridLayout.Assoc.of(GridLayout.Interval.class, GridLayout.MutableInt.class);
    GridLayout.Spec[] arrayOfSpec = (GridLayout.Spec[])getGroupBoundskeys;
    int j = arrayOfSpec.length;
    int i = 0;
    if (i < j)
    {
      if (paramBoolean) {}
      for (GridLayout.Interval localInterval = span;; localInterval = span.inverse())
      {
        localAssoc.put(localInterval, new GridLayout.MutableInt());
        i += 1;
        break;
      }
    }
    return localAssoc.pack();
  }
  
  private GridLayout.PackedMap<GridLayout.Interval, GridLayout.MutableInt> getBackwardLinks()
  {
    if (backwardLinks == null) {
      backwardLinks = createLinks(false);
    }
    if (!backwardLinksValid)
    {
      computeLinks(backwardLinks, false);
      backwardLinksValid = true;
    }
    return backwardLinks;
  }
  
  private GridLayout.PackedMap<GridLayout.Interval, GridLayout.MutableInt> getForwardLinks()
  {
    if (forwardLinks == null) {
      forwardLinks = createLinks(true);
    }
    if (!forwardLinksValid)
    {
      computeLinks(forwardLinks, true);
      forwardLinksValid = true;
    }
    return forwardLinks;
  }
  
  private int getMaxIndex()
  {
    if (maxIndex == Integer.MIN_VALUE) {
      maxIndex = Math.max(0, calculateMaxIndex());
    }
    return maxIndex;
  }
  
  private int getMeasure(int paramInt1, int paramInt2)
  {
    setParentConstraints(paramInt1, paramInt2);
    return size(getLocations());
  }
  
  private boolean hasWeights()
  {
    if (!hasWeightsValid)
    {
      hasWeights = computeHasWeights();
      hasWeightsValid = true;
    }
    return hasWeights;
  }
  
  private void include(List<GridLayout.Arc> paramList, GridLayout.Interval paramInterval, GridLayout.MutableInt paramMutableInt)
  {
    include(paramList, paramInterval, paramMutableInt, true);
  }
  
  private void include(List<GridLayout.Arc> paramList, GridLayout.Interval paramInterval, GridLayout.MutableInt paramMutableInt, boolean paramBoolean)
  {
    if (paramInterval.size() == 0) {
      return;
    }
    if (paramBoolean)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if (nextspan.equals(paramInterval)) {
          return;
        }
      }
    }
    paramList.add(new GridLayout.Arc(paramInterval, paramMutableInt));
  }
  
  private void init(int[] paramArrayOfInt)
  {
    Arrays.fill(paramArrayOfInt, 0);
  }
  
  private void logError(String paramString, GridLayout.Arc[] paramArrayOfArc, boolean[] paramArrayOfBoolean)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int i = 0;
    while (i < paramArrayOfArc.length)
    {
      GridLayout.Arc localArc = paramArrayOfArc[i];
      if (paramArrayOfBoolean[i] != 0) {
        localArrayList1.add(localArc);
      }
      if (!valid) {
        localArrayList2.add(localArc);
      }
      i += 1;
    }
    this$0.mPrinter.println(paramString + " constraints: " + arcsToString(localArrayList1) + " are inconsistent; permanently removing: " + arcsToString(localArrayList2) + ". ");
  }
  
  private boolean relax(int[] paramArrayOfInt, GridLayout.Arc paramArc)
  {
    if (!valid) {}
    int j;
    int i;
    do
    {
      return false;
      GridLayout.Interval localInterval = span;
      j = min;
      i = max;
      int k = value.value;
      j = paramArrayOfInt[j] + k;
    } while (j <= paramArrayOfInt[i]);
    paramArrayOfInt[i] = j;
    return true;
  }
  
  private void setParentConstraints(int paramInt1, int paramInt2)
  {
    parentMin.value = paramInt1;
    parentMax.value = (-paramInt2);
    locationsValid = false;
  }
  
  private void shareOutDelta(int paramInt, float paramFloat)
  {
    Arrays.fill(deltas, 0);
    int j = this$0.getChildCount();
    int i = 0;
    Object localObject;
    if (i < j)
    {
      localObject = this$0.getChildAt(i);
      if (((View)localObject).getVisibility() == 8) {
        break label134;
      }
      localObject = this$0.getLayoutParams((View)localObject);
      if (horizontal)
      {
        localObject = columnSpec;
        label73:
        float f = weight;
        if (f == 0.0F) {
          break label134;
        }
        int k = Math.round(paramInt * f / paramFloat);
        deltas[i] = k;
        paramFloat -= f;
        paramInt -= k;
      }
    }
    label134:
    for (;;)
    {
      i += 1;
      break;
      localObject = rowSpec;
      break label73;
      return;
    }
  }
  
  private int size(int[] paramArrayOfInt)
  {
    return paramArrayOfInt[getCount()];
  }
  
  private boolean solve(int[] paramArrayOfInt)
  {
    return solve(getArcs(), paramArrayOfInt);
  }
  
  private boolean solve(GridLayout.Arc[] paramArrayOfArc, int[] paramArrayOfInt)
  {
    return solve(paramArrayOfArc, paramArrayOfInt, true);
  }
  
  private boolean solve(GridLayout.Arc[] paramArrayOfArc, int[] paramArrayOfInt, boolean paramBoolean)
  {
    boolean bool3 = false;
    if (horizontal) {}
    int n;
    Object localObject;
    int i;
    int k;
    boolean bool1;
    for (String str = "horizontal";; str = "vertical")
    {
      n = getCount() + 1;
      localObject = null;
      i = 0;
      if (i >= paramArrayOfArc.length) {
        break label285;
      }
      init(paramArrayOfInt);
      j = 0;
      if (j >= n) {
        break label133;
      }
      int i1 = paramArrayOfArc.length;
      k = 0;
      bool1 = false;
      while (k < i1)
      {
        bool1 |= relax(paramArrayOfInt, paramArrayOfArc[k]);
        k += 1;
      }
    }
    boolean bool2;
    if (!bool1)
    {
      if (localObject != null) {
        logError(str, paramArrayOfArc, (boolean[])localObject);
      }
      bool2 = true;
    }
    label133:
    do
    {
      return bool2;
      j += 1;
      break;
      bool2 = bool3;
    } while (!paramBoolean);
    boolean[] arrayOfBoolean = new boolean[paramArrayOfArc.length];
    int j = 0;
    while (j < n)
    {
      int m = paramArrayOfArc.length;
      k = 0;
      while (k < m)
      {
        arrayOfBoolean[k] |= relax(paramArrayOfInt, paramArrayOfArc[k]);
        k += 1;
      }
      j += 1;
    }
    if (i == 0) {
      localObject = arrayOfBoolean;
    }
    j = 0;
    for (;;)
    {
      if (j < paramArrayOfArc.length)
      {
        if (arrayOfBoolean[j] != 0)
        {
          GridLayout.Arc localArc = paramArrayOfArc[j];
          if (span.min >= span.max) {
            valid = false;
          }
        }
      }
      else
      {
        i += 1;
        break;
      }
      j += 1;
    }
    label285:
    return true;
  }
  
  private void solveAndDistributeSpace(int[] paramArrayOfInt)
  {
    Arrays.fill(getDeltas(), 0);
    solve(paramArrayOfInt);
    int i = parentMin.value * this$0.getChildCount() + 1;
    if (i < 2) {}
    float f;
    int j;
    boolean bool;
    do
    {
      return;
      f = calculateTotalWeight();
      j = -1;
      bool = true;
      int k = 0;
      while (k < i)
      {
        int m = (k + i) / 2;
        invalidateValues();
        shareOutDelta(m, f);
        bool = solve(getArcs(), paramArrayOfInt, false);
        if (bool)
        {
          k = m + 1;
          j = m;
        }
        else
        {
          i = m;
        }
      }
    } while ((j <= 0) || (bool));
    invalidateValues();
    shareOutDelta(j, f);
    solve(paramArrayOfInt);
  }
  
  private GridLayout.Arc[] topologicalSort(List<GridLayout.Arc> paramList)
  {
    return topologicalSort((GridLayout.Arc[])paramList.toArray(new GridLayout.Arc[paramList.size()]));
  }
  
  private GridLayout.Arc[] topologicalSort(final GridLayout.Arc[] paramArrayOfArc)
  {
    new Object()
    {
      GridLayout.Arc[][] arcsByVertex = groupArcsByFirstVertex(paramArrayOfArc);
      int cursor = result.length - 1;
      GridLayout.Arc[] result = new GridLayout.Arc[paramArrayOfArc.length];
      int[] visited = new int[getCount() + 1];
      
      static
      {
        if (!GridLayout.class.desiredAssertionStatus()) {}
        for (boolean bool = true;; bool = false)
        {
          $assertionsDisabled = bool;
          return;
        }
      }
      
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
      
      void walk(int paramAnonymousInt)
      {
        switch (visited[paramAnonymousInt])
        {
        }
        do
        {
          return;
          visited[paramAnonymousInt] = 1;
          GridLayout.Arc[] arrayOfArc1 = arcsByVertex[paramAnonymousInt];
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
          visited[paramAnonymousInt] = 2;
          return;
        } while ($assertionsDisabled);
        throw new AssertionError();
      }
    }.sort();
  }
  
  public final GridLayout.Arc[] getArcs()
  {
    if (arcs == null) {
      arcs = createArcs();
    }
    if (!arcsValid)
    {
      computeArcs();
      arcsValid = true;
    }
    return arcs;
  }
  
  public final int getCount()
  {
    return Math.max(definedCount, getMaxIndex());
  }
  
  public final int[] getDeltas()
  {
    if (deltas == null) {
      deltas = new int[this$0.getChildCount()];
    }
    return deltas;
  }
  
  public final GridLayout.PackedMap<GridLayout.Spec, GridLayout.Bounds> getGroupBounds()
  {
    if (groupBounds == null) {
      groupBounds = createGroupBounds();
    }
    if (!groupBoundsValid)
    {
      computeGroupBounds();
      groupBoundsValid = true;
    }
    return groupBounds;
  }
  
  public final int[] getLeadingMargins()
  {
    if (leadingMargins == null) {
      leadingMargins = new int[getCount() + 1];
    }
    if (!leadingMarginsValid)
    {
      computeMargins(true);
      leadingMarginsValid = true;
    }
    return leadingMargins;
  }
  
  public final int[] getLocations()
  {
    if (locations == null) {
      locations = new int[getCount() + 1];
    }
    if (!locationsValid)
    {
      computeLocations(locations);
      locationsValid = true;
    }
    return locations;
  }
  
  public final int getMeasure(int paramInt)
  {
    int i = 0;
    int j = View.MeasureSpec.getMode(paramInt);
    paramInt = View.MeasureSpec.getSize(paramInt);
    switch (j)
    {
    default: 
      paramInt = i;
      if (!$assertionsDisabled) {
        throw new AssertionError();
      }
    case 0: 
      paramInt = getMeasure(0, 100000);
      return paramInt;
    case 1073741824: 
      return getMeasure(paramInt, paramInt);
    }
    return getMeasure(0, paramInt);
  }
  
  public final int[] getTrailingMargins()
  {
    if (trailingMargins == null) {
      trailingMargins = new int[getCount() + 1];
    }
    if (!trailingMarginsValid)
    {
      computeMargins(false);
      trailingMarginsValid = true;
    }
    return trailingMargins;
  }
  
  final GridLayout.Arc[][] groupArcsByFirstVertex(GridLayout.Arc[] paramArrayOfArc)
  {
    int j = 0;
    int k = getCount() + 1;
    GridLayout.Arc[][] arrayOfArc = new GridLayout.Arc[k][];
    int[] arrayOfInt = new int[k];
    int m = paramArrayOfArc.length;
    int i = 0;
    while (i < m)
    {
      int n = span.min;
      arrayOfInt[n] += 1;
      i += 1;
    }
    i = 0;
    while (i < k)
    {
      arrayOfArc[i] = new GridLayout.Arc[arrayOfInt[i]];
      i += 1;
    }
    Arrays.fill(arrayOfInt, 0);
    k = paramArrayOfArc.length;
    i = j;
    while (i < k)
    {
      GridLayout.Arc localArc = paramArrayOfArc[i];
      j = span.min;
      GridLayout.Arc[] arrayOfArc1 = arrayOfArc[j];
      m = arrayOfInt[j];
      arrayOfInt[j] = (m + 1);
      arrayOfArc1[m] = localArc;
      i += 1;
    }
    return arrayOfArc;
  }
  
  public final void invalidateStructure()
  {
    maxIndex = Integer.MIN_VALUE;
    groupBounds = null;
    forwardLinks = null;
    backwardLinks = null;
    leadingMargins = null;
    trailingMargins = null;
    arcs = null;
    locations = null;
    deltas = null;
    hasWeightsValid = false;
    invalidateValues();
  }
  
  public final void invalidateValues()
  {
    groupBoundsValid = false;
    forwardLinksValid = false;
    backwardLinksValid = false;
    leadingMarginsValid = false;
    trailingMarginsValid = false;
    arcsValid = false;
    locationsValid = false;
  }
  
  public final boolean isOrderPreserved()
  {
    return orderPreserved;
  }
  
  public final void layout(int paramInt)
  {
    setParentConstraints(paramInt, paramInt);
    getLocations();
  }
  
  public final void setCount(int paramInt)
  {
    StringBuilder localStringBuilder;
    if ((paramInt != Integer.MIN_VALUE) && (paramInt < getMaxIndex()))
    {
      localStringBuilder = new StringBuilder();
      if (!horizontal) {
        break label56;
      }
    }
    label56:
    for (String str = "column";; str = "row")
    {
      GridLayout.access$100(str + "Count must be greater than or equal to the maximum of all grid indices (and spans) defined in the LayoutParams of each child");
      definedCount = paramInt;
      return;
    }
  }
  
  public final void setOrderPreserved(boolean paramBoolean)
  {
    orderPreserved = paramBoolean;
    invalidateStructure();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.Axis
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */