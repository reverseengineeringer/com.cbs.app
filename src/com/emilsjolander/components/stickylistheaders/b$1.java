package com.emilsjolander.components.stickylistheaders;

import android.database.DataSetObservable;
import android.database.DataSetObserver;

final class b$1
  extends DataSetObserver
{
  b$1(b paramb) {}
  
  public final void onChanged()
  {
    b.a(a);
    b.b(a).notifyChanged();
    b.c(a).notifyChanged();
  }
  
  public final void onInvalidated()
  {
    b.a(a);
    b.b(a).notifyInvalidated();
    b.c(a).notifyInvalidated();
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */