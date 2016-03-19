package com.cbs.app.receiver;

import android.content.Intent;
import android.os.Bundle;
import com.amazon.device.messaging.ADMMessageHandlerBase;
import com.amazon.device.messaging.ADMMessageReceiver;
import java.net.HttpURLConnection;
import java.net.URL;

public class CBSADMMessageHandler
  extends ADMMessageHandlerBase
{
  protected void onMessage(Intent paramIntent)
  {
    Object localObject = paramIntent.getExtras();
    paramIntent = ((Bundle)localObject).getString("json_data_msg_key");
    localObject = ((Bundle)localObject).getString("json_data_time_key");
    new StringBuilder("String messages : ").append(paramIntent).append((String)localObject);
  }
  
  protected void onRegistered(String paramString)
  {
    try
    {
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL("www.cbs.com").openConnection();
      localHttpURLConnection.setDoInput(true);
      localHttpURLConnection.setUseCaches(false);
      localHttpURLConnection.setRequestMethod("POST");
      localHttpURLConnection.setRequestProperty("RegistrationId", paramString);
      localHttpURLConnection.getResponseMessage();
      return;
    }
    catch (Exception paramString) {}
  }
  
  protected void onRegistrationError(String paramString) {}
  
  protected void onUnregistered(String paramString) {}
  
  public static class CBSADMReceiver
    extends ADMMessageReceiver
  {
    public CBSADMReceiver()
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.receiver.CBSADMMessageHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */