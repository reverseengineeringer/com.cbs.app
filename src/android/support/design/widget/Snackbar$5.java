package android.support.design.widget;

import android.os.Handler;

final class Snackbar$5
  implements Snackbar.SnackbarLayout.a
{
  Snackbar$5(Snackbar paramSnackbar) {}
  
  public final void a()
  {
    if (a.b()) {
      Snackbar.d().post(new Runnable()
      {
        public final void run()
        {
          Snackbar.a(a, 3);
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */