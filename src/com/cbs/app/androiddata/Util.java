package com.cbs.app.androiddata;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class Util
{
  /* Error */
  public static String a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: invokestatic 19	com/cbs/app/androiddata/LG:a	()V
    //   3: sipush 1024
    //   6: newarray <illegal type>
    //   8: astore_3
    //   9: new 21	java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial 22	java/lang/StringBuilder:<init>	()V
    //   16: astore_2
    //   17: new 24	java/io/InputStreamReader
    //   20: dup
    //   21: aload_0
    //   22: ldc 26
    //   24: invokespecial 29	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   27: astore_0
    //   28: aload_0
    //   29: aload_3
    //   30: iconst_0
    //   31: sipush 1024
    //   34: invokevirtual 35	java/io/Reader:read	([CII)I
    //   37: istore_1
    //   38: iload_1
    //   39: iflt +52 -> 91
    //   42: aload_2
    //   43: aload_3
    //   44: iconst_0
    //   45: iload_1
    //   46: invokevirtual 39	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   49: pop
    //   50: goto -22 -> 28
    //   53: astore_3
    //   54: aload_0
    //   55: invokevirtual 42	java/io/Reader:close	()V
    //   58: aload_3
    //   59: athrow
    //   60: astore_0
    //   61: ldc 44
    //   63: new 21	java/lang/StringBuilder
    //   66: dup
    //   67: ldc 46
    //   69: invokespecial 49	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   72: aload_0
    //   73: invokevirtual 53	java/io/UnsupportedEncodingException:getLocalizedMessage	()Ljava/lang/String;
    //   76: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: invokestatic 65	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   85: pop
    //   86: aload_2
    //   87: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: areturn
    //   91: aload_0
    //   92: invokevirtual 42	java/io/Reader:close	()V
    //   95: goto -9 -> 86
    //   98: astore_0
    //   99: ldc 44
    //   101: new 21	java/lang/StringBuilder
    //   104: dup
    //   105: ldc 67
    //   107: invokespecial 49	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   110: aload_0
    //   111: invokevirtual 68	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   114: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokestatic 65	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   123: pop
    //   124: goto -38 -> 86
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	paramInputStream	java.io.InputStream
    //   37	9	1	i	int
    //   16	71	2	localStringBuilder	StringBuilder
    //   8	36	3	arrayOfChar	char[]
    //   53	6	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   28	38	53	finally
    //   42	50	53	finally
    //   17	28	60	java/io/UnsupportedEncodingException
    //   54	60	60	java/io/UnsupportedEncodingException
    //   91	95	60	java/io/UnsupportedEncodingException
    //   17	28	98	java/io/IOException
    //   54	60	98	java/io/IOException
    //   91	95	98	java/io/IOException
  }
  
  public static String a(HashMap<String, String> paramHashMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramHashMap != null)
    {
      paramHashMap = paramHashMap.entrySet().iterator();
      while (paramHashMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramHashMap.next();
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append("&");
        }
        try
        {
          localStringBuilder.append(String.format("%s=%s", new Object[] { URLEncoder.encode(((String)localEntry.getKey()).toString(), "UTF-8"), URLEncoder.encode(((String)localEntry.getValue()).toString(), "UTF-8") }));
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          Log.e("Util", "error: " + localUnsupportedEncodingException.getLocalizedMessage(), localUnsupportedEncodingException);
        }
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */