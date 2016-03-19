package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.CreatorProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.std.StdValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class CreatorCollector
{
  protected static final int C_BOOLEAN = 5;
  protected static final int C_DEFAULT = 0;
  protected static final int C_DELEGATE = 6;
  protected static final int C_DOUBLE = 4;
  protected static final int C_INT = 2;
  protected static final int C_LONG = 3;
  protected static final int C_PROPS = 7;
  protected static final int C_STRING = 1;
  protected static final String[] TYPE_DESCS = { "default", "String", "int", "long", "double", "boolean", "delegate", "property-based" };
  protected final BeanDescription _beanDesc;
  protected final boolean _canFixAccess;
  protected final AnnotatedWithParams[] _creators = new AnnotatedWithParams[8];
  protected CreatorProperty[] _delegateArgs;
  protected int _explicitCreators = 0;
  protected boolean _hasNonDefaultCreator = false;
  protected AnnotatedParameter _incompleteParameter;
  protected CreatorProperty[] _propertyBasedArgs;
  
  public CreatorCollector(BeanDescription paramBeanDescription, boolean paramBoolean)
  {
    _beanDesc = paramBeanDescription;
    _canFixAccess = paramBoolean;
  }
  
  private <T extends AnnotatedMember> T _fixAccess(T paramT)
  {
    if ((paramT != null) && (_canFixAccess)) {
      ClassUtil.checkAndFixAccess((Member)paramT.getAnnotated());
    }
    return paramT;
  }
  
  @Deprecated
  public void addBooleanCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    addBooleanCreator(paramAnnotatedWithParams, false);
  }
  
  public void addBooleanCreator(AnnotatedWithParams paramAnnotatedWithParams, boolean paramBoolean)
  {
    verifyNonDup(paramAnnotatedWithParams, 5, paramBoolean);
  }
  
  public void addDelegatingCreator(AnnotatedWithParams paramAnnotatedWithParams, boolean paramBoolean, CreatorProperty[] paramArrayOfCreatorProperty)
  {
    verifyNonDup(paramAnnotatedWithParams, 6, paramBoolean);
    _delegateArgs = paramArrayOfCreatorProperty;
  }
  
  @Deprecated
  public void addDelegatingCreator(AnnotatedWithParams paramAnnotatedWithParams, CreatorProperty[] paramArrayOfCreatorProperty)
  {
    addDelegatingCreator(paramAnnotatedWithParams, false, paramArrayOfCreatorProperty);
  }
  
  @Deprecated
  public void addDoubleCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    addBooleanCreator(paramAnnotatedWithParams, false);
  }
  
  public void addDoubleCreator(AnnotatedWithParams paramAnnotatedWithParams, boolean paramBoolean)
  {
    verifyNonDup(paramAnnotatedWithParams, 4, paramBoolean);
  }
  
  public void addIncompeteParameter(AnnotatedParameter paramAnnotatedParameter)
  {
    if (_incompleteParameter == null) {
      _incompleteParameter = paramAnnotatedParameter;
    }
  }
  
  @Deprecated
  public void addIntCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    addBooleanCreator(paramAnnotatedWithParams, false);
  }
  
  public void addIntCreator(AnnotatedWithParams paramAnnotatedWithParams, boolean paramBoolean)
  {
    verifyNonDup(paramAnnotatedWithParams, 2, paramBoolean);
  }
  
  @Deprecated
  public void addLongCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    addBooleanCreator(paramAnnotatedWithParams, false);
  }
  
  public void addLongCreator(AnnotatedWithParams paramAnnotatedWithParams, boolean paramBoolean)
  {
    verifyNonDup(paramAnnotatedWithParams, 3, paramBoolean);
  }
  
  public void addPropertyCreator(AnnotatedWithParams paramAnnotatedWithParams, boolean paramBoolean, CreatorProperty[] paramArrayOfCreatorProperty)
  {
    verifyNonDup(paramAnnotatedWithParams, 7, paramBoolean);
    if (paramArrayOfCreatorProperty.length > 1)
    {
      paramAnnotatedWithParams = new HashMap();
      int j = paramArrayOfCreatorProperty.length;
      int i = 0;
      while (i < j)
      {
        String str = paramArrayOfCreatorProperty[i].getName();
        if ((str.length() != 0) || (paramArrayOfCreatorProperty[i].getInjectableValueId() == null))
        {
          Integer localInteger = (Integer)paramAnnotatedWithParams.put(str, Integer.valueOf(i));
          if (localInteger != null) {
            throw new IllegalArgumentException("Duplicate creator property \"" + str + "\" (index " + localInteger + " vs " + i + ")");
          }
        }
        i += 1;
      }
    }
    _propertyBasedArgs = paramArrayOfCreatorProperty;
  }
  
  @Deprecated
  public void addPropertyCreator(AnnotatedWithParams paramAnnotatedWithParams, CreatorProperty[] paramArrayOfCreatorProperty)
  {
    addPropertyCreator(paramAnnotatedWithParams, false, paramArrayOfCreatorProperty);
  }
  
  @Deprecated
  public void addStringCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    addStringCreator(paramAnnotatedWithParams, false);
  }
  
  public void addStringCreator(AnnotatedWithParams paramAnnotatedWithParams, boolean paramBoolean)
  {
    verifyNonDup(paramAnnotatedWithParams, 1, paramBoolean);
  }
  
  public ValueInstantiator constructValueInstantiator(DeserializationConfig paramDeserializationConfig)
  {
    if (!_hasNonDefaultCreator) {}
    JavaType localJavaType1;
    JavaType localJavaType2;
    int i;
    label44:
    Class localClass;
    for (int j = 1; (j != 0) || (_creators[6] == null); j = 0)
    {
      localJavaType1 = null;
      localJavaType2 = _beanDesc.getType();
      if (_hasNonDefaultCreator) {
        break label156;
      }
      i = 1;
      if ((i & j) == 0) {
        break label200;
      }
      localClass = localJavaType2.getRawClass();
      if ((localClass != Collection.class) && (localClass != List.class) && (localClass != ArrayList.class)) {
        break label161;
      }
      return new Vanilla(1);
    }
    if (_delegateArgs != null)
    {
      int k = _delegateArgs.length;
      i = 0;
      label108:
      if (i < k) {
        if (_delegateArgs[i] != null) {}
      }
    }
    for (;;)
    {
      localJavaType1 = _beanDesc.bindingsForBeanType().resolveType(_creators[6].getGenericParameterType(i));
      break;
      i += 1;
      break label108;
      label156:
      i = 0;
      break label44;
      label161:
      if ((localClass == Map.class) || (localClass == LinkedHashMap.class)) {
        return new Vanilla(2);
      }
      if (localClass == HashMap.class) {
        return new Vanilla(3);
      }
      label200:
      paramDeserializationConfig = new StdValueInstantiator(paramDeserializationConfig, localJavaType2);
      paramDeserializationConfig.configureFromObjectSettings(_creators[0], _creators[6], localJavaType1, _delegateArgs, _creators[7], _propertyBasedArgs);
      paramDeserializationConfig.configureFromStringCreator(_creators[1]);
      paramDeserializationConfig.configureFromIntCreator(_creators[2]);
      paramDeserializationConfig.configureFromLongCreator(_creators[3]);
      paramDeserializationConfig.configureFromDoubleCreator(_creators[4]);
      paramDeserializationConfig.configureFromBooleanCreator(_creators[5]);
      paramDeserializationConfig.configureIncompleteParameter(_incompleteParameter);
      return paramDeserializationConfig;
      i = 0;
    }
  }
  
  public boolean hasDefaultCreator()
  {
    boolean bool = false;
    if (_creators[0] != null) {
      bool = true;
    }
    return bool;
  }
  
  public void setDefaultCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _creators[0] = ((AnnotatedWithParams)_fixAccess(paramAnnotatedWithParams));
  }
  
  @Deprecated
  protected AnnotatedWithParams verifyNonDup(AnnotatedWithParams paramAnnotatedWithParams, int paramInt)
  {
    verifyNonDup(paramAnnotatedWithParams, paramInt, false);
    return _creators[paramInt];
  }
  
  protected void verifyNonDup(AnnotatedWithParams paramAnnotatedWithParams, int paramInt, boolean paramBoolean)
  {
    int i = 1;
    int j = 1 << paramInt;
    _hasNonDefaultCreator = true;
    AnnotatedWithParams localAnnotatedWithParams = _creators[paramInt];
    if (localAnnotatedWithParams != null)
    {
      if ((_explicitCreators & j) != 0) {
        if (paramBoolean) {
          break label45;
        }
      }
      label45:
      Class localClass1;
      Class localClass2;
      do
      {
        return;
        if (!paramBoolean) {}
        for (;;)
        {
          if ((i == 0) || (localAnnotatedWithParams.getClass() != paramAnnotatedWithParams.getClass())) {
            break label150;
          }
          localClass1 = localAnnotatedWithParams.getRawParameterType(0);
          localClass2 = paramAnnotatedWithParams.getRawParameterType(0);
          if (localClass1 != localClass2) {
            break;
          }
          throw new IllegalArgumentException("Conflicting " + TYPE_DESCS[paramInt] + " creators: already had explicitly marked " + localAnnotatedWithParams + ", encountered " + paramAnnotatedWithParams);
          i = 0;
        }
      } while (localClass2.isAssignableFrom(localClass1));
    }
    label150:
    if (paramBoolean) {
      _explicitCreators |= j;
    }
    _creators[paramInt] = ((AnnotatedWithParams)_fixAccess(paramAnnotatedWithParams));
  }
  
  protected static final class Vanilla
    extends ValueInstantiator
    implements Serializable
  {
    public static final int TYPE_COLLECTION = 1;
    public static final int TYPE_HASH_MAP = 3;
    public static final int TYPE_MAP = 2;
    private static final long serialVersionUID = 1L;
    private final int _type;
    
    public Vanilla(int paramInt)
    {
      _type = paramInt;
    }
    
    public final boolean canCreateUsingDefault()
    {
      return true;
    }
    
    public final boolean canInstantiate()
    {
      return true;
    }
    
    public final Object createUsingDefault(DeserializationContext paramDeserializationContext)
    {
      switch (_type)
      {
      default: 
        throw new IllegalStateException("Unknown type " + _type);
      case 1: 
        return new ArrayList();
      case 2: 
        return new LinkedHashMap();
      }
      return new HashMap();
    }
    
    public final String getValueTypeDesc()
    {
      switch (_type)
      {
      default: 
        return Object.class.getName();
      case 1: 
        return ArrayList.class.getName();
      case 2: 
        return LinkedHashMap.class.getName();
      }
      return HashMap.class.getName();
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.impl.CreatorCollector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */