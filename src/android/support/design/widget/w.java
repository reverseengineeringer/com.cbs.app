package android.support.design.widget;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewOutlineProvider;

final class w
{
  static final q.d a = new q.d()
  {
    public final q a()
    {
      if (Build.VERSION.SDK_INT >= 12) {}
      for (Object localObject = new s();; localObject = new r()) {
        return new q((q.e)localObject);
      }
    }
  };
  private static final a b = new b((byte)0);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      b = new c((byte)0);
      return;
    }
  }
  
  static q a()
  {
    return a.a();
  }
  
  static void a(View paramView)
  {
    b.a(paramView);
  }
  
  private static abstract interface a
  {
    public abstract void a(View paramView);
  }
  
  private static final class b
    implements w.a
  {
    public final void a(View paramView) {}
  }
  
  private static final class c
    implements w.a
  {
    public final void a(View paramView)
    {
      paramView.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */