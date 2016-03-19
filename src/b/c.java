package b;

import android.content.Intent;
import android.os.Bundle;

public final class c
{
  public static Bundle a(Intent paramIntent)
  {
    paramIntent = paramIntent.getBundleExtra("al_applink_data");
    if (paramIntent == null) {
      return null;
    }
    return paramIntent.getBundle("extras");
  }
}

/* Location:
 * Qualified Name:     b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */