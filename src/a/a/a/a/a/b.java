package a.a.a.a.a;

import a.a.a.a.a;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashSet;
import java.util.Set;

public class b
{
  private static final ThreadLocal<Set<a.a.a.a.b.b<d, d>>> a = new ThreadLocal();
  private boolean b = true;
  
  private b a(int paramInt1, int paramInt2)
  {
    if (!b) {
      return this;
    }
    if (paramInt1 == paramInt2) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return this;
    }
  }
  
  private b a(long paramLong1, long paramLong2)
  {
    if (!b) {
      return this;
    }
    if (paramLong1 == paramLong2) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return this;
    }
  }
  
  private static a.a.a.a.b.b<d, d> a(Object paramObject1, Object paramObject2)
  {
    return a.a.a.a.b.b.a(new d(paramObject1), new d(paramObject2));
  }
  
  private static Set<a.a.a.a.b.b<d, d>> a()
  {
    return (Set)a.get();
  }
  
  public static boolean a(Object paramObject1, Object paramObject2, String... paramVarArgs)
  {
    return b(paramObject1, paramObject2, paramVarArgs);
  }
  
  private static void b(Object paramObject1, Object paramObject2)
  {
    Set localSet = a();
    if (localSet != null)
    {
      localSet.remove(a(paramObject1, paramObject2));
      try
      {
        paramObject1 = a();
        if ((paramObject1 != null) && (((Set)paramObject1).isEmpty())) {
          a.remove();
        }
        return;
      }
      finally {}
    }
  }
  
  private static boolean b(Object paramObject1, Object paramObject2, String... paramVarArgs)
  {
    if (paramObject1 == paramObject2) {
      return true;
    }
    if ((paramObject1 == null) || (paramObject2 == null)) {
      return false;
    }
    Object localObject2 = paramObject1.getClass();
    Object localObject1 = paramObject2.getClass();
    if (((Class)localObject2).isInstance(paramObject2)) {
      if (((Class)localObject1).isInstance(paramObject1)) {
        break label385;
      }
    }
    for (;;)
    {
      b localb = new b();
      localObject2 = localObject1;
      for (;;)
      {
        try
        {
          if (((Class)localObject1).isArray())
          {
            localb.c(paramObject1, paramObject2);
            continue;
            return b;
            if (((Class)localObject1).isInstance(paramObject1))
            {
              if (((Class)localObject2).isInstance(paramObject2)) {
                break;
              }
              localObject1 = localObject2;
              break;
            }
            return false;
            b(paramObject1, paramObject2);
            if ((((Class)localObject2).getSuperclass() == null) || (localObject2 == null)) {
              continue;
            }
            localObject2 = ((Class)localObject2).getSuperclass();
          }
          localObject1 = a();
          a.a.a.a.b.b localb1 = a(paramObject1, paramObject2);
          a.a.a.a.b.b localb2 = a.a.a.a.b.b.a(localb1.a(), localb1.b());
          boolean bool;
          int i;
          if (localObject1 != null) {
            if (!((Set)localObject1).contains(localb1))
            {
              bool = ((Set)localObject1).contains(localb2);
              if (!bool) {}
            }
            else
            {
              i = 1;
              if (i != 0) {
                continue;
              }
            }
          }
          try
          {
            try
            {
              if (a() == null) {
                a.set(new HashSet());
              }
              a().add(a(paramObject1, paramObject2));
              localObject1 = ((Class)localObject2).getDeclaredFields();
              AccessibleObject.setAccessible((AccessibleObject[])localObject1, true);
              i = 0;
              if ((i >= localObject1.length) || (!b)) {
                continue;
              }
              localb1 = localObject1[i];
              if ((!a.a(paramVarArgs, localb1.getName())) && (localb1.getName().indexOf('$') == -1) && (!Modifier.isTransient(localb1.getModifiers())))
              {
                bool = Modifier.isStatic(localb1.getModifiers());
                if (bool) {}
              }
            }
            finally {}
          }
          finally
          {
            b(paramObject1, paramObject2);
          }
        }
        catch (IllegalArgumentException paramObject1)
        {
          return false;
        }
        try
        {
          localb.c(localb1.get(paramObject1), localb1.get(paramObject2));
          i += 1;
        }
        catch (IllegalAccessException paramVarArgs)
        {
          throw new InternalError("Unexpected IllegalAccessException");
        }
        i = 0;
      }
      label385:
      localObject1 = localObject2;
    }
  }
  
  private b c(Object paramObject1, Object paramObject2)
  {
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i = 0;
    if (!b) {}
    for (;;)
    {
      return this;
      if (paramObject1 != paramObject2)
      {
        if ((paramObject1 == null) || (paramObject2 == null))
        {
          b = false;
          return this;
        }
        if (!paramObject1.getClass().isArray())
        {
          b = paramObject1.equals(paramObject2);
          return this;
        }
        if (paramObject1.getClass() != paramObject2.getClass())
        {
          b = false;
          return this;
        }
        if ((paramObject1 instanceof long[]))
        {
          paramObject1 = (long[])paramObject1;
          paramObject2 = (long[])paramObject2;
          if ((b) && (paramObject1 != paramObject2))
          {
            if ((paramObject1 == null) || (paramObject2 == null))
            {
              b = false;
              return this;
            }
            if (paramObject1.length != paramObject2.length)
            {
              b = false;
              return this;
            }
            while ((i < paramObject1.length) && (b))
            {
              a(paramObject1[i], paramObject2[i]);
              i += 1;
            }
          }
        }
        else if ((paramObject1 instanceof int[]))
        {
          paramObject1 = (int[])paramObject1;
          paramObject2 = (int[])paramObject2;
          if ((b) && (paramObject1 != paramObject2))
          {
            if ((paramObject1 == null) || (paramObject2 == null))
            {
              b = false;
              return this;
            }
            i = j;
            if (paramObject1.length != paramObject2.length)
            {
              b = false;
              return this;
            }
            while ((i < paramObject1.length) && (b))
            {
              a(paramObject1[i], paramObject2[i]);
              i += 1;
            }
          }
        }
        else
        {
          label336:
          int i1;
          if ((paramObject1 instanceof short[]))
          {
            paramObject1 = (short[])paramObject1;
            paramObject2 = (short[])paramObject2;
            if ((b) && (paramObject1 != paramObject2))
            {
              if ((paramObject1 == null) || (paramObject2 == null))
              {
                b = false;
                return this;
              }
              if (paramObject1.length != paramObject2.length)
              {
                b = false;
                return this;
              }
              i = 0;
              if ((i < paramObject1.length) && (b))
              {
                j = paramObject1[i];
                k = paramObject2[i];
                if (b) {
                  if (j != k) {
                    break label394;
                  }
                }
              }
              label394:
              for (i1 = 1;; i1 = 0)
              {
                b = i1;
                i += 1;
                break label336;
                break;
              }
            }
          }
          else if ((paramObject1 instanceof char[]))
          {
            paramObject1 = (char[])paramObject1;
            paramObject2 = (char[])paramObject2;
            if ((b) && (paramObject1 != paramObject2))
            {
              if ((paramObject1 == null) || (paramObject2 == null))
              {
                b = false;
                return this;
              }
              if (paramObject1.length != paramObject2.length)
              {
                b = false;
                return this;
              }
              i = 0;
              label461:
              if ((i < paramObject1.length) && (b))
              {
                j = paramObject1[i];
                k = paramObject2[i];
                if (b) {
                  if (j != k) {
                    break label519;
                  }
                }
              }
              label519:
              for (i1 = 1;; i1 = 0)
              {
                b = i1;
                i += 1;
                break label461;
                break;
              }
            }
          }
          else if ((paramObject1 instanceof byte[]))
          {
            paramObject1 = (byte[])paramObject1;
            paramObject2 = (byte[])paramObject2;
            if ((b) && (paramObject1 != paramObject2))
            {
              if ((paramObject1 == null) || (paramObject2 == null))
              {
                b = false;
                return this;
              }
              if (paramObject1.length != paramObject2.length)
              {
                b = false;
                return this;
              }
              i = 0;
              label586:
              if ((i < paramObject1.length) && (b))
              {
                j = paramObject1[i];
                k = paramObject2[i];
                if (b) {
                  if (j != k) {
                    break label644;
                  }
                }
              }
              label644:
              for (i1 = 1;; i1 = 0)
              {
                b = i1;
                i += 1;
                break label586;
                break;
              }
            }
          }
          else if ((paramObject1 instanceof double[]))
          {
            paramObject1 = (double[])paramObject1;
            paramObject2 = (double[])paramObject2;
            if ((b) && (paramObject1 != paramObject2))
            {
              if ((paramObject1 == null) || (paramObject2 == null))
              {
                b = false;
                return this;
              }
              i = k;
              if (paramObject1.length != paramObject2.length)
              {
                b = false;
                return this;
              }
              while ((i < paramObject1.length) && (b))
              {
                double d1 = paramObject1[i];
                double d2 = paramObject2[i];
                if (b) {
                  a(Double.doubleToLongBits(d1), Double.doubleToLongBits(d2));
                }
                i += 1;
              }
            }
          }
          else if ((paramObject1 instanceof float[]))
          {
            paramObject1 = (float[])paramObject1;
            paramObject2 = (float[])paramObject2;
            if ((b) && (paramObject1 != paramObject2))
            {
              if ((paramObject1 == null) || (paramObject2 == null))
              {
                b = false;
                return this;
              }
              i = m;
              if (paramObject1.length != paramObject2.length)
              {
                b = false;
                return this;
              }
              while ((i < paramObject1.length) && (b))
              {
                float f1 = paramObject1[i];
                float f2 = paramObject2[i];
                if (b) {
                  a(Float.floatToIntBits(f1), Float.floatToIntBits(f2));
                }
                i += 1;
              }
            }
          }
          else if ((paramObject1 instanceof boolean[]))
          {
            paramObject1 = (boolean[])paramObject1;
            paramObject2 = (boolean[])paramObject2;
            if ((b) && (paramObject1 != paramObject2))
            {
              if ((paramObject1 == null) || (paramObject2 == null))
              {
                b = false;
                return this;
              }
              if (paramObject1.length != paramObject2.length)
              {
                b = false;
                return this;
              }
              i = 0;
              label947:
              if ((i < paramObject1.length) && (b))
              {
                i1 = paramObject1[i];
                int i2 = paramObject2[i];
                if (b) {
                  if (i1 != i2) {
                    break label1005;
                  }
                }
              }
              label1005:
              for (i1 = 1;; i1 = 0)
              {
                b = i1;
                i += 1;
                break label947;
                break;
              }
            }
          }
          else
          {
            paramObject1 = (Object[])paramObject1;
            paramObject2 = (Object[])paramObject2;
            if ((b) && (paramObject1 != paramObject2))
            {
              if ((paramObject1 == null) || (paramObject2 == null))
              {
                b = false;
                return this;
              }
              i = n;
              if (paramObject1.length != paramObject2.length)
              {
                b = false;
                return this;
              }
              while ((i < paramObject1.length) && (b))
              {
                c(paramObject1[i], paramObject2[i]);
                i += 1;
              }
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     a.a.a.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */