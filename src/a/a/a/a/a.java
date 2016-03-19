package a.a.a.a;

public final class a
{
  public static final Object[] a = new Object[0];
  public static final Class<?>[] b = new Class[0];
  public static final String[] c = new String[0];
  public static final long[] d = new long[0];
  public static final Long[] e = new Long[0];
  public static final int[] f = new int[0];
  public static final Integer[] g = new Integer[0];
  public static final short[] h = new short[0];
  public static final Short[] i = new Short[0];
  public static final byte[] j = new byte[0];
  public static final Byte[] k = new Byte[0];
  public static final double[] l = new double[0];
  public static final Double[] m = new Double[0];
  public static final float[] n = new float[0];
  public static final Float[] o = new Float[0];
  public static final boolean[] p = new boolean[0];
  public static final Boolean[] q = new Boolean[0];
  public static final char[] r = new char[0];
  public static final Character[] s = new Character[0];
  
  public static boolean a(Object[] paramArrayOfObject, Object paramObject)
  {
    boolean bool = false;
    int i1;
    if (paramArrayOfObject != null) {
      if (paramObject == null)
      {
        i1 = 0;
        if (i1 >= paramArrayOfObject.length) {
          break label84;
        }
        if (paramArrayOfObject[i1] != null) {}
      }
    }
    for (;;)
    {
      if (i1 != -1) {
        bool = true;
      }
      return bool;
      i1 += 1;
      break;
      if (paramArrayOfObject.getClass().getComponentType().isInstance(paramObject))
      {
        int i2 = 0;
        for (;;)
        {
          if (i2 >= paramArrayOfObject.length) {
            break label84;
          }
          i1 = i2;
          if (paramObject.equals(paramArrayOfObject[i2])) {
            break;
          }
          i2 += 1;
        }
      }
      label84:
      i1 = -1;
    }
  }
}

/* Location:
 * Qualified Name:     a.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */