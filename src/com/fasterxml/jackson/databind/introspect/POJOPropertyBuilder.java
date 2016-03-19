package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.util.EmptyIterator;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public class POJOPropertyBuilder
  extends BeanPropertyDefinition
  implements Comparable<POJOPropertyBuilder>
{
  protected final AnnotationIntrospector _annotationIntrospector;
  protected Linked<AnnotatedParameter> _ctorParameters;
  protected Linked<AnnotatedField> _fields;
  protected final boolean _forSerialization;
  protected Linked<AnnotatedMethod> _getters;
  protected final PropertyName _internalName;
  protected final PropertyName _name;
  protected Linked<AnnotatedMethod> _setters;
  
  public POJOPropertyBuilder(PropertyName paramPropertyName, AnnotationIntrospector paramAnnotationIntrospector, boolean paramBoolean)
  {
    this(paramPropertyName, paramPropertyName, paramAnnotationIntrospector, paramBoolean);
  }
  
  protected POJOPropertyBuilder(PropertyName paramPropertyName1, PropertyName paramPropertyName2, AnnotationIntrospector paramAnnotationIntrospector, boolean paramBoolean)
  {
    _internalName = paramPropertyName1;
    _name = paramPropertyName2;
    _annotationIntrospector = paramAnnotationIntrospector;
    _forSerialization = paramBoolean;
  }
  
  public POJOPropertyBuilder(POJOPropertyBuilder paramPOJOPropertyBuilder, PropertyName paramPropertyName)
  {
    _internalName = _internalName;
    _name = paramPropertyName;
    _annotationIntrospector = _annotationIntrospector;
    _fields = _fields;
    _ctorParameters = _ctorParameters;
    _getters = _getters;
    _setters = _setters;
    _forSerialization = _forSerialization;
  }
  
  private <T> boolean _anyExplicitNames(Linked<T> paramLinked)
  {
    while (paramLinked != null)
    {
      if ((name != null) && (isNameExplicit)) {
        return true;
      }
      paramLinked = next;
    }
    return false;
  }
  
  private <T> boolean _anyExplicits(Linked<T> paramLinked)
  {
    while (paramLinked != null)
    {
      if ((name != null) && (name.hasSimpleName())) {
        return true;
      }
      paramLinked = next;
    }
    return false;
  }
  
  private <T> boolean _anyIgnorals(Linked<T> paramLinked)
  {
    while (paramLinked != null)
    {
      if (isMarkedIgnored) {
        return true;
      }
      paramLinked = next;
    }
    return false;
  }
  
  private <T> boolean _anyVisible(Linked<T> paramLinked)
  {
    while (paramLinked != null)
    {
      if (isVisible) {
        return true;
      }
      paramLinked = next;
    }
    return false;
  }
  
  private void _explode(Collection<PropertyName> paramCollection, Map<PropertyName, POJOPropertyBuilder> paramMap, Linked<?> paramLinked)
  {
    Object localObject = paramLinked;
    if (localObject != null)
    {
      PropertyName localPropertyName = name;
      POJOPropertyBuilder localPOJOPropertyBuilder1;
      if ((!isNameExplicit) || (localPropertyName == null))
      {
        if (isVisible) {
          throw new IllegalStateException("Conflicting/ambiguous property name definitions (implicit name '" + _name + "'): found multiple explicit names: " + paramCollection + ", but also implicit accessor: " + localObject);
        }
      }
      else
      {
        POJOPropertyBuilder localPOJOPropertyBuilder2 = (POJOPropertyBuilder)paramMap.get(localPropertyName);
        localPOJOPropertyBuilder1 = localPOJOPropertyBuilder2;
        if (localPOJOPropertyBuilder2 == null)
        {
          localPOJOPropertyBuilder1 = new POJOPropertyBuilder(_internalName, localPropertyName, _annotationIntrospector, _forSerialization);
          paramMap.put(localPropertyName, localPOJOPropertyBuilder1);
        }
        if (paramLinked != _fields) {
          break label171;
        }
        _fields = ((Linked)localObject).withNext(_fields);
      }
      for (;;)
      {
        localObject = next;
        break;
        label171:
        if (paramLinked == _getters)
        {
          _getters = ((Linked)localObject).withNext(_getters);
        }
        else if (paramLinked == _setters)
        {
          _setters = ((Linked)localObject).withNext(_setters);
        }
        else
        {
          if (paramLinked != _ctorParameters) {
            break label249;
          }
          _ctorParameters = ((Linked)localObject).withNext(_ctorParameters);
        }
      }
      label249:
      throw new IllegalStateException("Internal error: mismatched accessors, property: " + this);
    }
  }
  
  private Set<PropertyName> _findExplicitNames(Linked<? extends AnnotatedMember> paramLinked, Set<PropertyName> paramSet)
  {
    Object localObject = paramLinked;
    for (paramLinked = paramSet; localObject != null; paramLinked = paramSet)
    {
      paramSet = paramLinked;
      if (isNameExplicit)
      {
        paramSet = paramLinked;
        if (name != null)
        {
          paramSet = paramLinked;
          if (paramLinked == null) {
            paramSet = new HashSet();
          }
          paramSet.add(name);
        }
      }
      localObject = next;
    }
    return paramLinked;
  }
  
  private AnnotationMap _mergeAnnotations(int paramInt, Linked<? extends AnnotatedMember>... paramVarArgs)
  {
    AnnotationMap localAnnotationMap = ((AnnotatedMember)value).getAllAnnotations();
    paramInt += 1;
    while (paramInt < paramVarArgs.length)
    {
      if (paramVarArgs[paramInt] != null) {
        return AnnotationMap.merge(localAnnotationMap, _mergeAnnotations(paramInt, paramVarArgs));
      }
      paramInt += 1;
    }
    return localAnnotationMap;
  }
  
  private PropertyName _propName(String paramString)
  {
    return PropertyName.construct(paramString, null);
  }
  
  private <T> Linked<T> _removeIgnored(Linked<T> paramLinked)
  {
    if (paramLinked == null) {
      return paramLinked;
    }
    return paramLinked.withoutIgnored();
  }
  
  private <T> Linked<T> _removeNonVisible(Linked<T> paramLinked)
  {
    if (paramLinked == null) {
      return paramLinked;
    }
    return paramLinked.withoutNonVisible();
  }
  
  private <T> Linked<T> _trimByVisibility(Linked<T> paramLinked)
  {
    if (paramLinked == null) {
      return paramLinked;
    }
    return paramLinked.trimByVisibility();
  }
  
  private static <T> Linked<T> merge(Linked<T> paramLinked1, Linked<T> paramLinked2)
  {
    if (paramLinked1 == null) {
      return paramLinked2;
    }
    if (paramLinked2 == null) {
      return paramLinked1;
    }
    return paramLinked1.append(paramLinked2);
  }
  
  protected String _findDefaultValue()
  {
    (String)fromMemberAnnotations(new WithMember()
    {
      public String withMember(AnnotatedMember paramAnonymousAnnotatedMember)
      {
        return _annotationIntrospector.findPropertyDefaultValue(paramAnonymousAnnotatedMember);
      }
    });
  }
  
  protected String _findDescription()
  {
    (String)fromMemberAnnotations(new WithMember()
    {
      public String withMember(AnnotatedMember paramAnonymousAnnotatedMember)
      {
        return _annotationIntrospector.findPropertyDescription(paramAnonymousAnnotatedMember);
      }
    });
  }
  
  protected Integer _findIndex()
  {
    (Integer)fromMemberAnnotations(new WithMember()
    {
      public Integer withMember(AnnotatedMember paramAnonymousAnnotatedMember)
      {
        return _annotationIntrospector.findPropertyIndex(paramAnonymousAnnotatedMember);
      }
    });
  }
  
  protected Boolean _findRequired()
  {
    (Boolean)fromMemberAnnotations(new WithMember()
    {
      public Boolean withMember(AnnotatedMember paramAnonymousAnnotatedMember)
      {
        return _annotationIntrospector.hasRequiredMarker(paramAnonymousAnnotatedMember);
      }
    });
  }
  
  protected int _getterPriority(AnnotatedMethod paramAnnotatedMethod)
  {
    int i = 2;
    paramAnnotatedMethod = paramAnnotatedMethod.getName();
    if ((paramAnnotatedMethod.startsWith("get")) && (paramAnnotatedMethod.length() > 3)) {
      i = 1;
    }
    while ((paramAnnotatedMethod.startsWith("is")) && (paramAnnotatedMethod.length() > 2)) {
      return i;
    }
    return 3;
  }
  
  protected int _setterPriority(AnnotatedMethod paramAnnotatedMethod)
  {
    paramAnnotatedMethod = paramAnnotatedMethod.getName();
    if ((paramAnnotatedMethod.startsWith("set")) && (paramAnnotatedMethod.length() > 3)) {
      return 1;
    }
    return 2;
  }
  
  public void addAll(POJOPropertyBuilder paramPOJOPropertyBuilder)
  {
    _fields = merge(_fields, _fields);
    _ctorParameters = merge(_ctorParameters, _ctorParameters);
    _getters = merge(_getters, _getters);
    _setters = merge(_setters, _setters);
  }
  
  public void addCtor(AnnotatedParameter paramAnnotatedParameter, PropertyName paramPropertyName, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    _ctorParameters = new Linked(paramAnnotatedParameter, _ctorParameters, paramPropertyName, paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  @Deprecated
  public void addCtor(AnnotatedParameter paramAnnotatedParameter, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    PropertyName localPropertyName = _propName(paramString);
    if (paramString != null) {}
    for (boolean bool = true;; bool = false)
    {
      addCtor(paramAnnotatedParameter, localPropertyName, bool, paramBoolean1, paramBoolean2);
      return;
    }
  }
  
  @Deprecated
  public void addCtor(AnnotatedParameter paramAnnotatedParameter, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    addCtor(paramAnnotatedParameter, _propName(paramString), paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  public void addField(AnnotatedField paramAnnotatedField, PropertyName paramPropertyName, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    _fields = new Linked(paramAnnotatedField, _fields, paramPropertyName, paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  @Deprecated
  public void addField(AnnotatedField paramAnnotatedField, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    PropertyName localPropertyName = _propName(paramString);
    if (paramString != null) {}
    for (boolean bool = true;; bool = false)
    {
      addField(paramAnnotatedField, localPropertyName, bool, paramBoolean1, paramBoolean2);
      return;
    }
  }
  
  @Deprecated
  public void addField(AnnotatedField paramAnnotatedField, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    addField(paramAnnotatedField, _propName(paramString), paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  public void addGetter(AnnotatedMethod paramAnnotatedMethod, PropertyName paramPropertyName, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    _getters = new Linked(paramAnnotatedMethod, _getters, paramPropertyName, paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  @Deprecated
  public void addGetter(AnnotatedMethod paramAnnotatedMethod, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    PropertyName localPropertyName = _propName(paramString);
    if (paramString != null) {}
    for (boolean bool = true;; bool = false)
    {
      addGetter(paramAnnotatedMethod, localPropertyName, bool, paramBoolean1, paramBoolean2);
      return;
    }
  }
  
  @Deprecated
  public void addGetter(AnnotatedMethod paramAnnotatedMethod, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    addGetter(paramAnnotatedMethod, _propName(paramString), paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  public void addSetter(AnnotatedMethod paramAnnotatedMethod, PropertyName paramPropertyName, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    _setters = new Linked(paramAnnotatedMethod, _setters, paramPropertyName, paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  @Deprecated
  public void addSetter(AnnotatedMethod paramAnnotatedMethod, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    PropertyName localPropertyName = _propName(paramString);
    if (paramString != null) {}
    for (boolean bool = true;; bool = false)
    {
      addSetter(paramAnnotatedMethod, localPropertyName, bool, paramBoolean1, paramBoolean2);
      return;
    }
  }
  
  @Deprecated
  public void addSetter(AnnotatedMethod paramAnnotatedMethod, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    addSetter(paramAnnotatedMethod, _propName(paramString), paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  public boolean anyIgnorals()
  {
    return (_anyIgnorals(_fields)) || (_anyIgnorals(_getters)) || (_anyIgnorals(_setters)) || (_anyIgnorals(_ctorParameters));
  }
  
  public boolean anyVisible()
  {
    return (_anyVisible(_fields)) || (_anyVisible(_getters)) || (_anyVisible(_setters)) || (_anyVisible(_ctorParameters));
  }
  
  public int compareTo(POJOPropertyBuilder paramPOJOPropertyBuilder)
  {
    if (_ctorParameters != null)
    {
      if (_ctorParameters == null) {
        return -1;
      }
    }
    else if (_ctorParameters != null) {
      return 1;
    }
    return getName().compareTo(paramPOJOPropertyBuilder.getName());
  }
  
  public boolean couldDeserialize()
  {
    return (_ctorParameters != null) || (_setters != null) || (_fields != null);
  }
  
  public boolean couldSerialize()
  {
    return (_getters != null) || (_fields != null);
  }
  
  public Collection<POJOPropertyBuilder> explode(Collection<PropertyName> paramCollection)
  {
    HashMap localHashMap = new HashMap();
    _explode(paramCollection, localHashMap, _fields);
    _explode(paramCollection, localHashMap, _getters);
    _explode(paramCollection, localHashMap, _setters);
    _explode(paramCollection, localHashMap, _ctorParameters);
    return localHashMap.values();
  }
  
  public Set<PropertyName> findExplicitNames()
  {
    Object localObject = _findExplicitNames(_fields, null);
    localObject = _findExplicitNames(_getters, (Set)localObject);
    localObject = _findExplicitNames(_setters, (Set)localObject);
    Set localSet = _findExplicitNames(_ctorParameters, (Set)localObject);
    localObject = localSet;
    if (localSet == null) {
      localObject = Collections.emptySet();
    }
    return (Set<PropertyName>)localObject;
  }
  
  public JsonInclude.Include findInclusion()
  {
    if (_annotationIntrospector == null) {
      return null;
    }
    AnnotatedMember localAnnotatedMember = getAccessor();
    return _annotationIntrospector.findSerializationInclusion(localAnnotatedMember, null);
  }
  
  @Deprecated
  public String findNewName()
  {
    Object localObject = findExplicitNames();
    if (localObject == null) {
      return null;
    }
    if (((Collection)localObject).size() > 1) {
      throw new IllegalStateException("Conflicting/ambiguous property name definitions (implicit name '" + _name + "'): found more than one explicit name: " + localObject);
    }
    localObject = (PropertyName)((Collection)localObject).iterator().next();
    if (((PropertyName)localObject).equals(_name)) {
      return null;
    }
    return ((PropertyName)localObject).getSimpleName();
  }
  
  public ObjectIdInfo findObjectIdInfo()
  {
    (ObjectIdInfo)fromMemberAnnotations(new WithMember()
    {
      public ObjectIdInfo withMember(AnnotatedMember paramAnonymousAnnotatedMember)
      {
        ObjectIdInfo localObjectIdInfo2 = _annotationIntrospector.findObjectIdInfo(paramAnonymousAnnotatedMember);
        ObjectIdInfo localObjectIdInfo1 = localObjectIdInfo2;
        if (localObjectIdInfo2 != null) {
          localObjectIdInfo1 = _annotationIntrospector.findObjectReferenceInfo(paramAnonymousAnnotatedMember, localObjectIdInfo2);
        }
        return localObjectIdInfo1;
      }
    });
  }
  
  public AnnotationIntrospector.ReferenceProperty findReferenceType()
  {
    (AnnotationIntrospector.ReferenceProperty)fromMemberAnnotations(new WithMember()
    {
      public AnnotationIntrospector.ReferenceProperty withMember(AnnotatedMember paramAnonymousAnnotatedMember)
      {
        return _annotationIntrospector.findReferenceType(paramAnonymousAnnotatedMember);
      }
    });
  }
  
  public Class<?>[] findViews()
  {
    (Class[])fromMemberAnnotations(new WithMember()
    {
      public Class<?>[] withMember(AnnotatedMember paramAnonymousAnnotatedMember)
      {
        return _annotationIntrospector.findViews(paramAnonymousAnnotatedMember);
      }
    });
  }
  
  protected <T> T fromMemberAnnotations(WithMember<T> paramWithMember)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject1 = null;
    if (_annotationIntrospector != null)
    {
      if (!_forSerialization) {
        break label79;
      }
      if (_getters != null) {
        localObject1 = paramWithMember.withMember((AnnotatedMember)_getters.value);
      }
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = localObject1;
        if (_fields != null) {
          localObject2 = paramWithMember.withMember((AnnotatedMember)_fields.value);
        }
      }
      return (T)localObject2;
      label79:
      localObject2 = localObject3;
      if (_ctorParameters != null) {
        localObject2 = paramWithMember.withMember((AnnotatedMember)_ctorParameters.value);
      }
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if (_setters != null) {
          localObject1 = paramWithMember.withMember((AnnotatedMember)_setters.value);
        }
      }
    }
  }
  
  public AnnotatedMember getAccessor()
  {
    AnnotatedMethod localAnnotatedMethod = getGetter();
    Object localObject = localAnnotatedMethod;
    if (localAnnotatedMethod == null) {
      localObject = getField();
    }
    return (AnnotatedMember)localObject;
  }
  
  public AnnotatedParameter getConstructorParameter()
  {
    if (_ctorParameters == null) {
      return null;
    }
    Linked localLinked = _ctorParameters;
    for (;;)
    {
      if ((((AnnotatedParameter)value).getOwner() instanceof AnnotatedConstructor)) {
        return (AnnotatedParameter)value;
      }
      localLinked = next;
      if (localLinked == null) {
        return (AnnotatedParameter)_ctorParameters.value;
      }
    }
  }
  
  public Iterator<AnnotatedParameter> getConstructorParameters()
  {
    if (_ctorParameters == null) {
      return EmptyIterator.instance();
    }
    return new MemberIterator(_ctorParameters);
  }
  
  public AnnotatedField getField()
  {
    if (_fields == null) {
      localObject2 = null;
    }
    Object localObject1;
    Linked localLinked;
    do
    {
      return (AnnotatedField)localObject2;
      localObject1 = (AnnotatedField)_fields.value;
      localLinked = _fields.next;
      localObject2 = localObject1;
    } while (localLinked == null);
    Object localObject2 = (AnnotatedField)value;
    Class localClass1 = ((AnnotatedField)localObject1).getDeclaringClass();
    Class localClass2 = ((AnnotatedField)localObject2).getDeclaringClass();
    if (localClass1 != localClass2) {
      if (localClass1.isAssignableFrom(localClass2)) {
        localObject1 = localObject2;
      }
    }
    for (;;)
    {
      localLinked = next;
      break;
      if (!localClass2.isAssignableFrom(localClass1)) {
        throw new IllegalArgumentException("Multiple fields representing property \"" + getName() + "\": " + ((AnnotatedField)localObject1).getFullName() + " vs " + ((AnnotatedField)localObject2).getFullName());
      }
    }
  }
  
  public PropertyName getFullName()
  {
    return _name;
  }
  
  public AnnotatedMethod getGetter()
  {
    Object localObject3 = _getters;
    if (localObject3 == null) {
      return null;
    }
    Object localObject4 = next;
    Object localObject1 = localObject4;
    Object localObject2 = localObject3;
    if (localObject4 == null) {
      return (AnnotatedMethod)value;
    }
    if (localObject1 != null)
    {
      localObject3 = ((AnnotatedMethod)value).getDeclaringClass();
      localObject4 = ((AnnotatedMethod)value).getDeclaringClass();
      if (localObject3 != localObject4) {
        if (((Class)localObject3).isAssignableFrom((Class)localObject4)) {
          localObject2 = localObject1;
        }
      }
    }
    for (;;)
    {
      localObject1 = next;
      break;
      if (!((Class)localObject4).isAssignableFrom((Class)localObject3))
      {
        int i = _getterPriority((AnnotatedMethod)value);
        int j = _getterPriority((AnnotatedMethod)value);
        if (i != j)
        {
          if (i < j) {
            localObject2 = localObject1;
          }
        }
        else
        {
          throw new IllegalArgumentException("Conflicting getter definitions for property \"" + getName() + "\": " + ((AnnotatedMethod)value).getFullName() + " vs " + ((AnnotatedMethod)value).getFullName());
          _getters = ((Linked)localObject2).withoutNext();
          return (AnnotatedMethod)value;
        }
      }
    }
  }
  
  public String getInternalName()
  {
    return _internalName.getSimpleName();
  }
  
  public PropertyMetadata getMetadata()
  {
    Boolean localBoolean = _findRequired();
    String str1 = _findDescription();
    Integer localInteger = _findIndex();
    String str2 = _findDefaultValue();
    if ((localBoolean == null) && (localInteger == null) && (str2 == null))
    {
      if (str1 == null) {
        return PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
      }
      return PropertyMetadata.STD_REQUIRED_OR_OPTIONAL.withDescription(str1);
    }
    return PropertyMetadata.construct(localBoolean.booleanValue(), str1, localInteger, str2);
  }
  
  public AnnotatedMember getMutator()
  {
    Object localObject2 = getConstructorParameter();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = getSetter();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = getField();
      }
    }
    return (AnnotatedMember)localObject1;
  }
  
  public String getName()
  {
    if (_name == null) {
      return null;
    }
    return _name.getSimpleName();
  }
  
  public AnnotatedMember getNonConstructorMutator()
  {
    AnnotatedMethod localAnnotatedMethod = getSetter();
    Object localObject = localAnnotatedMethod;
    if (localAnnotatedMethod == null) {
      localObject = getField();
    }
    return (AnnotatedMember)localObject;
  }
  
  public AnnotatedMember getPrimaryMember()
  {
    if (_forSerialization) {
      return getAccessor();
    }
    return getMutator();
  }
  
  public AnnotatedMethod getSetter()
  {
    Object localObject3 = _setters;
    if (localObject3 == null) {
      return null;
    }
    Object localObject4 = next;
    Object localObject1 = localObject4;
    Object localObject2 = localObject3;
    if (localObject4 == null) {
      return (AnnotatedMethod)value;
    }
    if (localObject1 != null)
    {
      localObject3 = ((AnnotatedMethod)value).getDeclaringClass();
      localObject4 = ((AnnotatedMethod)value).getDeclaringClass();
      if (localObject3 != localObject4) {
        if (((Class)localObject3).isAssignableFrom((Class)localObject4)) {
          localObject2 = localObject1;
        }
      }
    }
    for (;;)
    {
      localObject1 = next;
      break;
      if (!((Class)localObject4).isAssignableFrom((Class)localObject3))
      {
        int i = _setterPriority((AnnotatedMethod)value);
        int j = _setterPriority((AnnotatedMethod)value);
        if (i != j)
        {
          if (i < j) {
            localObject2 = localObject1;
          }
        }
        else
        {
          throw new IllegalArgumentException("Conflicting setter definitions for property \"" + getName() + "\": " + ((AnnotatedMethod)value).getFullName() + " vs " + ((AnnotatedMethod)value).getFullName());
          _setters = ((Linked)localObject2).withoutNext();
          return (AnnotatedMethod)value;
        }
      }
    }
  }
  
  public PropertyName getWrapperName()
  {
    AnnotatedMember localAnnotatedMember = getPrimaryMember();
    if ((localAnnotatedMember == null) || (_annotationIntrospector == null)) {
      return null;
    }
    return _annotationIntrospector.findWrapperName(localAnnotatedMember);
  }
  
  public boolean hasConstructorParameter()
  {
    return _ctorParameters != null;
  }
  
  public boolean hasField()
  {
    return _fields != null;
  }
  
  public boolean hasGetter()
  {
    return _getters != null;
  }
  
  public boolean hasSetter()
  {
    return _setters != null;
  }
  
  public boolean isExplicitlyIncluded()
  {
    return (_anyExplicits(_fields)) || (_anyExplicits(_getters)) || (_anyExplicits(_setters)) || (_anyExplicits(_ctorParameters));
  }
  
  public boolean isExplicitlyNamed()
  {
    return (_anyExplicitNames(_fields)) || (_anyExplicitNames(_getters)) || (_anyExplicitNames(_setters)) || (_anyExplicitNames(_ctorParameters));
  }
  
  public boolean isTypeId()
  {
    Boolean localBoolean = (Boolean)fromMemberAnnotations(new WithMember()
    {
      public Boolean withMember(AnnotatedMember paramAnonymousAnnotatedMember)
      {
        return _annotationIntrospector.isTypeId(paramAnonymousAnnotatedMember);
      }
    });
    return (localBoolean != null) && (localBoolean.booleanValue());
  }
  
  public void mergeAnnotations(boolean paramBoolean)
  {
    if (paramBoolean) {
      if (_getters != null)
      {
        localAnnotationMap = _mergeAnnotations(0, new Linked[] { _getters, _fields, _ctorParameters, _setters });
        _getters = _getters.withValue(((AnnotatedMethod)_getters.value).withAnnotations(localAnnotationMap));
      }
    }
    do
    {
      do
      {
        return;
      } while (_fields == null);
      localAnnotationMap = _mergeAnnotations(0, new Linked[] { _fields, _ctorParameters, _setters });
      _fields = _fields.withValue(((AnnotatedField)_fields.value).withAnnotations(localAnnotationMap));
      return;
      if (_ctorParameters != null)
      {
        localAnnotationMap = _mergeAnnotations(0, new Linked[] { _ctorParameters, _setters, _fields, _getters });
        _ctorParameters = _ctorParameters.withValue(((AnnotatedParameter)_ctorParameters.value).withAnnotations(localAnnotationMap));
        return;
      }
      if (_setters != null)
      {
        localAnnotationMap = _mergeAnnotations(0, new Linked[] { _setters, _fields, _getters });
        _setters = _setters.withValue(((AnnotatedMethod)_setters.value).withAnnotations(localAnnotationMap));
        return;
      }
    } while (_fields == null);
    AnnotationMap localAnnotationMap = _mergeAnnotations(0, new Linked[] { _fields, _getters });
    _fields = _fields.withValue(((AnnotatedField)_fields.value).withAnnotations(localAnnotationMap));
  }
  
  public void removeConstructors()
  {
    _ctorParameters = null;
  }
  
  public void removeIgnored()
  {
    _fields = _removeIgnored(_fields);
    _getters = _removeIgnored(_getters);
    _setters = _removeIgnored(_setters);
    _ctorParameters = _removeIgnored(_ctorParameters);
  }
  
  public void removeNonVisible(boolean paramBoolean)
  {
    _getters = _removeNonVisible(_getters);
    _ctorParameters = _removeNonVisible(_ctorParameters);
    if ((paramBoolean) || (_getters == null))
    {
      _fields = _removeNonVisible(_fields);
      _setters = _removeNonVisible(_setters);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[Property '").append(_name).append("'; ctors: ").append(_ctorParameters).append(", field(s): ").append(_fields).append(", getter(s): ").append(_getters).append(", setter(s): ").append(_setters);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public void trimByVisibility()
  {
    _fields = _trimByVisibility(_fields);
    _getters = _trimByVisibility(_getters);
    _setters = _trimByVisibility(_setters);
    _ctorParameters = _trimByVisibility(_ctorParameters);
  }
  
  public POJOPropertyBuilder withName(PropertyName paramPropertyName)
  {
    return new POJOPropertyBuilder(this, paramPropertyName);
  }
  
  public POJOPropertyBuilder withSimpleName(String paramString)
  {
    paramString = _name.withSimpleName(paramString);
    if (paramString == _name) {
      return this;
    }
    return new POJOPropertyBuilder(this, paramString);
  }
  
  private static final class Linked<T>
  {
    public final boolean isMarkedIgnored;
    public final boolean isNameExplicit;
    public final boolean isVisible;
    public final PropertyName name;
    public final Linked<T> next;
    public final T value;
    
    public Linked(T paramT, Linked<T> paramLinked, PropertyName paramPropertyName, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
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
  
  protected static class MemberIterator<T extends AnnotatedMember>
    implements Iterator<T>
  {
    private POJOPropertyBuilder.Linked<T> next;
    
    public MemberIterator(POJOPropertyBuilder.Linked<T> paramLinked)
    {
      next = paramLinked;
    }
    
    public boolean hasNext()
    {
      return next != null;
    }
    
    public T next()
    {
      if (next == null) {
        throw new NoSuchElementException();
      }
      AnnotatedMember localAnnotatedMember = (AnnotatedMember)next.value;
      next = next.next;
      return localAnnotatedMember;
    }
    
    public void remove()
    {
      throw new UnsupportedOperationException();
    }
  }
  
  private static abstract interface WithMember<T>
  {
    public abstract T withMember(AnnotatedMember paramAnnotatedMember);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */