package android.support.design.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

abstract class g$a
  extends Animation
{
  private float b;
  private float c;
  
  private g$a(g paramg) {}
  
  protected abstract float a();
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    paramTransformation = a.d;
    paramTransformation.a(b + c * paramFloat, h);
  }
  
  public void reset()
  {
    super.reset();
    b = a.d.j;
    c = (a() - b);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */