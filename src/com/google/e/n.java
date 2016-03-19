package com.google.e;

import com.google.e.d.a;
import com.google.e.d.b;
import com.google.e.d.d;
import java.io.IOException;
import java.io.Reader;

public final class n
{
  /* Error */
  private static i a(a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 21	com/google/e/d/a:p	()Z
    //   4: istore_1
    //   5: aload_0
    //   6: iconst_1
    //   7: invokevirtual 24	com/google/e/d/a:a	(Z)V
    //   10: aload_0
    //   11: invokestatic 28	com/google/e/b/j:a	(Lcom/google/e/d/a;)Lcom/google/e/i;
    //   14: astore_2
    //   15: aload_0
    //   16: iload_1
    //   17: invokevirtual 24	com/google/e/d/a:a	(Z)V
    //   20: aload_2
    //   21: areturn
    //   22: astore_2
    //   23: new 30	com/google/e/m
    //   26: dup
    //   27: new 32	java/lang/StringBuilder
    //   30: dup
    //   31: ldc 34
    //   33: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   40: ldc 43
    //   42: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 50	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: aload_2
    //   49: invokespecial 53	com/google/e/m:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   52: athrow
    //   53: astore_2
    //   54: aload_0
    //   55: iload_1
    //   56: invokevirtual 24	com/google/e/d/a:a	(Z)V
    //   59: aload_2
    //   60: athrow
    //   61: astore_2
    //   62: new 30	com/google/e/m
    //   65: dup
    //   66: new 32	java/lang/StringBuilder
    //   69: dup
    //   70: ldc 34
    //   72: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   75: aload_0
    //   76: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   79: ldc 43
    //   81: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: invokevirtual 50	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: aload_2
    //   88: invokespecial 53	com/google/e/m:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	parama	a
    //   4	52	1	bool	boolean
    //   14	7	2	locali	i
    //   22	27	2	localStackOverflowError	StackOverflowError
    //   53	7	2	localObject	Object
    //   61	27	2	localOutOfMemoryError	OutOfMemoryError
    // Exception table:
    //   from	to	target	type
    //   10	15	22	java/lang/StackOverflowError
    //   10	15	53	finally
    //   23	53	53	finally
    //   62	92	53	finally
    //   10	15	61	java/lang/OutOfMemoryError
  }
  
  public static i a(Reader paramReader)
  {
    i locali;
    try
    {
      paramReader = new a(paramReader);
      locali = a(paramReader);
      if ((!(locali instanceof k)) && (paramReader.f() != b.j)) {
        throw new q("Did not consume the entire document.");
      }
    }
    catch (d paramReader)
    {
      throw new q(paramReader);
    }
    catch (IOException paramReader)
    {
      throw new j(paramReader);
    }
    catch (NumberFormatException paramReader)
    {
      throw new q(paramReader);
    }
    return locali;
  }
}

/* Location:
 * Qualified Name:     com.google.e.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */