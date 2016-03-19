package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.widget.SectionIndexer;

public final class c
  extends b
  implements SectionIndexer
{
  private final SectionIndexer d;
  
  c(Context paramContext, a parama)
  {
    super(paramContext, parama);
    d = ((SectionIndexer)parama);
  }
  
  public final int getPositionForSection(int paramInt)
  {
    return c(d.getPositionForSection(paramInt));
  }
  
  public final int getSectionForPosition(int paramInt)
  {
    paramInt = d(paramInt);
    return d.getSectionForPosition(paramInt);
  }
  
  public final Object[] getSections()
  {
    return d.getSections();
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */