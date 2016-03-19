package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.PropertyName;

final class POJOPropertyBuilder$Linked<T>
{
  public final boolean isMarkedIgnored;
  public final boolean isNameExplicit;
  public final boolean isVisible;
  public final PropertyName name;
  public final Linked<T> next;
  public final T value;
  
  public POJOPropertyBuilder$Linked(T paramT, Linked<T> paramLinked, PropertyName paramPropertyName, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    value = paramT;
    next = paramLinked;
    if ((paramPropertyName == null) || (paramPropertyName.isEmpty())) {}
    for (paramT = null;; paramT = paramPropertyName)
    {
      name = paramT;
      bool = paramBoolean1;
      if (!paramBoolean1) {
        break label77;
      }
      if (name != null) {
        break;
      }
      throw new IllegalArgumentException("Can not pass true for 'explName' if name is null/empty");
    }
    boolean bool = paramBoolean1;
    if (!paramPropertyName.hasSimpleName()) {
      bool = false;
    }
    label77:
    isNameExplicit = bool;
    isVisible = paramBoolean2;
    isMarkedIgnored = paramBoolean3;
  }
  
  protected final Linked<T> append(Linked<T> paramLinked)
  {
    if (next == null) {
      return withNext(paramLinked);
    }
    return withNext(next.append(paramLinked));
  }
  
  public final String toString()
  {
    String str2 = value.toString() + "[visible=" + isVisible + ",ignore=" + isMarkedIgnored + ",explicitName=" + isNameExplicit + "]";
    String str1 = str2;
    if (next != null) {
      str1 = str2 + ", " + next.toString();
    }
    return str1;
  }
  
  public final Linked<T> trimByVisibility()
  {
    if (next == null) {
      return this;
    }
    Linked localLinked = next.trimByVisibility();
    if (name != null)
    {
      if (name == null) {
        return withNext(null);
      }
      return withNext(localLinked);
    }
    if (name != null) {
      return localLinked;
    }
    if (isVisible == isVisible) {
      return withNext(localLinked);
    }
    if (isVisible) {
      return withNext(null);
    }
    return localLinked;
  }
  
  public final Linked<T> withNext(Linked<T> paramLinked)
  {
    if (paramLinked == next) {
      return this;
    }
    return new Linked(value, paramLinked, name, isNameExplicit, isVisible, isMarkedIgnored);
  }
  
  public final Linked<T> withValue(T paramT)
  {
    if (paramT == value) {
      return this;
    }
    return new Linked(paramT, next, name, isNameExplicit, isVisible, isMarkedIgnored);
  }
  
  public final Linked<T> withoutIgnored()
  {
    Linked localLinked1 = this;
    Object localObject;
    if (isMarkedIgnored) {
      if (next == null) {
        localObject = null;
      }
    }
    Linked localLinked2;
    do
    {
      do
      {
        return (Linked<T>)localObject;
        localLinked1 = next;
        break;
        localObject = localLinked1;
      } while (next == null);
      localLinked2 = next.withoutIgnored();
      localObject = localLinked1;
    } while (localLinked2 == next);
    return localLinked1.withNext(localLinked2);
  }
  
  public final Linked<T> withoutNext()
  {
    if (next == null) {
      return this;
    }
    return new Linked(value, null, name, isNameExplicit, isVisible, isMarkedIgnored);
  }
  
  public final Linked<T> withoutNonVisible()
  {
    if (next == null) {}
    for (Linked localLinked1 = null;; localLinked1 = next.withoutNonVisible())
    {
      Linked localLinked2 = localLinked1;
      if (isVisible) {
        localLinked2 = withNext(localLinked1);
      }
      return localLinked2;
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */