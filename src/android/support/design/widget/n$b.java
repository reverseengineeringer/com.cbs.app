package android.support.design.widget;

import java.lang.ref.WeakReference;

final class n$b
{
  private final WeakReference<n.a> a;
  private int b;
  
  n$b(int paramInt, n.a parama)
  {
    a = new WeakReference(parama);
    b = paramInt;
  }
  
  final boolean a(n.a parama)
  {
    return (parama != null) && (a.get() == parama);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.n.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */