package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;

public class GraphRequestAsyncTask
  extends AsyncTask<Void, Void, List<GraphResponse>>
{
  private static final String TAG = GraphRequestAsyncTask.class.getCanonicalName();
  private static Method executeOnExecutorMethod;
  private final HttpURLConnection connection;
  private Exception exception;
  private final GraphRequestBatch requests;
  
  static
  {
    Method[] arrayOfMethod = AsyncTask.class.getMethods();
    int j = arrayOfMethod.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        Method localMethod = arrayOfMethod[i];
        if ("executeOnExecutor".equals(localMethod.getName()))
        {
          Class[] arrayOfClass = localMethod.getParameterTypes();
          if ((arrayOfClass.length == 2) && (arrayOfClass[0] == Executor.class) && (arrayOfClass[1].isArray())) {
            executeOnExecutorMethod = localMethod;
          }
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
  
  public GraphRequestAsyncTask(GraphRequestBatch paramGraphRequestBatch)
  {
    this(null, paramGraphRequestBatch);
  }
  
  public GraphRequestAsyncTask(HttpURLConnection paramHttpURLConnection, GraphRequestBatch paramGraphRequestBatch)
  {
    requests = paramGraphRequestBatch;
    connection = paramHttpURLConnection;
  }
  
  public GraphRequestAsyncTask(HttpURLConnection paramHttpURLConnection, Collection<GraphRequest> paramCollection)
  {
    this(paramHttpURLConnection, new GraphRequestBatch(paramCollection));
  }
  
  public GraphRequestAsyncTask(HttpURLConnection paramHttpURLConnection, GraphRequest... paramVarArgs)
  {
    this(paramHttpURLConnection, new GraphRequestBatch(paramVarArgs));
  }
  
  public GraphRequestAsyncTask(Collection<GraphRequest> paramCollection)
  {
    this(null, new GraphRequestBatch(paramCollection));
  }
  
  public GraphRequestAsyncTask(GraphRequest... paramVarArgs)
  {
    this(null, new GraphRequestBatch(paramVarArgs));
  }
  
  protected List<GraphResponse> doInBackground(Void... paramVarArgs)
  {
    try
    {
      if (connection == null) {
        return requests.executeAndWait();
      }
      paramVarArgs = GraphRequest.executeConnectionAndWait(connection, requests);
      return paramVarArgs;
    }
    catch (Exception paramVarArgs)
    {
      exception = paramVarArgs;
    }
    return null;
  }
  
  GraphRequestAsyncTask executeOnSettingsExecutor()
  {
    if (executeOnExecutorMethod != null) {}
    try
    {
      executeOnExecutorMethod.invoke(this, new Object[] { FacebookSdk.getExecutor(), null });
      return this;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return this;
    }
    catch (InvocationTargetException localInvocationTargetException) {}
    execute(new Void[0]);
    return this;
    return this;
  }
  
  protected final Exception getException()
  {
    return exception;
  }
  
  protected final GraphRequestBatch getRequests()
  {
    return requests;
  }
  
  protected void onPostExecute(List<GraphResponse> paramList)
  {
    super.onPostExecute(paramList);
    if (exception != null) {
      String.format("onPostExecute: exception encountered during request: %s", new Object[] { exception.getMessage() });
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    if (requests.getCallbackHandler() == null) {
      requests.setCallbackHandler(new Handler());
    }
  }
  
  public String toString()
  {
    return "{RequestAsyncTask:  connection: " + connection + ", requests: " + requests + "}";
  }
}

/* Location:
 * Qualified Name:     com.facebook.GraphRequestAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */