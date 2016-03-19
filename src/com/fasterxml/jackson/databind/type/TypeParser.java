package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class TypeParser
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  protected final TypeFactory _factory;
  
  public TypeParser(TypeFactory paramTypeFactory)
  {
    _factory = paramTypeFactory;
  }
  
  protected IllegalArgumentException _problem(MyTokenizer paramMyTokenizer, String paramString)
  {
    return new IllegalArgumentException("Failed to parse type '" + paramMyTokenizer.getAllInput() + "' (remaining: '" + paramMyTokenizer.getRemainingInput() + "'): " + paramString);
  }
  
  protected Class<?> findClass(String paramString, MyTokenizer paramMyTokenizer)
  {
    try
    {
      Class localClass = ClassUtil.findClass(paramString);
      return localClass;
    }
    catch (Exception localException)
    {
      if ((localException instanceof RuntimeException)) {
        throw ((RuntimeException)localException);
      }
      throw _problem(paramMyTokenizer, "Can not locate class '" + paramString + "', problem: " + localException.getMessage());
    }
  }
  
  public JavaType parse(String paramString)
  {
    paramString = new MyTokenizer(paramString.trim());
    JavaType localJavaType = parseType(paramString);
    if (paramString.hasMoreTokens()) {
      throw _problem(paramString, "Unexpected tokens after complete type");
    }
    return localJavaType;
  }
  
  protected JavaType parseType(MyTokenizer paramMyTokenizer)
  {
    if (!paramMyTokenizer.hasMoreTokens()) {
      throw _problem(paramMyTokenizer, "Unexpected end-of-string");
    }
    Class localClass = findClass(paramMyTokenizer.nextToken(), paramMyTokenizer);
    if (paramMyTokenizer.hasMoreTokens())
    {
      String str = paramMyTokenizer.nextToken();
      if ("<".equals(str)) {
        return _factory._fromParameterizedClass(localClass, parseTypes(paramMyTokenizer));
      }
      paramMyTokenizer.pushBack(str);
    }
    return _factory._fromClass(localClass, null);
  }
  
  protected List<JavaType> parseTypes(MyTokenizer paramMyTokenizer)
  {
    ArrayList localArrayList = new ArrayList();
    while (paramMyTokenizer.hasMoreTokens())
    {
      localArrayList.add(parseType(paramMyTokenizer));
      if (paramMyTokenizer.hasMoreTokens())
      {
        String str = paramMyTokenizer.nextToken();
        if (">".equals(str)) {
          return localArrayList;
        }
        if (!",".equals(str)) {
          throw _problem(paramMyTokenizer, "Unexpected token '" + str + "', expected ',' or '>')");
        }
      }
    }
    throw _problem(paramMyTokenizer, "Unexpected end-of-string");
  }
  
  static final class MyTokenizer
    extends StringTokenizer
  {
    protected int _index;
    protected final String _input;
    protected String _pushbackToken;
    
    public MyTokenizer(String paramString)
    {
      super("<,>", true);
      _input = paramString;
    }
    
    public final String getAllInput()
    {
      return _input;
    }
    
    public final String getRemainingInput()
    {
      return _input.substring(_index);
    }
    
    public final String getUsedInput()
    {
      return _input.substring(0, _index);
    }
    
    public final boolean hasMoreTokens()
    {
      return (_pushbackToken != null) || (super.hasMoreTokens());
    }
    
    public final String nextToken()
    {
      String str;
      if (_pushbackToken != null)
      {
        str = _pushbackToken;
        _pushbackToken = null;
      }
      for (;;)
      {
        _index += str.length();
        return str;
        str = super.nextToken();
      }
    }
    
    public final void pushBack(String paramString)
    {
      _pushbackToken = paramString;
      _index -= paramString.length();
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.type.TypeParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */