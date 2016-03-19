package com.conviva.session;

import com.conviva.utils.CallableWithParameters.With1;
import com.conviva.utils.PlatformUtils;

class Session$2
  implements CallableWithParameters.With1<String>
{
  Session$2(Session paramSession) {}
  
  public void exec(String paramString)
  {
    try
    {
      Session.access$100(this$0, paramString);
      return;
    }
    catch (Exception paramString)
    {
      Session.access$200(this$0).log("JSON post error: " + paramString.toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.conviva.session.Session.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */