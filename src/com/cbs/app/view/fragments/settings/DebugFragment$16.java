package com.cbs.app.view.fragments.settings;

import android.net.Uri;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.utils.Util;

final class DebugFragment$16
  implements View.OnClickListener
{
  DebugFragment$16(DebugFragment paramDebugFragment, EditText paramEditText) {}
  
  public final void onClick(View paramView)
  {
    Editable localEditable = a.getText();
    paramView = null;
    if (localEditable != null) {
      paramView = localEditable.toString();
    }
    if ((paramView != null) && (!paramView.equals(" ")) && (paramView.contains("cbs://")))
    {
      paramView = Uri.parse(Util.d(paramView));
      if (!UriHandler.a(b.a, paramView))
      {
        if ((b.a instanceof NavigationActivity)) {
          ((NavigationActivity)b.a).k();
        }
        if ((b.a instanceof SettingsActivity)) {
          ((SettingsActivity)b.a).finish();
        }
      }
      return;
    }
    Toast.makeText(b.a, "You must enter a valid deep link.", 1).show();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */