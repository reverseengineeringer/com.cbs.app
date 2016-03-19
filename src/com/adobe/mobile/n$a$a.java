package com.adobe.mobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class n$a$a
  implements DialogInterface.OnCancelListener
{
  private final n a;
  
  public n$a$a(n paramn)
  {
    a = paramn;
  }
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    a.e();
    a.f = false;
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.n.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */