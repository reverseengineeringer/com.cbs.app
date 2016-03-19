package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import org.json.JSONObject;

@fs
public final class ep
  extends Handler
{
  private final eo a;
  
  public ep(Context paramContext)
  {
    this(new eq(paramContext));
  }
  
  private ep(eo parameo)
  {
    a = parameo;
  }
  
  public final void handleMessage(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.getData();
      if (paramMessage == null) {
        return;
      }
      paramMessage = new JSONObject(paramMessage.getString("data"));
      boolean bool = "fetch_html".equals(paramMessage.getString("message_name"));
      if (bool) {
        try
        {
          eo localeo = a;
          paramMessage.getString("request_id");
          localeo.a(paramMessage.getString("base_url"), paramMessage.getString("html"));
          return;
        }
        catch (Exception paramMessage) {}
      }
      return;
    }
    catch (Exception paramMessage) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */