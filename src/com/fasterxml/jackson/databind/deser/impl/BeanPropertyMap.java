package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class BeanPropertyMap
  implements Serializable, Iterable<SettableBeanProperty>
{
  private static final long serialVersionUID = 1L;
  private final Bucket[] _buckets;
  private final boolean _caseInsensitive;
  private final int _hashMask;
  private int _nextBucketIndex = 0;
  private final int _size;
  
  public BeanPropertyMap(Collection<SettableBeanProperty> paramCollection, boolean paramBoolean)
  {
    _caseInsensitive = paramBoolean;
    _size = paramCollection.size();
    int i = findSize(_size);
    _hashMask = (i - 1);
    Bucket[] arrayOfBucket = new Bucket[i];
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      SettableBeanProperty localSettableBeanProperty = (SettableBeanProperty)paramCollection.next();
      String str = getPropertyName(localSettableBeanProperty);
      i = str.hashCode() & _hashMask;
      Bucket localBucket = arrayOfBucket[i];
      int j = _nextBucketIndex;
      _nextBucketIndex = (j + 1);
      arrayOfBucket[i] = new Bucket(localBucket, str, localSettableBeanProperty, j);
    }
    _buckets = arrayOfBucket;
  }
  
  private BeanPropertyMap(Bucket[] paramArrayOfBucket, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    _buckets = paramArrayOfBucket;
    _size = paramInt1;
    _hashMask = (paramArrayOfBucket.length - 1);
    _nextBucketIndex = paramInt2;
    _caseInsensitive = paramBoolean;
  }
  
  private final boolean _findDeserializeAndSet2(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, String paramString, int paramInt)
  {
    Object localObject1 = _buckets[paramInt];
    Object localObject2;
    do
    {
      localObject2 = next;
      if (localObject2 == null)
      {
        localObject2 = _findWithEquals(paramString, paramInt);
        localObject1 = localObject2;
        if (localObject2 != null) {
          break;
        }
        return false;
      }
      localObject1 = localObject2;
    } while (key != paramString);
    localObject1 = value;
    try
    {
      ((SettableBeanProperty)localObject1).deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
      return true;
    }
    catch (Exception paramJsonParser)
    {
      for (;;)
      {
        wrapAndThrow(paramJsonParser, paramObject, paramString, paramDeserializationContext);
      }
    }
  }
  
  private SettableBeanProperty _findWithEquals(String paramString, int paramInt)
  {
    for (Bucket localBucket = _buckets[paramInt]; localBucket != null; localBucket = next) {
      if (paramString.equals(key)) {
        return value;
      }
    }
    return null;
  }
  
  private static final int findSize(int paramInt)
  {
    if (paramInt <= 32) {
      paramInt += paramInt;
    }
    int i;
    for (;;)
    {
      i = 2;
      while (i < paramInt) {
        i += i;
      }
      paramInt = (paramInt >> 2) + paramInt;
    }
    return i;
  }
  
  private String getPropertyName(SettableBeanProperty paramSettableBeanProperty)
  {
    if (_caseInsensitive) {
      return paramSettableBeanProperty.getName().toLowerCase();
    }
    return paramSettableBeanProperty.getName();
  }
  
  public final BeanPropertyMap assignIndexes()
  {
    Bucket[] arrayOfBucket = _buckets;
    int k = arrayOfBucket.length;
    int i = 0;
    int j = 0;
    while (i < k)
    {
      Bucket localBucket = arrayOfBucket[i];
      while (localBucket != null)
      {
        value.assignIndex(j);
        localBucket = next;
        j += 1;
      }
      i += 1;
    }
    return this;
  }
  
  public final SettableBeanProperty find(int paramInt)
  {
    int j = _buckets.length;
    int i = 0;
    while (i < j)
    {
      for (Bucket localBucket = _buckets[i]; localBucket != null; localBucket = next) {
        if (index == paramInt) {
          return value;
        }
      }
      i += 1;
    }
    return null;
  }
  
  public final SettableBeanProperty find(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Can not pass null property name");
    }
    String str = paramString;
    if (_caseInsensitive) {
      str = paramString.toLowerCase();
    }
    int i = str.hashCode();
    i = _hashMask & i;
    Bucket localBucket = _buckets[i];
    if (localBucket == null) {
      return null;
    }
    paramString = localBucket;
    if (key == str) {
      return value;
    }
    do
    {
      localBucket = next;
      if (localBucket == null) {
        break;
      }
      paramString = localBucket;
    } while (key != str);
    return value;
    return _findWithEquals(str, i);
  }
  
  public final boolean findDeserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, String paramString)
  {
    if (_caseInsensitive) {
      paramString = paramString.toLowerCase();
    }
    for (;;)
    {
      int i = paramString.hashCode() & _hashMask;
      Bucket localBucket = _buckets[i];
      if (localBucket == null) {
        return false;
      }
      if (key == paramString) {
        try
        {
          value.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
          return true;
        }
        catch (Exception paramJsonParser)
        {
          for (;;)
          {
            wrapAndThrow(paramJsonParser, paramObject, paramString, paramDeserializationContext);
          }
        }
      }
      return _findDeserializeAndSet2(paramJsonParser, paramDeserializationContext, paramObject, paramString, i);
    }
  }
  
  public final SettableBeanProperty[] getPropertiesInInsertionOrder()
  {
    SettableBeanProperty[] arrayOfSettableBeanProperty = new SettableBeanProperty[_nextBucketIndex];
    Bucket[] arrayOfBucket = _buckets;
    int j = arrayOfBucket.length;
    int i = 0;
    while (i < j)
    {
      for (Bucket localBucket = arrayOfBucket[i]; localBucket != null; localBucket = next) {
        arrayOfSettableBeanProperty[index] = value;
      }
      i += 1;
    }
    return arrayOfSettableBeanProperty;
  }
  
  public final Iterator<SettableBeanProperty> iterator()
  {
    return new IteratorImpl(_buckets);
  }
  
  public final void remove(SettableBeanProperty paramSettableBeanProperty)
  {
    String str = getPropertyName(paramSettableBeanProperty);
    int j = str.hashCode() & _buckets.length - 1;
    Bucket localBucket1 = _buckets[j];
    int i = 0;
    Bucket localBucket2 = null;
    if (localBucket1 != null)
    {
      if ((i == 0) && (key.equals(str))) {
        i = 1;
      }
      for (;;)
      {
        localBucket1 = next;
        break;
        localBucket2 = new Bucket(localBucket2, key, value, index);
      }
    }
    if (i == 0) {
      throw new NoSuchElementException("No entry '" + paramSettableBeanProperty + "' found, can't remove");
    }
    _buckets[j] = localBucket2;
  }
  
  public final BeanPropertyMap renameAll(NameTransformer paramNameTransformer)
  {
    if ((paramNameTransformer == null) || (paramNameTransformer == NameTransformer.NOP)) {
      return this;
    }
    Iterator localIterator = iterator();
    ArrayList localArrayList = new ArrayList();
    while (localIterator.hasNext())
    {
      Object localObject = (SettableBeanProperty)localIterator.next();
      SettableBeanProperty localSettableBeanProperty = ((SettableBeanProperty)localObject).withSimpleName(paramNameTransformer.transform(((SettableBeanProperty)localObject).getName()));
      JsonDeserializer localJsonDeserializer1 = localSettableBeanProperty.getValueDeserializer();
      localObject = localSettableBeanProperty;
      if (localJsonDeserializer1 != null)
      {
        JsonDeserializer localJsonDeserializer2 = localJsonDeserializer1.unwrappingDeserializer(paramNameTransformer);
        localObject = localSettableBeanProperty;
        if (localJsonDeserializer2 != localJsonDeserializer1) {
          localObject = localSettableBeanProperty.withValueDeserializer(localJsonDeserializer2);
        }
      }
      localArrayList.add(localObject);
    }
    return new BeanPropertyMap(localArrayList, _caseInsensitive);
  }
  
  public final void replace(SettableBeanProperty paramSettableBeanProperty)
  {
    String str = getPropertyName(paramSettableBeanProperty);
    int j = str.hashCode() & _buckets.length - 1;
    Bucket localBucket1 = _buckets[j];
    int i = -1;
    Bucket localBucket2 = null;
    if (localBucket1 != null)
    {
      if ((i < 0) && (key.equals(str))) {
        i = index;
      }
      for (;;)
      {
        localBucket1 = next;
        break;
        localBucket2 = new Bucket(localBucket2, key, value, index);
      }
    }
    if (i < 0) {
      throw new NoSuchElementException("No entry '" + paramSettableBeanProperty + "' found, can't replace");
    }
    _buckets[j] = new Bucket(localBucket2, str, paramSettableBeanProperty, i);
  }
  
  public final int size()
  {
    return _size;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Properties=[");
    SettableBeanProperty[] arrayOfSettableBeanProperty = getPropertiesInInsertionOrder();
    int m = arrayOfSettableBeanProperty.length;
    int j = 0;
    int i = 0;
    if (j < m)
    {
      SettableBeanProperty localSettableBeanProperty = arrayOfSettableBeanProperty[j];
      if (localSettableBeanProperty == null) {
        break label126;
      }
      int k = i + 1;
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(localSettableBeanProperty.getName());
      localStringBuilder.append('(');
      localStringBuilder.append(localSettableBeanProperty.getType());
      localStringBuilder.append(')');
      i = k;
    }
    label126:
    for (;;)
    {
      j += 1;
      break;
      localStringBuilder.append(']');
      return localStringBuilder.toString();
    }
  }
  
  public final BeanPropertyMap withProperty(SettableBeanProperty paramSettableBeanProperty)
  {
    int i = _buckets.length;
    Object localObject = new Bucket[i];
    System.arraycopy(_buckets, 0, localObject, 0, i);
    String str = getPropertyName(paramSettableBeanProperty);
    if (find(str) == null)
    {
      i = str.hashCode() & _hashMask;
      Bucket localBucket = localObject[i];
      int j = _nextBucketIndex;
      _nextBucketIndex = (j + 1);
      localObject[i] = new Bucket(localBucket, str, paramSettableBeanProperty, j);
      return new BeanPropertyMap((Bucket[])localObject, _size + 1, _nextBucketIndex, _caseInsensitive);
    }
    localObject = new BeanPropertyMap((Bucket[])localObject, i, _nextBucketIndex, _caseInsensitive);
    ((BeanPropertyMap)localObject).replace(paramSettableBeanProperty);
    return (BeanPropertyMap)localObject;
  }
  
  protected final void wrapAndThrow(Throwable paramThrowable, Object paramObject, String paramString, DeserializationContext paramDeserializationContext)
  {
    while (((paramThrowable instanceof InvocationTargetException)) && (paramThrowable.getCause() != null)) {
      paramThrowable = paramThrowable.getCause();
    }
    if ((paramThrowable instanceof Error)) {
      throw ((Error)paramThrowable);
    }
    if ((paramDeserializationContext == null) || (paramDeserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS))) {}
    for (int i = 1; (paramThrowable instanceof IOException); i = 0)
    {
      if ((i != 0) && ((paramThrowable instanceof JsonProcessingException))) {
        break label100;
      }
      throw ((IOException)paramThrowable);
    }
    if ((i == 0) && ((paramThrowable instanceof RuntimeException))) {
      throw ((RuntimeException)paramThrowable);
    }
    label100:
    throw JsonMappingException.wrapWithPath(paramThrowable, paramObject, paramString);
  }
  
  private static final class Bucket
    implements Serializable
  {
    private static final long serialVersionUID = 1L;
    public final int index;
    public final String key;
    public final Bucket next;
    public final SettableBeanProperty value;
    
    public Bucket(Bucket paramBucket, String paramString, SettableBeanProperty paramSettableBeanProperty, int paramInt)
    {
      next = paramBucket;
      key = paramString;
      value = paramSettableBeanProperty;
      index = paramInt;
    }
  }
  
  private static final class IteratorImpl
    implements Iterator<SettableBeanProperty>
  {
    private final BeanPropertyMap.Bucket[] _buckets;
    private BeanPropertyMap.Bucket _currentBucket;
    private int _nextBucketIndex;
    
    public IteratorImpl(BeanPropertyMap.Bucket[] paramArrayOfBucket)
    {
      _buckets = paramArrayOfBucket;
      int i = 0;
      int k = _buckets.length;
      int j;
      if (i < k)
      {
        paramArrayOfBucket = _buckets;
        j = i + 1;
        paramArrayOfBucket = paramArrayOfBucket[i];
        if (paramArrayOfBucket != null) {
          _currentBucket = paramArrayOfBucket;
        }
      }
      for (;;)
      {
        _nextBucketIndex = j;
        return;
        i = j;
        break;
        j = i;
      }
    }
    
    public final boolean hasNext()
    {
      return _currentBucket != null;
    }
    
    public final SettableBeanProperty next()
    {
      BeanPropertyMap.Bucket localBucket = _currentBucket;
      if (localBucket == null) {
        throw new NoSuchElementException();
      }
      int i;
      for (Object localObject = next; (localObject == null) && (_nextBucketIndex < _buckets.length); localObject = localObject[i])
      {
        localObject = _buckets;
        i = _nextBucketIndex;
        _nextBucketIndex = (i + 1);
      }
      _currentBucket = ((BeanPropertyMap.Bucket)localObject);
      return value;
    }
    
    public final void remove()
    {
      throw new UnsupportedOperationException();
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */