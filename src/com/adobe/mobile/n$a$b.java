package com.adobe.mobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class n$a$b
  implements DialogInterface.OnClickListener
{
  private final n a;
  
  public n$a$b(n paramn)
  {
    a = paramn;
  }
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.e();
    a.f = false;
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.n.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */