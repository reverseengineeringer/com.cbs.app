package com.facebook;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.location.Location;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Logger;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GraphRequest
{
  private static final String ACCEPT_LANGUAGE_HEADER = "Accept-Language";
  private static final String ACCESS_TOKEN_PARAM = "access_token";
  private static final String ATTACHED_FILES_PARAM = "attached_files";
  private static final String ATTACHMENT_FILENAME_PREFIX = "file";
  private static final String BATCH_APP_ID_PARAM = "batch_app_id";
  private static final String BATCH_BODY_PARAM = "body";
  private static final String BATCH_ENTRY_DEPENDS_ON_PARAM = "depends_on";
  private static final String BATCH_ENTRY_NAME_PARAM = "name";
  private static final String BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM = "omit_response_on_success";
  private static final String BATCH_METHOD_PARAM = "method";
  private static final String BATCH_PARAM = "batch";
  private static final String BATCH_RELATIVE_URL_PARAM = "relative_url";
  private static final String CONTENT_ENCODING_HEADER = "Content-Encoding";
  private static final String CONTENT_TYPE_HEADER = "Content-Type";
  private static final String DEBUG_KEY = "__debug__";
  private static final String DEBUG_MESSAGES_KEY = "messages";
  private static final String DEBUG_MESSAGE_KEY = "message";
  private static final String DEBUG_MESSAGE_LINK_KEY = "link";
  private static final String DEBUG_MESSAGE_TYPE_KEY = "type";
  private static final String DEBUG_PARAM = "debug";
  private static final String DEBUG_SEVERITY_INFO = "info";
  private static final String DEBUG_SEVERITY_WARNING = "warning";
  private static final String FORMAT_JSON = "json";
  private static final String FORMAT_PARAM = "format";
  private static final String ISO_8601_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ssZ";
  public static final int MAXIMUM_BATCH_SIZE = 50;
  private static final String ME = "me";
  private static final String MIME_BOUNDARY = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f";
  private static final String MY_FRIENDS = "me/friends";
  private static final String SDK_ANDROID = "android";
  private static final String SDK_PARAM = "sdk";
  private static final String SEARCH = "search";
  public static final String TAG = GraphRequest.class.getSimpleName();
  private static final String USER_AGENT_BASE = "FBAndroidSDK";
  private static final String USER_AGENT_HEADER = "User-Agent";
  private static final String VIDEOS_SUFFIX = "/videos";
  private static String defaultBatchApplicationId;
  private static volatile String userAgent;
  private static Pattern versionPattern = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
  private AccessToken accessToken;
  private String batchEntryDependsOn;
  private String batchEntryName;
  private boolean batchEntryOmitResultOnSuccess = true;
  private Callback callback;
  private JSONObject graphObject;
  private String graphPath;
  private HttpMethod httpMethod;
  private String overriddenURL;
  private Bundle parameters;
  private boolean skipClientToken = false;
  private Object tag;
  private String version;
  
  public GraphRequest()
  {
    this(null, null, null, null, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString)
  {
    this(paramAccessToken, paramString, null, null, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString, Bundle paramBundle, HttpMethod paramHttpMethod)
  {
    this(paramAccessToken, paramString, paramBundle, paramHttpMethod, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString, Bundle paramBundle, HttpMethod paramHttpMethod, Callback paramCallback)
  {
    this(paramAccessToken, paramString, paramBundle, paramHttpMethod, paramCallback, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString1, Bundle paramBundle, HttpMethod paramHttpMethod, Callback paramCallback, String paramString2)
  {
    accessToken = paramAccessToken;
    graphPath = paramString1;
    version = paramString2;
    setCallback(paramCallback);
    setHttpMethod(paramHttpMethod);
    if (paramBundle != null) {}
    for (parameters = new Bundle(paramBundle);; parameters = new Bundle())
    {
      if (version == null) {
        version = ServerProtocol.getAPIVersion();
      }
      return;
    }
  }
  
  GraphRequest(AccessToken paramAccessToken, URL paramURL)
  {
    accessToken = paramAccessToken;
    overriddenURL = paramURL.toString();
    setHttpMethod(HttpMethod.GET);
    parameters = new Bundle();
  }
  
  private void addCommonParameters()
  {
    String str1;
    if (accessToken != null) {
      if (!parameters.containsKey("access_token"))
      {
        str1 = accessToken.getToken();
        Logger.registerAccessToken(str1);
        parameters.putString("access_token", str1);
      }
    }
    do
    {
      for (;;)
      {
        parameters.putString("sdk", "android");
        parameters.putString("format", "json");
        if (!FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_INFO)) {
          break;
        }
        parameters.putString("debug", "info");
        return;
        if ((!skipClientToken) && (!parameters.containsKey("access_token")))
        {
          str1 = FacebookSdk.getApplicationId();
          String str2 = FacebookSdk.getClientToken();
          if ((!Utility.isNullOrEmpty(str1)) && (!Utility.isNullOrEmpty(str2)))
          {
            str1 = str1 + "|" + str2;
            parameters.putString("access_token", str1);
          }
        }
      }
    } while (!FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_WARNING));
    parameters.putString("debug", "warning");
  }
  
  private String appendParametersToBaseUrl(String paramString)
  {
    Uri.Builder localBuilder = new Uri.Builder().encodedPath(paramString);
    Iterator localIterator = parameters.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = parameters.get(str);
      paramString = (String)localObject;
      if (localObject == null) {
        paramString = "";
      }
      if (isSupportedParameterType(paramString)) {
        localBuilder.appendQueryParameter(str, parameterToString(paramString).toString());
      } else if (httpMethod == HttpMethod.GET) {
        throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", new Object[] { paramString.getClass().getSimpleName() }));
      }
    }
    return localBuilder.toString();
  }
  
  private static HttpURLConnection createConnection(URL paramURL)
  {
    paramURL = (HttpURLConnection)paramURL.openConnection();
    paramURL.setRequestProperty("User-Agent", getUserAgent());
    paramURL.setRequestProperty("Accept-Language", Locale.getDefault().toString());
    paramURL.setChunkedStreamingMode(0);
    return paramURL;
  }
  
  public static GraphResponse executeAndWait(GraphRequest paramGraphRequest)
  {
    paramGraphRequest = executeBatchAndWait(new GraphRequest[] { paramGraphRequest });
    if ((paramGraphRequest == null) || (paramGraphRequest.size() != 1)) {
      throw new FacebookException("invalid state: expected a single response");
    }
    return (GraphResponse)paramGraphRequest.get(0);
  }
  
  public static List<GraphResponse> executeBatchAndWait(GraphRequestBatch paramGraphRequestBatch)
  {
    Validate.notEmptyAndContainsNoNulls(paramGraphRequestBatch, "requests");
    try
    {
      HttpURLConnection localHttpURLConnection = toHttpConnection(paramGraphRequestBatch);
      return executeConnectionAndWait(localHttpURLConnection, paramGraphRequestBatch);
    }
    catch (Exception localException)
    {
      List localList = GraphResponse.constructErrorResponses(paramGraphRequestBatch.getRequests(), null, new FacebookException(localException));
      runCallbacks(paramGraphRequestBatch, localList);
      return localList;
    }
  }
  
  public static List<GraphResponse> executeBatchAndWait(Collection<GraphRequest> paramCollection)
  {
    return executeBatchAndWait(new GraphRequestBatch(paramCollection));
  }
  
  public static List<GraphResponse> executeBatchAndWait(GraphRequest... paramVarArgs)
  {
    Validate.notNull(paramVarArgs, "requests");
    return executeBatchAndWait(Arrays.asList(paramVarArgs));
  }
  
  public static GraphRequestAsyncTask executeBatchAsync(GraphRequestBatch paramGraphRequestBatch)
  {
    Validate.notEmptyAndContainsNoNulls(paramGraphRequestBatch, "requests");
    paramGraphRequestBatch = new GraphRequestAsyncTask(paramGraphRequestBatch);
    paramGraphRequestBatch.executeOnSettingsExecutor();
    return paramGraphRequestBatch;
  }
  
  public static GraphRequestAsyncTask executeBatchAsync(Collection<GraphRequest> paramCollection)
  {
    return executeBatchAsync(new GraphRequestBatch(paramCollection));
  }
  
  public static GraphRequestAsyncTask executeBatchAsync(GraphRequest... paramVarArgs)
  {
    Validate.notNull(paramVarArgs, "requests");
    return executeBatchAsync(Arrays.asList(paramVarArgs));
  }
  
  public static List<GraphResponse> executeConnectionAndWait(HttpURLConnection paramHttpURLConnection, GraphRequestBatch paramGraphRequestBatch)
  {
    List localList = GraphResponse.fromHttpConnection(paramHttpURLConnection, paramGraphRequestBatch);
    Utility.disconnectQuietly(paramHttpURLConnection);
    int i = paramGraphRequestBatch.size();
    if (i != localList.size()) {
      throw new FacebookException(String.format(Locale.US, "Received %d responses while expecting %d", new Object[] { Integer.valueOf(localList.size()), Integer.valueOf(i) }));
    }
    runCallbacks(paramGraphRequestBatch, localList);
    AccessTokenManager.getInstance().extendAccessTokenIfNeeded();
    return localList;
  }
  
  public static List<GraphResponse> executeConnectionAndWait(HttpURLConnection paramHttpURLConnection, Collection<GraphRequest> paramCollection)
  {
    return executeConnectionAndWait(paramHttpURLConnection, new GraphRequestBatch(paramCollection));
  }
  
  public static GraphRequestAsyncTask executeConnectionAsync(Handler paramHandler, HttpURLConnection paramHttpURLConnection, GraphRequestBatch paramGraphRequestBatch)
  {
    Validate.notNull(paramHttpURLConnection, "connection");
    paramHttpURLConnection = new GraphRequestAsyncTask(paramHttpURLConnection, paramGraphRequestBatch);
    paramGraphRequestBatch.setCallbackHandler(paramHandler);
    paramHttpURLConnection.executeOnSettingsExecutor();
    return paramHttpURLConnection;
  }
  
  public static GraphRequestAsyncTask executeConnectionAsync(HttpURLConnection paramHttpURLConnection, GraphRequestBatch paramGraphRequestBatch)
  {
    return executeConnectionAsync(null, paramHttpURLConnection, paramGraphRequestBatch);
  }
  
  private static String getBatchAppId(GraphRequestBatch paramGraphRequestBatch)
  {
    if (!Utility.isNullOrEmpty(paramGraphRequestBatch.getBatchApplicationId())) {
      return paramGraphRequestBatch.getBatchApplicationId();
    }
    paramGraphRequestBatch = paramGraphRequestBatch.iterator();
    while (paramGraphRequestBatch.hasNext())
    {
      Object localObject = nextaccessToken;
      if (localObject != null)
      {
        localObject = ((AccessToken)localObject).getApplicationId();
        if (localObject != null) {
          return (String)localObject;
        }
      }
    }
    if (!Utility.isNullOrEmpty(defaultBatchApplicationId)) {
      return defaultBatchApplicationId;
    }
    return FacebookSdk.getApplicationId();
  }
  
  public static final String getDefaultBatchApplicationId()
  {
    return defaultBatchApplicationId;
  }
  
  private String getGraphPathWithVersion()
  {
    if (versionPattern.matcher(graphPath).matches()) {
      return graphPath;
    }
    return String.format("%s/%s", new Object[] { version, graphPath });
  }
  
  private static String getMimeContentType()
  {
    return String.format("multipart/form-data; boundary=%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
  }
  
  private static String getUserAgent()
  {
    if (userAgent == null) {
      userAgent = String.format("%s.%s", new Object[] { "FBAndroidSDK", "4.2.0" });
    }
    return userAgent;
  }
  
  private static boolean hasOnProgressCallbacks(GraphRequestBatch paramGraphRequestBatch)
  {
    Iterator localIterator = paramGraphRequestBatch.getCallbacks().iterator();
    while (localIterator.hasNext()) {
      if (((GraphRequestBatch.Callback)localIterator.next() instanceof GraphRequestBatch.OnProgressCallback)) {
        return true;
      }
    }
    paramGraphRequestBatch = paramGraphRequestBatch.iterator();
    while (paramGraphRequestBatch.hasNext()) {
      if ((((GraphRequest)paramGraphRequestBatch.next()).getCallback() instanceof OnProgressCallback)) {
        return true;
      }
    }
    return false;
  }
  
  private static boolean isGzipCompressible(GraphRequestBatch paramGraphRequestBatch)
  {
    GraphRequest localGraphRequest;
    String str;
    do
    {
      paramGraphRequestBatch = paramGraphRequestBatch.iterator();
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        if (!paramGraphRequestBatch.hasNext()) {
          break;
        }
        localGraphRequest = (GraphRequest)paramGraphRequestBatch.next();
        localIterator = parameters.keySet().iterator();
      }
      str = (String)localIterator.next();
    } while (!isSupportedAttachmentType(parameters.get(str)));
    return false;
    return true;
  }
  
  private static boolean isMeRequest(String paramString)
  {
    Matcher localMatcher = versionPattern.matcher(paramString);
    if (localMatcher.matches()) {
      paramString = localMatcher.group(1);
    }
    return (paramString.startsWith("me/")) || (paramString.startsWith("/me/"));
  }
  
  private static boolean isSupportedAttachmentType(Object paramObject)
  {
    return ((paramObject instanceof Bitmap)) || ((paramObject instanceof byte[])) || ((paramObject instanceof Uri)) || ((paramObject instanceof ParcelFileDescriptor)) || ((paramObject instanceof ParcelableResourceWithMimeType));
  }
  
  private static boolean isSupportedParameterType(Object paramObject)
  {
    return ((paramObject instanceof String)) || ((paramObject instanceof Boolean)) || ((paramObject instanceof Number)) || ((paramObject instanceof Date));
  }
  
  public static GraphRequest newCustomAudienceThirdPartyIdRequest(AccessToken paramAccessToken, Context paramContext, Callback paramCallback)
  {
    return newCustomAudienceThirdPartyIdRequest(paramAccessToken, paramContext, null, paramCallback);
  }
  
  public static GraphRequest newCustomAudienceThirdPartyIdRequest(AccessToken paramAccessToken, Context paramContext, String paramString, Callback paramCallback)
  {
    if ((paramString == null) && (paramAccessToken != null)) {
      paramString = paramAccessToken.getApplicationId();
    }
    for (;;)
    {
      String str = paramString;
      if (paramString == null) {
        str = Utility.getMetadataApplicationId(paramContext);
      }
      if (str == null) {
        throw new FacebookException("Facebook App ID cannot be determined");
      }
      str = str + "/custom_audience_third_party_id";
      AttributionIdentifiers localAttributionIdentifiers = AttributionIdentifiers.getAttributionIdentifiers(paramContext);
      Bundle localBundle = new Bundle();
      if (paramAccessToken == null) {
        if (localAttributionIdentifiers.getAttributionId() == null) {
          break label158;
        }
      }
      label158:
      for (paramString = localAttributionIdentifiers.getAttributionId();; paramString = localAttributionIdentifiers.getAndroidAdvertiserId())
      {
        if (localAttributionIdentifiers.getAttributionId() != null) {
          localBundle.putString("udid", paramString);
        }
        if ((FacebookSdk.getLimitEventAndDataUsage(paramContext)) || (localAttributionIdentifiers.isTrackingLimited())) {
          localBundle.putString("limit_event_usage", "1");
        }
        return new GraphRequest(paramAccessToken, str, localBundle, HttpMethod.GET, paramCallback);
      }
    }
  }
  
  public static GraphRequest newDeleteObjectRequest(AccessToken paramAccessToken, String paramString, Callback paramCallback)
  {
    return new GraphRequest(paramAccessToken, paramString, null, HttpMethod.DELETE, paramCallback);
  }
  
  public static GraphRequest newGraphPathRequest(AccessToken paramAccessToken, String paramString, Callback paramCallback)
  {
    return new GraphRequest(paramAccessToken, paramString, null, null, paramCallback);
  }
  
  public static GraphRequest newMeRequest(AccessToken paramAccessToken, GraphJSONObjectCallback paramGraphJSONObjectCallback)
  {
    new GraphRequest(paramAccessToken, "me", null, null, new Callback()
    {
      public final void onCompleted(GraphResponse paramAnonymousGraphResponse)
      {
        if (val$callback != null) {
          val$callback.onCompleted(paramAnonymousGraphResponse.getJSONObject(), paramAnonymousGraphResponse);
        }
      }
    });
  }
  
  public static GraphRequest newMyFriendsRequest(AccessToken paramAccessToken, GraphJSONArrayCallback paramGraphJSONArrayCallback)
  {
    new GraphRequest(paramAccessToken, "me/friends", null, null, new Callback()
    {
      public final void onCompleted(GraphResponse paramAnonymousGraphResponse)
      {
        if (val$callback != null)
        {
          localObject = paramAnonymousGraphResponse.getJSONObject();
          if (localObject == null) {
            break label35;
          }
        }
        label35:
        for (Object localObject = ((JSONObject)localObject).optJSONArray("data");; localObject = null)
        {
          val$callback.onCompleted((JSONArray)localObject, paramAnonymousGraphResponse);
          return;
        }
      }
    });
  }
  
  public static GraphRequest newPlacesSearchRequest(AccessToken paramAccessToken, Location paramLocation, int paramInt1, int paramInt2, String paramString, GraphJSONArrayCallback paramGraphJSONArrayCallback)
  {
    if ((paramLocation == null) && (Utility.isNullOrEmpty(paramString))) {
      throw new FacebookException("Either location or searchText must be specified.");
    }
    Bundle localBundle = new Bundle(5);
    localBundle.putString("type", "place");
    localBundle.putInt("limit", paramInt2);
    if (paramLocation != null)
    {
      localBundle.putString("center", String.format(Locale.US, "%f,%f", new Object[] { Double.valueOf(paramLocation.getLatitude()), Double.valueOf(paramLocation.getLongitude()) }));
      localBundle.putInt("distance", paramInt1);
    }
    if (!Utility.isNullOrEmpty(paramString)) {
      localBundle.putString("q", paramString);
    }
    paramLocation = new Callback()
    {
      public final void onCompleted(GraphResponse paramAnonymousGraphResponse)
      {
        if (val$callback != null)
        {
          localObject = paramAnonymousGraphResponse.getJSONObject();
          if (localObject == null) {
            break label35;
          }
        }
        label35:
        for (Object localObject = ((JSONObject)localObject).optJSONArray("data");; localObject = null)
        {
          val$callback.onCompleted((JSONArray)localObject, paramAnonymousGraphResponse);
          return;
        }
      }
    };
    return new GraphRequest(paramAccessToken, "search", localBundle, HttpMethod.GET, paramLocation);
  }
  
  public static GraphRequest newPostRequest(AccessToken paramAccessToken, String paramString, JSONObject paramJSONObject, Callback paramCallback)
  {
    paramAccessToken = new GraphRequest(paramAccessToken, paramString, null, HttpMethod.POST, paramCallback);
    paramAccessToken.setGraphObject(paramJSONObject);
    return paramAccessToken;
  }
  
  private static String parameterToString(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if (((paramObject instanceof Boolean)) || ((paramObject instanceof Number))) {
      return paramObject.toString();
    }
    if ((paramObject instanceof Date)) {
      return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(paramObject);
    }
    throw new IllegalArgumentException("Unsupported parameter type.");
  }
  
  private static void processGraphObject(JSONObject paramJSONObject, String paramString, KeyValueSerializer paramKeyValueSerializer)
  {
    int i;
    if (isMeRequest(paramString))
    {
      i = paramString.indexOf(":");
      int j = paramString.indexOf("?");
      if ((i > 3) && ((j == -1) || (i < j))) {
        i = 1;
      }
    }
    for (;;)
    {
      paramString = paramJSONObject.keys();
      label48:
      if (paramString.hasNext())
      {
        String str = (String)paramString.next();
        Object localObject = paramJSONObject.opt(str);
        if ((i != 0) && (str.equalsIgnoreCase("image"))) {}
        for (boolean bool = true;; bool = false)
        {
          processGraphObjectProperty(str, localObject, paramKeyValueSerializer, bool);
          break label48;
          i = 0;
          break;
        }
      }
      return;
      i = 0;
    }
  }
  
  private static void processGraphObjectProperty(String paramString, Object paramObject, KeyValueSerializer paramKeyValueSerializer, boolean paramBoolean)
  {
    Object localObject = paramObject.getClass();
    if (JSONObject.class.isAssignableFrom((Class)localObject))
    {
      paramObject = (JSONObject)paramObject;
      if (paramBoolean)
      {
        localObject = ((JSONObject)paramObject).keys();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          processGraphObjectProperty(String.format("%s[%s]", new Object[] { paramString, str }), ((JSONObject)paramObject).opt(str), paramKeyValueSerializer, paramBoolean);
        }
      }
      if (((JSONObject)paramObject).has("id")) {
        processGraphObjectProperty(paramString, ((JSONObject)paramObject).optString("id"), paramKeyValueSerializer, paramBoolean);
      }
    }
    label230:
    do
    {
      for (;;)
      {
        return;
        if (((JSONObject)paramObject).has("url"))
        {
          processGraphObjectProperty(paramString, ((JSONObject)paramObject).optString("url"), paramKeyValueSerializer, paramBoolean);
          return;
        }
        if (((JSONObject)paramObject).has("fbsdk:create_object"))
        {
          paramObject = ((JSONObject)paramObject).toString();
          break;
          if (!JSONArray.class.isAssignableFrom((Class)localObject)) {
            break label230;
          }
          paramObject = (JSONArray)paramObject;
          int j = ((JSONArray)paramObject).length();
          int i = 0;
          while (i < j)
          {
            processGraphObjectProperty(String.format(Locale.ROOT, "%s[%d]", new Object[] { paramString, Integer.valueOf(i) }), ((JSONArray)paramObject).opt(i), paramKeyValueSerializer, paramBoolean);
            i += 1;
          }
        }
      }
      if ((String.class.isAssignableFrom((Class)localObject)) || (Number.class.isAssignableFrom((Class)localObject)) || (Boolean.class.isAssignableFrom((Class)localObject)))
      {
        paramKeyValueSerializer.writeString(paramString, paramObject.toString());
        return;
      }
    } while (!Date.class.isAssignableFrom((Class)localObject));
    paramObject = (Date)paramObject;
    paramKeyValueSerializer.writeString(paramString, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date)paramObject));
  }
  
  private static void processRequest(GraphRequestBatch paramGraphRequestBatch, Logger paramLogger, int paramInt, URL paramURL, OutputStream paramOutputStream, boolean paramBoolean)
  {
    paramOutputStream = new Serializer(paramOutputStream, paramLogger, paramBoolean);
    if (paramInt == 1)
    {
      paramGraphRequestBatch = paramGraphRequestBatch.get(0);
      HashMap localHashMap = new HashMap();
      Iterator localIterator = parameters.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = parameters.get(str);
        if (isSupportedAttachmentType(localObject)) {
          localHashMap.put(str, new Attachment(paramGraphRequestBatch, localObject));
        }
      }
      if (paramLogger != null) {
        paramLogger.append("  Parameters:\n");
      }
      serializeParameters(parameters, paramOutputStream, paramGraphRequestBatch);
      if (paramLogger != null) {
        paramLogger.append("  Attachments:\n");
      }
      serializeAttachments(localHashMap, paramOutputStream);
      if (graphObject != null) {
        processGraphObject(graphObject, paramURL.getPath(), paramOutputStream);
      }
      return;
    }
    paramURL = getBatchAppId(paramGraphRequestBatch);
    if (Utility.isNullOrEmpty(paramURL)) {
      throw new FacebookException("App ID was not specified at the request or Settings.");
    }
    paramOutputStream.writeString("batch_app_id", paramURL);
    paramURL = new HashMap();
    serializeRequestsAsJSON(paramOutputStream, paramGraphRequestBatch, paramURL);
    if (paramLogger != null) {
      paramLogger.append("  Attachments:\n");
    }
    serializeAttachments(paramURL, paramOutputStream);
  }
  
  static void runCallbacks(final GraphRequestBatch paramGraphRequestBatch, List<GraphResponse> paramList)
  {
    int j = paramGraphRequestBatch.size();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < j)
    {
      GraphRequest localGraphRequest = paramGraphRequestBatch.get(i);
      if (callback != null) {
        localArrayList.add(new Pair(callback, paramList.get(i)));
      }
      i += 1;
    }
    if (localArrayList.size() > 0)
    {
      paramList = new Runnable()
      {
        public final void run()
        {
          Iterator localIterator = val$callbacks.iterator();
          while (localIterator.hasNext())
          {
            Pair localPair = (Pair)localIterator.next();
            ((GraphRequest.Callback)first).onCompleted((GraphResponse)second);
          }
          localIterator = paramGraphRequestBatch.getCallbacks().iterator();
          while (localIterator.hasNext()) {
            ((GraphRequestBatch.Callback)localIterator.next()).onBatchCompleted(paramGraphRequestBatch);
          }
        }
      };
      paramGraphRequestBatch = paramGraphRequestBatch.getCallbackHandler();
      if (paramGraphRequestBatch == null) {
        paramList.run();
      }
    }
    else
    {
      return;
    }
    paramGraphRequestBatch.post(paramList);
  }
  
  private static void serializeAttachments(Map<String, Attachment> paramMap, Serializer paramSerializer)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Attachment localAttachment = (Attachment)paramMap.get(str);
      if (isSupportedAttachmentType(localAttachment.getValue())) {
        paramSerializer.writeObject(str, localAttachment.getValue(), localAttachment.getRequest());
      }
    }
  }
  
  private static void serializeParameters(Bundle paramBundle, Serializer paramSerializer, GraphRequest paramGraphRequest)
  {
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if (isSupportedParameterType(localObject)) {
        paramSerializer.writeObject(str, localObject, paramGraphRequest);
      }
    }
  }
  
  private static void serializeRequestsAsJSON(Serializer paramSerializer, Collection<GraphRequest> paramCollection, Map<String, Attachment> paramMap)
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext()) {
      ((GraphRequest)localIterator.next()).serializeToBatch(localJSONArray, paramMap);
    }
    paramSerializer.writeRequestsAsJson("batch", localJSONArray, paramCollection);
  }
  
  private void serializeToBatch(JSONArray paramJSONArray, final Map<String, Attachment> paramMap)
  {
    JSONObject localJSONObject = new JSONObject();
    if (batchEntryName != null)
    {
      localJSONObject.put("name", batchEntryName);
      localJSONObject.put("omit_response_on_success", batchEntryOmitResultOnSuccess);
    }
    if (batchEntryDependsOn != null) {
      localJSONObject.put("depends_on", batchEntryDependsOn);
    }
    String str1 = getUrlForBatchedRequest();
    localJSONObject.put("relative_url", str1);
    localJSONObject.put("method", httpMethod);
    if (accessToken != null) {
      Logger.registerAccessToken(accessToken.getToken());
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = parameters.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      localObject = parameters.get((String)localObject);
      if (isSupportedAttachmentType(localObject))
      {
        String str2 = String.format(Locale.ROOT, "%s%d", new Object[] { "file", Integer.valueOf(paramMap.size()) });
        localArrayList.add(str2);
        paramMap.put(str2, new Attachment(this, localObject));
      }
    }
    if (!localArrayList.isEmpty()) {
      localJSONObject.put("attached_files", TextUtils.join(",", localArrayList));
    }
    if (graphObject != null)
    {
      paramMap = new ArrayList();
      processGraphObject(graphObject, str1, new KeyValueSerializer()
      {
        public void writeString(String paramAnonymousString1, String paramAnonymousString2)
        {
          paramMap.add(String.format(Locale.US, "%s=%s", new Object[] { paramAnonymousString1, URLEncoder.encode(paramAnonymousString2, "UTF-8") }));
        }
      });
      localJSONObject.put("body", TextUtils.join("&", paramMap));
    }
    paramJSONArray.put(localJSONObject);
  }
  
  /* Error */
  static final void serializeToUrlConnection(GraphRequestBatch paramGraphRequestBatch, HttpURLConnection paramHttpURLConnection)
  {
    // Byte code:
    //   0: new 271	com/facebook/internal/Logger
    //   3: dup
    //   4: getstatic 949	com/facebook/LoggingBehavior:REQUESTS	Lcom/facebook/LoggingBehavior;
    //   7: ldc_w 951
    //   10: invokespecial 954	com/facebook/internal/Logger:<init>	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V
    //   13: astore 7
    //   15: aload_0
    //   16: invokevirtual 508	com/facebook/GraphRequestBatch:size	()I
    //   19: istore_3
    //   20: aload_0
    //   21: invokestatic 956	com/facebook/GraphRequest:isGzipCompressible	(Lcom/facebook/GraphRequestBatch;)Z
    //   24: istore 4
    //   26: iload_3
    //   27: iconst_1
    //   28: if_icmpne +138 -> 166
    //   31: aload_0
    //   32: iconst_0
    //   33: invokevirtual 803	com/facebook/GraphRequestBatch:get	(I)Lcom/facebook/GraphRequest;
    //   36: getfield 359	com/facebook/GraphRequest:httpMethod	Lcom/facebook/HttpMethod;
    //   39: astore 5
    //   41: aload_1
    //   42: aload 5
    //   44: invokevirtual 958	com/facebook/HttpMethod:name	()Ljava/lang/String;
    //   47: invokevirtual 961	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   50: aload_1
    //   51: iload 4
    //   53: invokestatic 965	com/facebook/GraphRequest:setConnectionContentType	(Ljava/net/HttpURLConnection;Z)V
    //   56: aload_1
    //   57: invokevirtual 969	java/net/HttpURLConnection:getURL	()Ljava/net/URL;
    //   60: astore 8
    //   62: aload 7
    //   64: ldc_w 971
    //   67: invokevirtual 819	com/facebook/internal/Logger:append	(Ljava/lang/String;)V
    //   70: aload 7
    //   72: ldc_w 973
    //   75: aload_0
    //   76: invokevirtual 976	com/facebook/GraphRequestBatch:getId	()Ljava/lang/String;
    //   79: invokevirtual 980	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   82: aload 7
    //   84: ldc_w 982
    //   87: aload 8
    //   89: invokevirtual 980	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   92: aload 7
    //   94: ldc_w 984
    //   97: aload_1
    //   98: invokevirtual 987	java/net/HttpURLConnection:getRequestMethod	()Ljava/lang/String;
    //   101: invokevirtual 980	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   104: aload 7
    //   106: ldc -110
    //   108: aload_1
    //   109: ldc -110
    //   111: invokevirtual 990	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   114: invokevirtual 980	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   117: aload 7
    //   119: ldc 85
    //   121: aload_1
    //   122: ldc 85
    //   124: invokevirtual 990	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   127: invokevirtual 980	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   130: aload_1
    //   131: aload_0
    //   132: invokevirtual 993	com/facebook/GraphRequestBatch:getTimeout	()I
    //   135: invokevirtual 996	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   138: aload_1
    //   139: aload_0
    //   140: invokevirtual 993	com/facebook/GraphRequestBatch:getTimeout	()I
    //   143: invokevirtual 999	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   146: aload 5
    //   148: getstatic 716	com/facebook/HttpMethod:POST	Lcom/facebook/HttpMethod;
    //   151: if_acmpne +23 -> 174
    //   154: iconst_1
    //   155: istore_2
    //   156: iload_2
    //   157: ifne +22 -> 179
    //   160: aload 7
    //   162: invokevirtual 1002	com/facebook/internal/Logger:log	()V
    //   165: return
    //   166: getstatic 716	com/facebook/HttpMethod:POST	Lcom/facebook/HttpMethod;
    //   169: astore 5
    //   171: goto -130 -> 41
    //   174: iconst_0
    //   175: istore_2
    //   176: goto -20 -> 156
    //   179: aload_1
    //   180: iconst_1
    //   181: invokevirtual 1006	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   184: new 1008	java/io/BufferedOutputStream
    //   187: dup
    //   188: aload_1
    //   189: invokevirtual 1012	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   192: invokespecial 1015	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   195: astore 6
    //   197: aload 6
    //   199: astore_1
    //   200: iload 4
    //   202: ifeq +17 -> 219
    //   205: aload 6
    //   207: astore 5
    //   209: new 1017	java/util/zip/GZIPOutputStream
    //   212: dup
    //   213: aload 6
    //   215: invokespecial 1018	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   218: astore_1
    //   219: aload_1
    //   220: astore 5
    //   222: aload_0
    //   223: invokestatic 1020	com/facebook/GraphRequest:hasOnProgressCallbacks	(Lcom/facebook/GraphRequestBatch;)Z
    //   226: ifeq +112 -> 338
    //   229: aload_1
    //   230: astore 5
    //   232: new 1022	com/facebook/ProgressNoopOutputStream
    //   235: dup
    //   236: aload_0
    //   237: invokevirtual 866	com/facebook/GraphRequestBatch:getCallbackHandler	()Landroid/os/Handler;
    //   240: invokespecial 1024	com/facebook/ProgressNoopOutputStream:<init>	(Landroid/os/Handler;)V
    //   243: astore 6
    //   245: aload_1
    //   246: astore 5
    //   248: aload_0
    //   249: aconst_null
    //   250: iload_3
    //   251: aload 8
    //   253: aload 6
    //   255: iload 4
    //   257: invokestatic 1026	com/facebook/GraphRequest:processRequest	(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    //   260: aload_1
    //   261: astore 5
    //   263: aload 6
    //   265: invokevirtual 1029	com/facebook/ProgressNoopOutputStream:getMaxProgress	()I
    //   268: istore_2
    //   269: aload_1
    //   270: astore 5
    //   272: new 1031	com/facebook/ProgressOutputStream
    //   275: dup
    //   276: aload_1
    //   277: aload_0
    //   278: aload 6
    //   280: invokevirtual 1035	com/facebook/ProgressNoopOutputStream:getProgressMap	()Ljava/util/Map;
    //   283: iload_2
    //   284: i2l
    //   285: invokespecial 1038	com/facebook/ProgressOutputStream:<init>	(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V
    //   288: astore_1
    //   289: aload_0
    //   290: aload 7
    //   292: iload_3
    //   293: aload 8
    //   295: aload_1
    //   296: iload 4
    //   298: invokestatic 1026	com/facebook/GraphRequest:processRequest	(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    //   301: aload_1
    //   302: invokevirtual 1043	java/io/OutputStream:close	()V
    //   305: aload 7
    //   307: invokevirtual 1002	com/facebook/internal/Logger:log	()V
    //   310: return
    //   311: astore_0
    //   312: aconst_null
    //   313: astore 5
    //   315: aload 5
    //   317: ifnull +8 -> 325
    //   320: aload 5
    //   322: invokevirtual 1043	java/io/OutputStream:close	()V
    //   325: aload_0
    //   326: athrow
    //   327: astore_0
    //   328: goto -13 -> 315
    //   331: astore_0
    //   332: aload_1
    //   333: astore 5
    //   335: goto -20 -> 315
    //   338: goto -49 -> 289
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	341	0	paramGraphRequestBatch	GraphRequestBatch
    //   0	341	1	paramHttpURLConnection	HttpURLConnection
    //   155	129	2	i	int
    //   19	274	3	j	int
    //   24	273	4	bool	boolean
    //   39	295	5	localObject1	Object
    //   195	84	6	localObject2	Object
    //   13	293	7	localLogger	Logger
    //   60	234	8	localURL	URL
    // Exception table:
    //   from	to	target	type
    //   184	197	311	finally
    //   209	219	327	finally
    //   222	229	327	finally
    //   232	245	327	finally
    //   248	260	327	finally
    //   263	269	327	finally
    //   272	289	327	finally
    //   289	301	331	finally
  }
  
  private static void setConnectionContentType(HttpURLConnection paramHttpURLConnection, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
      paramHttpURLConnection.setRequestProperty("Content-Encoding", "gzip");
      return;
    }
    paramHttpURLConnection.setRequestProperty("Content-Type", getMimeContentType());
  }
  
  public static final void setDefaultBatchApplicationId(String paramString)
  {
    defaultBatchApplicationId = paramString;
  }
  
  public static HttpURLConnection toHttpConnection(GraphRequestBatch paramGraphRequestBatch)
  {
    for (;;)
    {
      try
      {
        if (paramGraphRequestBatch.size() == 1) {
          localObject = new URL(paramGraphRequestBatch.get(0).getUrlForSingleRequest());
        }
      }
      catch (MalformedURLException paramGraphRequestBatch)
      {
        Object localObject;
        throw new FacebookException("could not construct URL for request", paramGraphRequestBatch);
      }
      try
      {
        localObject = createConnection((URL)localObject);
        serializeToUrlConnection(paramGraphRequestBatch, (HttpURLConnection)localObject);
        return (HttpURLConnection)localObject;
      }
      catch (IOException paramGraphRequestBatch)
      {
        throw new FacebookException("could not construct request body", paramGraphRequestBatch);
      }
      catch (JSONException paramGraphRequestBatch)
      {
        throw new FacebookException("could not construct request body", paramGraphRequestBatch);
      }
      localObject = new URL(ServerProtocol.getGraphUrlBase());
    }
  }
  
  public static HttpURLConnection toHttpConnection(Collection<GraphRequest> paramCollection)
  {
    Validate.notEmptyAndContainsNoNulls(paramCollection, "requests");
    return toHttpConnection(new GraphRequestBatch(paramCollection));
  }
  
  public static HttpURLConnection toHttpConnection(GraphRequest... paramVarArgs)
  {
    return toHttpConnection(Arrays.asList(paramVarArgs));
  }
  
  public final GraphResponse executeAndWait()
  {
    return executeAndWait(this);
  }
  
  public final GraphRequestAsyncTask executeAsync()
  {
    return executeBatchAsync(new GraphRequest[] { this });
  }
  
  public final AccessToken getAccessToken()
  {
    return accessToken;
  }
  
  public final String getBatchEntryDependsOn()
  {
    return batchEntryDependsOn;
  }
  
  public final String getBatchEntryName()
  {
    return batchEntryName;
  }
  
  public final boolean getBatchEntryOmitResultOnSuccess()
  {
    return batchEntryOmitResultOnSuccess;
  }
  
  public final Callback getCallback()
  {
    return callback;
  }
  
  public final JSONObject getGraphObject()
  {
    return graphObject;
  }
  
  public final String getGraphPath()
  {
    return graphPath;
  }
  
  public final HttpMethod getHttpMethod()
  {
    return httpMethod;
  }
  
  public final Bundle getParameters()
  {
    return parameters;
  }
  
  public final Object getTag()
  {
    return tag;
  }
  
  final String getUrlForBatchedRequest()
  {
    if (overriddenURL != null) {
      throw new FacebookException("Can't override URL for a batch request");
    }
    String str = getGraphPathWithVersion();
    addCommonParameters();
    return appendParametersToBaseUrl(str);
  }
  
  final String getUrlForSingleRequest()
  {
    if (overriddenURL != null) {
      return overriddenURL.toString();
    }
    if ((getHttpMethod() == HttpMethod.POST) && (graphPath != null) && (graphPath.endsWith("/videos"))) {}
    for (String str = ServerProtocol.getGraphVideoUrlBase();; str = ServerProtocol.getGraphUrlBase())
    {
      str = String.format("%s/%s", new Object[] { str, getGraphPathWithVersion() });
      addCommonParameters();
      return appendParametersToBaseUrl(str);
    }
  }
  
  public final String getVersion()
  {
    return version;
  }
  
  public final void setAccessToken(AccessToken paramAccessToken)
  {
    accessToken = paramAccessToken;
  }
  
  public final void setBatchEntryDependsOn(String paramString)
  {
    batchEntryDependsOn = paramString;
  }
  
  public final void setBatchEntryName(String paramString)
  {
    batchEntryName = paramString;
  }
  
  public final void setBatchEntryOmitResultOnSuccess(boolean paramBoolean)
  {
    batchEntryOmitResultOnSuccess = paramBoolean;
  }
  
  public final void setCallback(final Callback paramCallback)
  {
    if ((FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_INFO)) || (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_WARNING)))
    {
      callback = new Callback()
      {
        public void onCompleted(GraphResponse paramAnonymousGraphResponse)
        {
          Object localObject1 = paramAnonymousGraphResponse.getJSONObject();
          JSONArray localJSONArray;
          label28:
          int i;
          label35:
          label65:
          Object localObject2;
          if (localObject1 != null)
          {
            localObject1 = ((JSONObject)localObject1).optJSONObject("__debug__");
            if (localObject1 == null) {
              break label181;
            }
            localJSONArray = ((JSONObject)localObject1).optJSONArray("messages");
            if (localJSONArray == null) {
              break label204;
            }
            i = 0;
            if (i >= localJSONArray.length()) {
              break label204;
            }
            localObject3 = localJSONArray.optJSONObject(i);
            if (localObject3 == null) {
              break label187;
            }
            localObject1 = ((JSONObject)localObject3).optString("message");
            if (localObject3 == null) {
              break label192;
            }
            localObject2 = ((JSONObject)localObject3).optString("type");
            label79:
            if (localObject3 == null) {
              break label198;
            }
          }
          label181:
          label187:
          label192:
          label198:
          for (Object localObject3 = ((JSONObject)localObject3).optString("link");; localObject3 = null)
          {
            if ((localObject1 != null) && (localObject2 != null))
            {
              LoggingBehavior localLoggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_INFO;
              if (((String)localObject2).equals("warning")) {
                localLoggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_WARNING;
              }
              localObject2 = localObject1;
              if (!Utility.isNullOrEmpty((String)localObject3)) {
                localObject2 = (String)localObject1 + " Link: " + (String)localObject3;
              }
              Logger.log(localLoggingBehavior, GraphRequest.TAG, (String)localObject2);
            }
            i += 1;
            break label35;
            localObject1 = null;
            break;
            localJSONArray = null;
            break label28;
            localObject1 = null;
            break label65;
            localObject2 = null;
            break label79;
          }
          label204:
          if (paramCallback != null) {
            paramCallback.onCompleted(paramAnonymousGraphResponse);
          }
        }
      };
      return;
    }
    callback = paramCallback;
  }
  
  public final void setGraphObject(JSONObject paramJSONObject)
  {
    graphObject = paramJSONObject;
  }
  
  public final void setGraphPath(String paramString)
  {
    graphPath = paramString;
  }
  
  public final void setHttpMethod(HttpMethod paramHttpMethod)
  {
    if ((overriddenURL != null) && (paramHttpMethod != HttpMethod.GET)) {
      throw new FacebookException("Can't change HTTP method on request with overridden URL.");
    }
    if (paramHttpMethod != null) {}
    for (;;)
    {
      httpMethod = paramHttpMethod;
      return;
      paramHttpMethod = HttpMethod.GET;
    }
  }
  
  public final void setParameters(Bundle paramBundle)
  {
    parameters = paramBundle;
  }
  
  public final void setSkipClientToken(boolean paramBoolean)
  {
    skipClientToken = paramBoolean;
  }
  
  public final void setTag(Object paramObject)
  {
    tag = paramObject;
  }
  
  public final void setVersion(String paramString)
  {
    version = paramString;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("{Request:  accessToken: ");
    if (accessToken == null) {}
    for (Object localObject = "null";; localObject = accessToken) {
      return localObject + ", graphPath: " + graphPath + ", graphObject: " + graphObject + ", httpMethod: " + httpMethod + ", parameters: " + parameters + "}";
    }
  }
  
  private static class Attachment
  {
    private final GraphRequest request;
    private final Object value;
    
    public Attachment(GraphRequest paramGraphRequest, Object paramObject)
    {
      request = paramGraphRequest;
      value = paramObject;
    }
    
    public GraphRequest getRequest()
    {
      return request;
    }
    
    public Object getValue()
    {
      return value;
    }
  }
  
  public static abstract interface Callback
  {
    public abstract void onCompleted(GraphResponse paramGraphResponse);
  }
  
  public static abstract interface GraphJSONArrayCallback
  {
    public abstract void onCompleted(JSONArray paramJSONArray, GraphResponse paramGraphResponse);
  }
  
  public static abstract interface GraphJSONObjectCallback
  {
    public abstract void onCompleted(JSONObject paramJSONObject, GraphResponse paramGraphResponse);
  }
  
  private static abstract interface KeyValueSerializer
  {
    public abstract void writeString(String paramString1, String paramString2);
  }
  
  public static abstract interface OnProgressCallback
    extends GraphRequest.Callback
  {
    public abstract void onProgress(long paramLong1, long paramLong2);
  }
  
  public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable>
    implements Parcelable
  {
    public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new Parcelable.Creator()
    {
      public final GraphRequest.ParcelableResourceWithMimeType createFromParcel(Parcel paramAnonymousParcel)
      {
        return new GraphRequest.ParcelableResourceWithMimeType(paramAnonymousParcel, null);
      }
      
      public final GraphRequest.ParcelableResourceWithMimeType[] newArray(int paramAnonymousInt)
      {
        return new GraphRequest.ParcelableResourceWithMimeType[paramAnonymousInt];
      }
    };
    private final String mimeType;
    private final RESOURCE resource;
    
    private ParcelableResourceWithMimeType(Parcel paramParcel)
    {
      mimeType = paramParcel.readString();
      resource = paramParcel.readParcelable(FacebookSdk.getApplicationContext().getClassLoader());
    }
    
    public ParcelableResourceWithMimeType(RESOURCE paramRESOURCE, String paramString)
    {
      mimeType = paramString;
      resource = paramRESOURCE;
    }
    
    public int describeContents()
    {
      return 1;
    }
    
    public String getMimeType()
    {
      return mimeType;
    }
    
    public RESOURCE getResource()
    {
      return resource;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(mimeType);
      paramParcel.writeParcelable(resource, paramInt);
    }
  }
  
  private static class Serializer
    implements GraphRequest.KeyValueSerializer
  {
    private boolean firstWrite = true;
    private final Logger logger;
    private final OutputStream outputStream;
    private boolean useUrlEncode = false;
    
    public Serializer(OutputStream paramOutputStream, Logger paramLogger, boolean paramBoolean)
    {
      outputStream = paramOutputStream;
      logger = paramLogger;
      useUrlEncode = paramBoolean;
    }
    
    private RuntimeException getInvalidTypeError()
    {
      return new IllegalArgumentException("value is not a supported type.");
    }
    
    public void write(String paramString, Object... paramVarArgs)
    {
      if (!useUrlEncode)
      {
        if (firstWrite)
        {
          outputStream.write("--".getBytes());
          outputStream.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
          outputStream.write("\r\n".getBytes());
          firstWrite = false;
        }
        outputStream.write(String.format(paramString, paramVarArgs).getBytes());
        return;
      }
      outputStream.write(URLEncoder.encode(String.format(Locale.US, paramString, paramVarArgs), "UTF-8").getBytes());
    }
    
    public void writeBitmap(String paramString, Bitmap paramBitmap)
    {
      writeContentDisposition(paramString, paramString, "image/png");
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream);
      writeLine("", new Object[0]);
      writeRecordBoundary();
      if (logger != null) {
        logger.appendKeyValue("    " + paramString, "<Image>");
      }
    }
    
    public void writeBytes(String paramString, byte[] paramArrayOfByte)
    {
      writeContentDisposition(paramString, paramString, "content/unknown");
      outputStream.write(paramArrayOfByte);
      writeLine("", new Object[0]);
      writeRecordBoundary();
      if (logger != null) {
        logger.appendKeyValue("    " + paramString, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(paramArrayOfByte.length) }));
      }
    }
    
    public void writeContentDisposition(String paramString1, String paramString2, String paramString3)
    {
      if (!useUrlEncode)
      {
        write("Content-Disposition: form-data; name=\"%s\"", new Object[] { paramString1 });
        if (paramString2 != null) {
          write("; filename=\"%s\"", new Object[] { paramString2 });
        }
        writeLine("", new Object[0]);
        if (paramString3 != null) {
          writeLine("%s: %s", new Object[] { "Content-Type", paramString3 });
        }
        writeLine("", new Object[0]);
        return;
      }
      outputStream.write(String.format("%s=", new Object[] { paramString1 }).getBytes());
    }
    
    public void writeContentUri(String paramString1, Uri paramUri, String paramString2)
    {
      String str = paramString2;
      if (paramString2 == null) {
        str = "content/unknown";
      }
      writeContentDisposition(paramString1, paramString1, str);
      paramString2 = FacebookSdk.getApplicationContext().getContentResolver().openInputStream(paramUri);
      if ((outputStream instanceof ProgressNoopOutputStream))
      {
        long l = Utility.getContentSize(paramUri);
        ((ProgressNoopOutputStream)outputStream).addProgress(l);
      }
      for (int i = 0;; i = Utility.copyAndCloseInputStream(paramString2, outputStream) + 0)
      {
        writeLine("", new Object[0]);
        writeRecordBoundary();
        if (logger != null) {
          logger.appendKeyValue("    " + paramString1, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(i) }));
        }
        return;
      }
    }
    
    public void writeFile(String paramString1, ParcelFileDescriptor paramParcelFileDescriptor, String paramString2)
    {
      String str = paramString2;
      if (paramString2 == null) {
        str = "content/unknown";
      }
      writeContentDisposition(paramString1, paramString1, str);
      if ((outputStream instanceof ProgressNoopOutputStream)) {
        ((ProgressNoopOutputStream)outputStream).addProgress(paramParcelFileDescriptor.getStatSize());
      }
      for (int i = 0;; i = Utility.copyAndCloseInputStream(new ParcelFileDescriptor.AutoCloseInputStream(paramParcelFileDescriptor), outputStream) + 0)
      {
        writeLine("", new Object[0]);
        writeRecordBoundary();
        if (logger != null) {
          logger.appendKeyValue("    " + paramString1, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(i) }));
        }
        return;
      }
    }
    
    public void writeLine(String paramString, Object... paramVarArgs)
    {
      write(paramString, paramVarArgs);
      if (!useUrlEncode) {
        write("\r\n", new Object[0]);
      }
    }
    
    public void writeObject(String paramString, Object paramObject, GraphRequest paramGraphRequest)
    {
      if ((outputStream instanceof RequestOutputStream)) {
        ((RequestOutputStream)outputStream).setCurrentRequest(paramGraphRequest);
      }
      if (GraphRequest.isSupportedParameterType(paramObject))
      {
        writeString(paramString, GraphRequest.parameterToString(paramObject));
        return;
      }
      if ((paramObject instanceof Bitmap))
      {
        writeBitmap(paramString, (Bitmap)paramObject);
        return;
      }
      if ((paramObject instanceof byte[]))
      {
        writeBytes(paramString, (byte[])paramObject);
        return;
      }
      if ((paramObject instanceof Uri))
      {
        writeContentUri(paramString, (Uri)paramObject, null);
        return;
      }
      if ((paramObject instanceof ParcelFileDescriptor))
      {
        writeFile(paramString, (ParcelFileDescriptor)paramObject, null);
        return;
      }
      if ((paramObject instanceof GraphRequest.ParcelableResourceWithMimeType))
      {
        paramGraphRequest = (GraphRequest.ParcelableResourceWithMimeType)paramObject;
        paramObject = paramGraphRequest.getResource();
        paramGraphRequest = paramGraphRequest.getMimeType();
        if ((paramObject instanceof ParcelFileDescriptor))
        {
          writeFile(paramString, (ParcelFileDescriptor)paramObject, paramGraphRequest);
          return;
        }
        if ((paramObject instanceof Uri))
        {
          writeContentUri(paramString, (Uri)paramObject, paramGraphRequest);
          return;
        }
        throw getInvalidTypeError();
      }
      throw getInvalidTypeError();
    }
    
    public void writeRecordBoundary()
    {
      if (!useUrlEncode)
      {
        writeLine("--%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
        return;
      }
      outputStream.write("&".getBytes());
    }
    
    public void writeRequestsAsJson(String paramString, JSONArray paramJSONArray, Collection<GraphRequest> paramCollection)
    {
      if (!(outputStream instanceof RequestOutputStream)) {
        writeString(paramString, paramJSONArray.toString());
      }
      do
      {
        return;
        RequestOutputStream localRequestOutputStream = (RequestOutputStream)outputStream;
        writeContentDisposition(paramString, null, null);
        write("[", new Object[0]);
        paramCollection = paramCollection.iterator();
        int i = 0;
        if (paramCollection.hasNext())
        {
          GraphRequest localGraphRequest = (GraphRequest)paramCollection.next();
          JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
          localRequestOutputStream.setCurrentRequest(localGraphRequest);
          if (i > 0) {
            write(",%s", new Object[] { localJSONObject.toString() });
          }
          for (;;)
          {
            i += 1;
            break;
            write("%s", new Object[] { localJSONObject.toString() });
          }
        }
        write("]", new Object[0]);
      } while (logger == null);
      logger.appendKeyValue("    " + paramString, paramJSONArray.toString());
    }
    
    public void writeString(String paramString1, String paramString2)
    {
      writeContentDisposition(paramString1, null, null);
      writeLine("%s", new Object[] { paramString2 });
      writeRecordBoundary();
      if (logger != null) {
        logger.appendKeyValue("    " + paramString1, paramString2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.GraphRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */