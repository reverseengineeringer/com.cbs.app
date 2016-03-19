package android.support.design.widget;

import android.os.Handler;

final class Snackbar$3
  implements n.a
{
  Snackbar$3(Snackbar paramSnackbar) {}
  
  public final void a()
  {
    Snackbar.d().sendMessage(Snackbar.d().obtainMessage(0, a));
  }
  
  public final void a(int paramInt)
  {
    Snackbar.d().sendMessage(Snackbar.d().obtainMessage(1, paramInt, 0, a));
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */