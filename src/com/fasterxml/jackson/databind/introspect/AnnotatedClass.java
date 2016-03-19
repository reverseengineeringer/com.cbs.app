package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class AnnotatedClass
  extends Annotated
{
  private static final AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];
  protected final AnnotationIntrospector _annotationIntrospector;
  protected final Class<?> _class;
  protected AnnotationMap _classAnnotations;
  protected List<AnnotatedConstructor> _constructors;
  protected List<AnnotatedMethod> _creatorMethods;
  protected boolean _creatorsResolved = false;
  protected AnnotatedConstructor _defaultConstructor;
  protected List<AnnotatedField> _fields;
  protected AnnotatedMethodMap _memberMethods;
  protected final ClassIntrospector.MixInResolver _mixInResolver;
  protected final Class<?> _primaryMixIn;
  protected final List<Class<?>> _superTypes;
  
  private AnnotatedClass(Class<?> paramClass, List<Class<?>> paramList, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver, AnnotationMap paramAnnotationMap)
  {
    _class = paramClass;
    _superTypes = paramList;
    _annotationIntrospector = paramAnnotationIntrospector;
    _mixInResolver = paramMixInResolver;
    if (_mixInResolver == null) {}
    for (paramClass = null;; paramClass = _mixInResolver.findMixInClassFor(_class))
    {
      _primaryMixIn = paramClass;
      _classAnnotations = paramAnnotationMap;
      return;
    }
  }
  
  private AnnotationMap _addAnnotationsIfNotPresent(AnnotationMap paramAnnotationMap, Annotation[] paramArrayOfAnnotation)
  {
    if (paramArrayOfAnnotation != null)
    {
      int j = paramArrayOfAnnotation.length;
      Object localObject1 = null;
      int i = 0;
      while (i < j)
      {
        Annotation localAnnotation = paramArrayOfAnnotation[i];
        Object localObject2 = localObject1;
        if (paramAnnotationMap.addIfNotPresent(localAnnotation))
        {
          localObject2 = localObject1;
          if (_isAnnotationBundle(localAnnotation)) {
            localObject2 = _addFromBundle(localAnnotation, (List)localObject1);
          }
        }
        i += 1;
        localObject1 = localObject2;
      }
      if (localObject1 != null) {
        _addAnnotationsIfNotPresent(paramAnnotationMap, (Annotation[])((List)localObject1).toArray(new Annotation[((List)localObject1).size()]));
      }
    }
    return paramAnnotationMap;
  }
  
  private void _addAnnotationsIfNotPresent(AnnotatedMember paramAnnotatedMember, Annotation[] paramArrayOfAnnotation)
  {
    while (paramArrayOfAnnotation != null)
    {
      int j = paramArrayOfAnnotation.length;
      Object localObject1 = null;
      int i = 0;
      while (i < j)
      {
        Annotation localAnnotation = paramArrayOfAnnotation[i];
        Object localObject2 = localObject1;
        if (paramAnnotatedMember.addIfNotPresent(localAnnotation))
        {
          localObject2 = localObject1;
          if (_isAnnotationBundle(localAnnotation)) {
            localObject2 = _addFromBundle(localAnnotation, (List)localObject1);
          }
        }
        i += 1;
        localObject1 = localObject2;
      }
      if (localObject1 == null) {
        break;
      }
      paramArrayOfAnnotation = (Annotation[])((List)localObject1).toArray(new Annotation[((List)localObject1).size()]);
    }
  }
  
  private List<Annotation> _addFromBundle(Annotation paramAnnotation, List<Annotation> paramList)
  {
    Annotation[] arrayOfAnnotation = paramAnnotation.annotationType().getDeclaredAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    for (paramAnnotation = paramList; i < j; paramAnnotation = paramList)
    {
      Annotation localAnnotation = arrayOfAnnotation[i];
      paramList = paramAnnotation;
      if (!(localAnnotation instanceof Target))
      {
        paramList = paramAnnotation;
        if (!(localAnnotation instanceof Retention))
        {
          paramList = paramAnnotation;
          if (paramAnnotation == null) {
            paramList = new ArrayList();
          }
          paramList.add(localAnnotation);
        }
      }
      i += 1;
    }
    return paramAnnotation;
  }
  
  private void _addOrOverrideAnnotations(AnnotatedMember paramAnnotatedMember, Annotation[] paramArrayOfAnnotation)
  {
    while (paramArrayOfAnnotation != null)
    {
      int j = paramArrayOfAnnotation.length;
      Object localObject1 = null;
      int i = 0;
      while (i < j)
      {
        Annotation localAnnotation = paramArrayOfAnnotation[i];
        Object localObject2 = localObject1;
        if (paramAnnotatedMember.addOrOverride(localAnnotation))
        {
          localObject2 = localObject1;
          if (_isAnnotationBundle(localAnnotation)) {
            localObject2 = _addFromBundle(localAnnotation, (List)localObject1);
          }
        }
        i += 1;
        localObject1 = localObject2;
      }
      if (localObject1 == null) {
        break;
      }
      paramArrayOfAnnotation = (Annotation[])((List)localObject1).toArray(new Annotation[((List)localObject1).size()]);
    }
  }
  
  private AnnotationMap _emptyAnnotationMap()
  {
    return new AnnotationMap();
  }
  
  private AnnotationMap[] _emptyAnnotationMaps(int paramInt)
  {
    Object localObject;
    if (paramInt == 0)
    {
      localObject = NO_ANNOTATION_MAPS;
      return (AnnotationMap[])localObject;
    }
    AnnotationMap[] arrayOfAnnotationMap = new AnnotationMap[paramInt];
    int i = 0;
    for (;;)
    {
      localObject = arrayOfAnnotationMap;
      if (i >= paramInt) {
        break;
      }
      arrayOfAnnotationMap[i] = _emptyAnnotationMap();
      i += 1;
    }
  }
  
  private final boolean _isAnnotationBundle(Annotation paramAnnotation)
  {
    return (_annotationIntrospector != null) && (_annotationIntrospector.isAnnotationBundle(paramAnnotation));
  }
  
  private boolean _isIncludableField(Field paramField)
  {
    if (paramField.isSynthetic()) {}
    int i;
    do
    {
      return false;
      i = paramField.getModifiers();
    } while ((Modifier.isStatic(i)) || (Modifier.isTransient(i)));
    return true;
  }
  
  public static AnnotatedClass construct(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    return new AnnotatedClass(paramClass, ClassUtil.findSuperTypes(paramClass, null), paramAnnotationIntrospector, paramMixInResolver, null);
  }
  
  public static AnnotatedClass constructWithoutSuperTypes(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    return new AnnotatedClass(paramClass, Collections.emptyList(), paramAnnotationIntrospector, paramMixInResolver, null);
  }
  
  private void resolveClassAnnotations()
  {
    _classAnnotations = new AnnotationMap();
    if (_annotationIntrospector != null)
    {
      if (_primaryMixIn != null) {
        _addClassMixIns(_classAnnotations, _class, _primaryMixIn);
      }
      _addAnnotationsIfNotPresent(_classAnnotations, _class.getDeclaredAnnotations());
      Iterator localIterator = _superTypes.iterator();
      while (localIterator.hasNext())
      {
        Class localClass = (Class)localIterator.next();
        _addClassMixIns(_classAnnotations, localClass);
        _addAnnotationsIfNotPresent(_classAnnotations, localClass.getDeclaredAnnotations());
      }
      _addClassMixIns(_classAnnotations, Object.class);
    }
  }
  
  private void resolveCreators()
  {
    int j = 0;
    Object localObject3 = _class.getDeclaredConstructors();
    int k = localObject3.length;
    int i = 0;
    Object localObject1 = null;
    Constructor localConstructor;
    Object localObject2;
    if (i < k)
    {
      localConstructor = localObject3[i];
      if (localConstructor.getParameterTypes().length == 0) {
        _defaultConstructor = _constructConstructor(localConstructor, true);
      }
      for (;;)
      {
        i += 1;
        break;
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new ArrayList(Math.max(10, localObject3.length));
        }
        ((List)localObject2).add(_constructConstructor(localConstructor, false));
        localObject1 = localObject2;
      }
    }
    if (localObject1 == null)
    {
      _constructors = Collections.emptyList();
      if ((_primaryMixIn != null) && ((_defaultConstructor != null) || (!_constructors.isEmpty()))) {
        _addConstructorMixIns(_primaryMixIn);
      }
      if (_annotationIntrospector == null) {
        break label256;
      }
      if ((_defaultConstructor != null) && (_annotationIntrospector.hasIgnoreMarker(_defaultConstructor))) {
        _defaultConstructor = null;
      }
      if (_constructors == null) {
        break label256;
      }
      i = _constructors.size();
    }
    label256:
    label450:
    for (;;)
    {
      i -= 1;
      if (i >= 0)
      {
        if (!_annotationIntrospector.hasIgnoreMarker((AnnotatedMember)_constructors.get(i))) {
          break label450;
        }
        _constructors.remove(i);
        continue;
        _constructors = ((List)localObject1);
        break;
      }
      localObject3 = _findClassMethods(_class);
      k = localObject3.length;
      localObject1 = null;
      i = j;
      while (i < k)
      {
        localConstructor = localObject3[i];
        localObject2 = localObject1;
        if (Modifier.isStatic(localConstructor.getModifiers()))
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new ArrayList(8);
          }
          ((List)localObject2).add(_constructCreatorMethod(localConstructor));
        }
        i += 1;
        localObject1 = localObject2;
      }
      if (localObject1 == null) {
        _creatorMethods = Collections.emptyList();
      }
      do
      {
        _creatorsResolved = true;
        return;
        _creatorMethods = ((List)localObject1);
        if (_primaryMixIn != null) {
          _addFactoryMixIns(_primaryMixIn);
        }
      } while (_annotationIntrospector == null);
      i = _creatorMethods.size();
      for (;;)
      {
        i -= 1;
        if (i < 0) {
          break;
        }
        if (_annotationIntrospector.hasIgnoreMarker((AnnotatedMember)_creatorMethods.get(i))) {
          _creatorMethods.remove(i);
        }
      }
    }
  }
  
  private void resolveFields()
  {
    Map localMap = _findFields(_class, null);
    if ((localMap == null) || (localMap.size() == 0))
    {
      _fields = Collections.emptyList();
      return;
    }
    _fields = new ArrayList(localMap.size());
    _fields.addAll(localMap.values());
  }
  
  private void resolveMemberMethods()
  {
    _memberMethods = new AnnotatedMethodMap();
    Object localObject2 = new AnnotatedMethodMap();
    _addMemberMethods(_class, _memberMethods, _primaryMixIn, (AnnotatedMethodMap)localObject2);
    Object localObject3 = _superTypes.iterator();
    Object localObject1;
    if (((Iterator)localObject3).hasNext())
    {
      Class localClass = (Class)((Iterator)localObject3).next();
      if (_mixInResolver == null) {}
      for (localObject1 = null;; localObject1 = _mixInResolver.findMixInClassFor(localClass))
      {
        _addMemberMethods(localClass, _memberMethods, (Class)localObject1, (AnnotatedMethodMap)localObject2);
        break;
      }
    }
    if (_mixInResolver != null)
    {
      localObject1 = _mixInResolver.findMixInClassFor(Object.class);
      if (localObject1 != null) {
        _addMethodMixIns(_class, _memberMethods, (Class)localObject1, (AnnotatedMethodMap)localObject2);
      }
    }
    if ((_annotationIntrospector != null) && (!((AnnotatedMethodMap)localObject2).isEmpty()))
    {
      localObject1 = ((AnnotatedMethodMap)localObject2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (AnnotatedMethod)((Iterator)localObject1).next();
        try
        {
          localObject3 = Object.class.getDeclaredMethod(((AnnotatedMethod)localObject2).getName(), ((AnnotatedMethod)localObject2).getRawParameterTypes());
          if (localObject3 != null)
          {
            localObject3 = _constructMethod((Method)localObject3);
            _addMixOvers(((AnnotatedMethod)localObject2).getAnnotated(), (AnnotatedMethod)localObject3, false);
            _memberMethods.add((AnnotatedMethod)localObject3);
          }
        }
        catch (Exception localException) {}
      }
    }
  }
  
  protected final void _addClassMixIns(AnnotationMap paramAnnotationMap, Class<?> paramClass)
  {
    if (_mixInResolver != null) {
      _addClassMixIns(paramAnnotationMap, paramClass, _mixInResolver.findMixInClassFor(paramClass));
    }
  }
  
  protected final void _addClassMixIns(AnnotationMap paramAnnotationMap, Class<?> paramClass1, Class<?> paramClass2)
  {
    if (paramClass2 == null) {}
    for (;;)
    {
      return;
      _addAnnotationsIfNotPresent(paramAnnotationMap, paramClass2.getDeclaredAnnotations());
      paramClass1 = ClassUtil.findSuperTypes(paramClass2, paramClass1).iterator();
      while (paramClass1.hasNext()) {
        _addAnnotationsIfNotPresent(paramAnnotationMap, ((Class)paramClass1.next()).getDeclaredAnnotations());
      }
    }
  }
  
  protected final void _addConstructorMixIns(Class<?> paramClass)
  {
    int i;
    int j;
    label24:
    Constructor localConstructor;
    Object localObject;
    if (_constructors == null)
    {
      i = 0;
      Constructor[] arrayOfConstructor = paramClass.getDeclaredConstructors();
      int m = arrayOfConstructor.length;
      j = 0;
      paramClass = null;
      if (j >= m) {
        break label220;
      }
      localConstructor = arrayOfConstructor[j];
      if (localConstructor.getParameterTypes().length != 0) {
        break label92;
      }
      localObject = paramClass;
      if (_defaultConstructor != null)
      {
        _addMixOvers(localConstructor, _defaultConstructor, false);
        localObject = paramClass;
      }
    }
    for (;;)
    {
      j += 1;
      paramClass = (Class<?>)localObject;
      break label24;
      i = _constructors.size();
      break;
      label92:
      if (paramClass == null)
      {
        localObject = new MemberKey[i];
        k = 0;
        for (;;)
        {
          paramClass = (Class<?>)localObject;
          if (k >= i) {
            break;
          }
          localObject[k] = new MemberKey(((AnnotatedConstructor)_constructors.get(k)).getAnnotated());
          k += 1;
        }
      }
      localObject = new MemberKey(localConstructor);
      int k = 0;
      for (;;)
      {
        if (k < i)
        {
          if (((MemberKey)localObject).equals(paramClass[k]))
          {
            _addMixOvers(localConstructor, (AnnotatedConstructor)_constructors.get(k), true);
            localObject = paramClass;
            break;
          }
          k += 1;
          continue;
          label220:
          return;
        }
      }
      localObject = paramClass;
    }
  }
  
  protected final void _addFactoryMixIns(Class<?> paramClass)
  {
    Object localObject = null;
    int k = _creatorMethods.size();
    Method[] arrayOfMethod = paramClass.getDeclaredMethods();
    int m = arrayOfMethod.length;
    int i = 0;
    paramClass = (Class<?>)localObject;
    int j;
    if (i < m)
    {
      Method localMethod = arrayOfMethod[i];
      if ((!Modifier.isStatic(localMethod.getModifiers())) || (localMethod.getParameterTypes().length == 0)) {
        break label192;
      }
      if (paramClass == null)
      {
        localObject = new MemberKey[k];
        j = 0;
        for (;;)
        {
          paramClass = (Class<?>)localObject;
          if (j >= k) {
            break;
          }
          localObject[j] = new MemberKey(((AnnotatedMethod)_creatorMethods.get(j)).getAnnotated());
          j += 1;
        }
      }
      MemberKey localMemberKey = new MemberKey(localMethod);
      j = 0;
      label131:
      localObject = paramClass;
      if (j < k)
      {
        if (!localMemberKey.equals(paramClass[j])) {
          break label184;
        }
        _addMixOvers(localMethod, (AnnotatedMethod)_creatorMethods.get(j), true);
      }
    }
    label184:
    label192:
    for (localObject = paramClass;; localObject = paramClass)
    {
      i += 1;
      paramClass = (Class<?>)localObject;
      break;
      j += 1;
      break label131;
      return;
    }
  }
  
  protected final void _addFieldMixIns(Class<?> paramClass1, Class<?> paramClass2, Map<String, AnnotatedField> paramMap)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramClass2);
    ClassUtil.findSuperTypes(paramClass2, paramClass1, localArrayList);
    paramClass1 = localArrayList.iterator();
    while (paramClass1.hasNext())
    {
      paramClass2 = ((Class)paramClass1.next()).getDeclaredFields();
      int j = paramClass2.length;
      int i = 0;
      while (i < j)
      {
        localArrayList = paramClass2[i];
        if (_isIncludableField(localArrayList))
        {
          AnnotatedField localAnnotatedField = (AnnotatedField)paramMap.get(localArrayList.getName());
          if (localAnnotatedField != null) {
            _addOrOverrideAnnotations(localAnnotatedField, localArrayList.getDeclaredAnnotations());
          }
        }
        i += 1;
      }
    }
  }
  
  protected final void _addMemberMethods(Class<?> paramClass1, AnnotatedMethodMap paramAnnotatedMethodMap1, Class<?> paramClass2, AnnotatedMethodMap paramAnnotatedMethodMap2)
  {
    if (paramClass2 != null) {
      _addMethodMixIns(paramClass1, paramAnnotatedMethodMap1, paramClass2, paramAnnotatedMethodMap2);
    }
    if (paramClass1 == null) {
      return;
    }
    paramClass1 = _findClassMethods(paramClass1);
    int j = paramClass1.length;
    int i = 0;
    label31:
    AnnotatedMethod localAnnotatedMethod;
    if (i < j)
    {
      paramClass2 = paramClass1[i];
      if (_isIncludableMemberMethod(paramClass2))
      {
        localAnnotatedMethod = paramAnnotatedMethodMap1.find(paramClass2);
        if (localAnnotatedMethod != null) {
          break label107;
        }
        localAnnotatedMethod = _constructMethod(paramClass2);
        paramAnnotatedMethodMap1.add(localAnnotatedMethod);
        paramClass2 = paramAnnotatedMethodMap2.remove(paramClass2);
        if (paramClass2 != null) {
          _addMixOvers(paramClass2.getAnnotated(), localAnnotatedMethod, false);
        }
      }
    }
    for (;;)
    {
      i += 1;
      break label31;
      break;
      label107:
      _addMixUnders(paramClass2, localAnnotatedMethod);
      if ((localAnnotatedMethod.getDeclaringClass().isInterface()) && (!paramClass2.getDeclaringClass().isInterface())) {
        paramAnnotatedMethodMap1.add(localAnnotatedMethod.withMethod(paramClass2));
      }
    }
  }
  
  protected final void _addMethodMixIns(Class<?> paramClass1, AnnotatedMethodMap paramAnnotatedMethodMap1, Class<?> paramClass2, AnnotatedMethodMap paramAnnotatedMethodMap2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramClass2);
    ClassUtil.findSuperTypes(paramClass2, paramClass1, localArrayList);
    paramClass1 = localArrayList.iterator();
    if (paramClass1.hasNext())
    {
      paramClass2 = ((Class)paramClass1.next()).getDeclaredMethods();
      int j = paramClass2.length;
      int i = 0;
      label63:
      AnnotatedMethod localAnnotatedMethod;
      if (i < j)
      {
        localArrayList = paramClass2[i];
        if (_isIncludableMemberMethod(localArrayList))
        {
          localAnnotatedMethod = paramAnnotatedMethodMap1.find(localArrayList);
          if (localAnnotatedMethod == null) {
            break label115;
          }
          _addMixUnders(localArrayList, localAnnotatedMethod);
        }
      }
      for (;;)
      {
        i += 1;
        break label63;
        break;
        label115:
        localAnnotatedMethod = paramAnnotatedMethodMap2.find(localArrayList);
        if (localAnnotatedMethod != null) {
          _addMixUnders(localArrayList, localAnnotatedMethod);
        } else {
          paramAnnotatedMethodMap2.add(_constructMethod(localArrayList));
        }
      }
    }
  }
  
  protected final void _addMixOvers(Constructor<?> paramConstructor, AnnotatedConstructor paramAnnotatedConstructor, boolean paramBoolean)
  {
    _addOrOverrideAnnotations(paramAnnotatedConstructor, paramConstructor.getDeclaredAnnotations());
    if (paramBoolean)
    {
      paramConstructor = paramConstructor.getParameterAnnotations();
      int k = paramConstructor.length;
      int i = 0;
      while (i < k)
      {
        Object localObject = paramConstructor[i];
        int m = localObject.length;
        int j = 0;
        while (j < m)
        {
          paramAnnotatedConstructor.addOrOverrideParam(i, localObject[j]);
          j += 1;
        }
        i += 1;
      }
    }
  }
  
  protected final void _addMixOvers(Method paramMethod, AnnotatedMethod paramAnnotatedMethod, boolean paramBoolean)
  {
    _addOrOverrideAnnotations(paramAnnotatedMethod, paramMethod.getDeclaredAnnotations());
    if (paramBoolean)
    {
      paramMethod = paramMethod.getParameterAnnotations();
      int k = paramMethod.length;
      int i = 0;
      while (i < k)
      {
        Object localObject = paramMethod[i];
        int m = localObject.length;
        int j = 0;
        while (j < m)
        {
          paramAnnotatedMethod.addOrOverrideParam(i, localObject[j]);
          j += 1;
        }
        i += 1;
      }
    }
  }
  
  protected final void _addMixUnders(Method paramMethod, AnnotatedMethod paramAnnotatedMethod)
  {
    _addAnnotationsIfNotPresent(paramAnnotatedMethod, paramMethod.getDeclaredAnnotations());
  }
  
  protected final AnnotationMap _collectRelevantAnnotations(Annotation[] paramArrayOfAnnotation)
  {
    return _addAnnotationsIfNotPresent(new AnnotationMap(), paramArrayOfAnnotation);
  }
  
  protected final AnnotationMap[] _collectRelevantAnnotations(Annotation[][] paramArrayOfAnnotation)
  {
    int j = paramArrayOfAnnotation.length;
    AnnotationMap[] arrayOfAnnotationMap = new AnnotationMap[j];
    int i = 0;
    while (i < j)
    {
      arrayOfAnnotationMap[i] = _collectRelevantAnnotations(paramArrayOfAnnotation[i]);
      i += 1;
    }
    return arrayOfAnnotationMap;
  }
  
  protected final AnnotatedConstructor _constructConstructor(Constructor<?> paramConstructor, boolean paramBoolean)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedConstructor(this, paramConstructor, _emptyAnnotationMap(), _emptyAnnotationMaps(paramConstructor.getParameterTypes().length));
    }
    if (paramBoolean) {
      return new AnnotatedConstructor(this, paramConstructor, _collectRelevantAnnotations(paramConstructor.getDeclaredAnnotations()), null);
    }
    Object localObject2 = paramConstructor.getParameterAnnotations();
    int i = paramConstructor.getParameterTypes().length;
    Object localObject1;
    Object localObject3;
    if (i != localObject2.length)
    {
      localObject1 = paramConstructor.getDeclaringClass();
      if ((((Class)localObject1).isEnum()) && (i == localObject2.length + 2))
      {
        localObject1 = new Annotation[localObject2.length + 2][];
        System.arraycopy(localObject2, 0, localObject1, 2, localObject2.length);
        localObject3 = _collectRelevantAnnotations((Annotation[][])localObject1);
        localObject2 = localObject1;
        localObject1 = localObject3;
      }
    }
    for (;;)
    {
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        throw new IllegalStateException("Internal error: constructor for " + paramConstructor.getDeclaringClass().getName() + " has mismatch: " + i + " parameters; " + localObject2.length + " sets of annotations");
        if ((((Class)localObject1).isMemberClass()) && (i == localObject2.length + 1))
        {
          localObject3 = new Annotation[localObject2.length + 1][];
          System.arraycopy(localObject2, 0, localObject3, 1, localObject2.length);
          localObject1 = _collectRelevantAnnotations((Annotation[][])localObject3);
          localObject2 = localObject3;
          continue;
          localObject3 = _collectRelevantAnnotations((Annotation[][])localObject2);
        }
      }
      else
      {
        return new AnnotatedConstructor(this, paramConstructor, _collectRelevantAnnotations(paramConstructor.getDeclaredAnnotations()), (AnnotationMap[])localObject3);
      }
      localObject1 = null;
    }
  }
  
  protected final AnnotatedMethod _constructCreatorMethod(Method paramMethod)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedMethod(this, paramMethod, _emptyAnnotationMap(), _emptyAnnotationMaps(paramMethod.getParameterTypes().length));
    }
    return new AnnotatedMethod(this, paramMethod, _collectRelevantAnnotations(paramMethod.getDeclaredAnnotations()), _collectRelevantAnnotations(paramMethod.getParameterAnnotations()));
  }
  
  protected final AnnotatedField _constructField(Field paramField)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedField(this, paramField, _emptyAnnotationMap());
    }
    return new AnnotatedField(this, paramField, _collectRelevantAnnotations(paramField.getDeclaredAnnotations()));
  }
  
  protected final AnnotatedMethod _constructMethod(Method paramMethod)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedMethod(this, paramMethod, _emptyAnnotationMap(), null);
    }
    return new AnnotatedMethod(this, paramMethod, _collectRelevantAnnotations(paramMethod.getDeclaredAnnotations()), null);
  }
  
  protected final Method[] _findClassMethods(Class<?> paramClass)
  {
    try
    {
      Method[] arrayOfMethod = paramClass.getDeclaredMethods();
      return arrayOfMethod;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      ClassLoader localClassLoader = Thread.currentThread().getContextClassLoader();
      if (localClassLoader == null) {
        throw localNoClassDefFoundError;
      }
      try
      {
        paramClass = localClassLoader.loadClass(paramClass.getName());
        return paramClass.getDeclaredMethods();
      }
      catch (ClassNotFoundException paramClass)
      {
        throw localNoClassDefFoundError;
      }
    }
  }
  
  protected final Map<String, AnnotatedField> _findFields(Class<?> paramClass, Map<String, AnnotatedField> paramMap)
  {
    Class localClass = paramClass.getSuperclass();
    if (localClass != null)
    {
      paramMap = _findFields(localClass, paramMap);
      Field[] arrayOfField = paramClass.getDeclaredFields();
      int j = arrayOfField.length;
      int i = 0;
      while (i < j)
      {
        Field localField = arrayOfField[i];
        Object localObject = paramMap;
        if (_isIncludableField(localField))
        {
          localObject = paramMap;
          if (paramMap == null) {
            localObject = new LinkedHashMap();
          }
          ((Map)localObject).put(localField.getName(), _constructField(localField));
        }
        i += 1;
        paramMap = (Map<String, AnnotatedField>)localObject;
      }
      if (_mixInResolver != null)
      {
        paramClass = _mixInResolver.findMixInClassFor(paramClass);
        if (paramClass != null) {
          _addFieldMixIns(localClass, paramClass, paramMap);
        }
      }
      return paramMap;
    }
    return paramMap;
  }
  
  protected final boolean _isIncludableMemberMethod(Method paramMethod)
  {
    if (Modifier.isStatic(paramMethod.getModifiers())) {}
    while ((paramMethod.isSynthetic()) || (paramMethod.isBridge()) || (paramMethod.getParameterTypes().length > 2)) {
      return false;
    }
    return true;
  }
  
  public final Iterable<Annotation> annotations()
  {
    if (_classAnnotations == null) {
      resolveClassAnnotations();
    }
    return _classAnnotations.annotations();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if ((paramObject == null) || (paramObject.getClass() != getClass())) {
        return false;
      }
    } while (_class == _class);
    return false;
  }
  
  public final Iterable<AnnotatedField> fields()
  {
    if (_fields == null) {
      resolveFields();
    }
    return _fields;
  }
  
  public final AnnotatedMethod findMethod(String paramString, Class<?>[] paramArrayOfClass)
  {
    if (_memberMethods == null) {
      resolveMemberMethods();
    }
    return _memberMethods.find(paramString, paramArrayOfClass);
  }
  
  protected final AnnotationMap getAllAnnotations()
  {
    if (_classAnnotations == null) {
      resolveClassAnnotations();
    }
    return _classAnnotations;
  }
  
  public final Class<?> getAnnotated()
  {
    return _class;
  }
  
  public final <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    if (_classAnnotations == null) {
      resolveClassAnnotations();
    }
    return _classAnnotations.get(paramClass);
  }
  
  public final Annotations getAnnotations()
  {
    if (_classAnnotations == null) {
      resolveClassAnnotations();
    }
    return _classAnnotations;
  }
  
  public final List<AnnotatedConstructor> getConstructors()
  {
    if (!_creatorsResolved) {
      resolveCreators();
    }
    return _constructors;
  }
  
  public final AnnotatedConstructor getDefaultConstructor()
  {
    if (!_creatorsResolved) {
      resolveCreators();
    }
    return _defaultConstructor;
  }
  
  public final int getFieldCount()
  {
    if (_fields == null) {
      resolveFields();
    }
    return _fields.size();
  }
  
  public final Type getGenericType()
  {
    return _class;
  }
  
  public final int getMemberMethodCount()
  {
    if (_memberMethods == null) {
      resolveMemberMethods();
    }
    return _memberMethods.size();
  }
  
  public final int getModifiers()
  {
    return _class.getModifiers();
  }
  
  public final String getName()
  {
    return _class.getName();
  }
  
  public final Class<?> getRawType()
  {
    return _class;
  }
  
  public final List<AnnotatedMethod> getStaticMethods()
  {
    if (!_creatorsResolved) {
      resolveCreators();
    }
    return _creatorMethods;
  }
  
  public final boolean hasAnnotations()
  {
    if (_classAnnotations == null) {
      resolveClassAnnotations();
    }
    return _classAnnotations.size() > 0;
  }
  
  public final int hashCode()
  {
    return _class.getName().hashCode();
  }
  
  public final Iterable<AnnotatedMethod> memberMethods()
  {
    if (_memberMethods == null) {
      resolveMemberMethods();
    }
    return _memberMethods;
  }
  
  public final String toString()
  {
    return "[AnnotedClass " + _class.getName() + "]";
  }
  
  public final AnnotatedClass withAnnotations(AnnotationMap paramAnnotationMap)
  {
    return new AnnotatedClass(_class, _superTypes, _annotationIntrospector, _mixInResolver, paramAnnotationMap);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.introspect.AnnotatedClass
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */