.class public Lcom/facebook/GraphRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;,
        Lcom/facebook/GraphRequest$GraphJSONObjectCallback;,
        Lcom/facebook/GraphRequest$GraphJSONArrayCallback;,
        Lcom/facebook/GraphRequest$OnProgressCallback;,
        Lcom/facebook/GraphRequest$Callback;,
        Lcom/facebook/GraphRequest$Serializer;,
        Lcom/facebook/GraphRequest$KeyValueSerializer;,
        Lcom/facebook/GraphRequest$Attachment;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field private static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final DEBUG_KEY:Ljava/lang/String; = "__debug__"

.field private static final DEBUG_MESSAGES_KEY:Ljava/lang/String; = "messages"

.field private static final DEBUG_MESSAGE_KEY:Ljava/lang/String; = "message"

.field private static final DEBUG_MESSAGE_LINK_KEY:Ljava/lang/String; = "link"

.field private static final DEBUG_MESSAGE_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final DEBUG_PARAM:Ljava/lang/String; = "debug"

.field private static final DEBUG_SEVERITY_INFO:Ljava/lang/String; = "info"

.field private static final DEBUG_SEVERITY_WARNING:Ljava/lang/String; = "warning"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final MAXIMUM_BATCH_SIZE:I = 0x32

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field public static final TAG:Ljava/lang/String;

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static final VIDEOS_SUFFIX:Ljava/lang/String; = "/videos"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static volatile userAgent:Ljava/lang/String;

.field private static versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private accessToken:Lcom/facebook/AccessToken;

.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/facebook/GraphRequest$Callback;

.field private graphObject:Lorg/json/JSONObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/facebook/HttpMethod;

.field private overriddenURL:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;

.field private skipClientToken:Z

.field private tag:Ljava/lang/Object;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    .line 124
    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 144
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    .locals 6

    .prologue
    .line 181
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V
    .locals 7

    .prologue
    .line 208
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 237
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 238
    iput-object p2, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 239
    iput-object p6, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 241
    invoke-virtual {p0, p5}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 242
    invoke-virtual {p0, p4}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 244
    if-eqz p3, :cond_1

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 251
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getAPIVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 253
    :cond_0
    return-void

    .line 247
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/AccessToken;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 256
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 257
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    .line 259
    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 262
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lcom/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addCommonParameters()V
    .locals 3

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_2

    .line 1278
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1280
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1281
    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "debug"

    const-string v2, "info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :cond_1
    :goto_1
    return-void

    .line 1283
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 1285
    invoke-static {}, Lcom/facebook/FacebookSdk;->getClientToken()Ljava/lang/String;

    move-result-object v1

    .line 1286
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1288
    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1299
    :cond_3
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "debug"

    const-string v2, "warning"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1305
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1307
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1308
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1309
    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1311
    if-nez v1, :cond_1

    .line 1312
    const-string v1, ""

    .line 1315
    :cond_1
    invoke-static {v1}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1316
    invoke-static {v1}, Lcom/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1328
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1318
    :cond_2
    iget-object v0, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-ne v0, v4, :cond_0

    .line 1319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Unsupported parameter type for GET request: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1323
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 1320
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1331
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1266
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1268
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/facebook/GraphRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1272
    return-object v0
.end method

.method public static executeAndWait(Lcom/facebook/GraphRequest;)Lcom/facebook/GraphResponse;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 958
    new-array v0, v3, [Lcom/facebook/GraphRequest;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object v0

    .line 960
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 961
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphResponse;

    return-object v0
.end method

.method public static executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1018
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1022
    :try_start_0
    invoke-static {p0}, Lcom/facebook/GraphRequest;->toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1032
    invoke-static {v0, p0}, Lcom/facebook/GraphRequest;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    .line 1033
    :goto_0
    return-object v0

    .line 1023
    :catch_0
    move-exception v0

    .line 1025
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getRequests()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/FacebookException;

    invoke-direct {v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 1024
    invoke-static {v1, v2, v3}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v0

    .line 1028
    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 999
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/GraphRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 981
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 983
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1

    .prologue
    .line 1086
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1088
    new-instance v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Lcom/facebook/GraphRequestBatch;)V

    .line 1089
    invoke-virtual {v0}, Lcom/facebook/GraphRequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/GraphRequestAsyncTask;

    .line 1090
    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Lcom/facebook/GraphRequestAsyncTask;"
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAsync([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1

    .prologue
    .line 1049
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    invoke-static {p0, p1}, Lcom/facebook/GraphResponse;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    .line 1132
    invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1134
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v1

    .line 1135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1136
    new-instance v2, Lcom/facebook/FacebookException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Received %d responses while expecting %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    .line 1140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1137
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1143
    :cond_0
    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V

    .line 1146
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessTokenManager;->extendAccessTokenIfNeeded()V

    .line 1148
    return-object v0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1110
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p1}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1

    .prologue
    .line 1194
    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1196
    new-instance v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V

    .line 1197
    invoke-virtual {p2, p0}, Lcom/facebook/GraphRequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 1198
    invoke-virtual {v0}, Lcom/facebook/GraphRequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/GraphRequestAsyncTask;

    .line 1199
    return-object v0
.end method

.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1

    .prologue
    .line 1169
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/GraphRequest;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static getBatchAppId(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1772
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1773
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 1788
    :goto_0
    return-object v0

    .line 1776
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1777
    iget-object v0, v0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 1778
    if-eqz v0, :cond_1

    .line 1779
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 1780
    if-eqz v0, :cond_1

    goto :goto_0

    .line 1785
    :cond_2
    sget-object v0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1786
    sget-object v0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    goto :goto_0

    .line 1788
    :cond_3
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    sget-object v0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method private getGraphPathWithVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1364
    sget-object v0, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1365
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 1368
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1758
    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1764
    sget-object v0, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1765
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FBAndroidSDK"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "4.2.0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    .line 1768
    :cond_0
    sget-object v0, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static hasOnProgressCallbacks(Lcom/facebook/GraphRequestBatch;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1456
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequestBatch$Callback;

    .line 1457
    instance-of v0, v0, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1468
    :goto_0
    return v0

    .line 1462
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1463
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v0, :cond_2

    move v0, v1

    .line 1464
    goto :goto_0

    .line 1468
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGzipCompressible(Lcom/facebook/GraphRequestBatch;)Z
    .locals 5

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1484
    iget-object v1, v0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1485
    iget-object v4, v0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1486
    invoke-static {v1}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1487
    const/4 v0, 0x0

    .line 1491
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isMeRequest(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1608
    sget-object v1, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1609
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1611
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1613
    :cond_0
    const-string v1, "me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1616
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1792
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1800
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/GraphRequest;->newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 466
    if-nez p2, :cond_6

    if-eqz p0, :cond_6

    .line 467
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    .line 470
    :goto_0
    if-nez v0, :cond_0

    .line 471
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 474
    :cond_0
    if-nez v0, :cond_1

    .line 475
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Facebook App ID cannot be determined"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/custom_audience_third_party_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-static {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v1

    .line 481
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 483
    if-nez p0, :cond_2

    .line 486
    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 487
    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_1
    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 490
    const-string v4, "udid"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_2
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 497
    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 498
    :cond_3
    const-string v0, "limit_event_usage"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_4
    new-instance v0, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0

    .line 488
    :cond_5
    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, p2

    goto :goto_0
.end method

.method public static newDeleteObjectRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 277
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 365
    new-instance v0, Lcom/facebook/GraphRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 291
    new-instance v5, Lcom/facebook/GraphRequest$1;

    invoke-direct {v5, p1}, Lcom/facebook/GraphRequest$1;-><init>(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)V

    .line 299
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newMyFriendsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 339
    new-instance v5, Lcom/facebook/GraphRequest$2;

    invoke-direct {v5, p1}, Lcom/facebook/GraphRequest$2;-><init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V

    .line 349
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me/friends"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newPlacesSearchRequest(Lcom/facebook/AccessToken;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
    .locals 8

    .prologue
    .line 391
    if-nez p1, :cond_0

    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 396
    const-string v0, "type"

    const-string v1, "place"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "limit"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    if-eqz p1, :cond_1

    .line 399
    const-string v0, "center"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 403
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 404
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    .line 400
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "distance"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    :cond_1
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    const-string v0, "q"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_2
    new-instance v5, Lcom/facebook/GraphRequest$3;

    invoke-direct {v5, p5}, Lcom/facebook/GraphRequest$3;-><init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V

    .line 422
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "search"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 318
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 324
    invoke-virtual {v0, p2}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    .line 325
    return-object v0
.end method

.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1805
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1806
    check-cast p0, Ljava/lang/String;

    .line 1812
    :goto_0
    return-object p0

    .line 1807
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 1808
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1809
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 1810
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1812
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1814
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1630
    .line 1631
    invoke-static {p1}, Lcom/facebook/GraphRequest;->isMeRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1632
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1633
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1634
    const/4 v4, 0x3

    if-le v0, v4, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    move v3, v0

    .line 1638
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1639
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1640
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1641
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1642
    if-eqz v3, :cond_2

    const-string v4, "image"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    .line 1643
    :goto_3
    invoke-static {v0, v6, p2, v4}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_2

    :cond_1
    move v0, v2

    .line 1634
    goto :goto_0

    :cond_2
    move v4, v2

    .line 1642
    goto :goto_3

    .line 1645
    :cond_3
    return-void

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1653
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1655
    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1656
    check-cast v0, Lorg/json/JSONObject;

    .line 1657
    if-eqz p3, :cond_0

    .line 1660
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1661
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1662
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1663
    const-string v4, "%s[%s]"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1666
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1664
    invoke-static {v4, v1, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_1

    .line 1673
    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1674
    const-string v1, "id"

    .line 1676
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1674
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    .line 1713
    :cond_1
    :goto_2
    return-void

    .line 1679
    :cond_2
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1680
    const-string v1, "url"

    .line 1682
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1680
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_2

    .line 1685
    :cond_3
    const-string v1, "fbsdk:create_object"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1686
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1689
    :cond_4
    const-class v3, Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1690
    check-cast v0, Lorg/json/JSONArray;

    .line 1691
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v2

    .line 1692
    :goto_3
    if-ge v1, v3, :cond_1

    .line 1693
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%s[%d]"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1694
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    .line 1692
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1696
    :cond_5
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    const-class v2, Ljava/lang/Number;

    .line 1697
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    const-class v2, Ljava/lang/Boolean;

    .line 1698
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1699
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1700
    :cond_7
    const-class v2, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1701
    check-cast v0, Ljava/util/Date;

    .line 1708
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1711
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 7

    .prologue
    .line 1560
    new-instance v1, Lcom/facebook/GraphRequest$Serializer;

    invoke-direct {v1, p4, p1, p5}, Lcom/facebook/GraphRequest$Serializer;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V

    .line 1562
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 1563
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 1565
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1566
    iget-object v0, v2, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1567
    iget-object v5, v2, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1568
    invoke-static {v5}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1569
    new-instance v6, Lcom/facebook/GraphRequest$Attachment;

    invoke-direct {v6, v2, v5}, Lcom/facebook/GraphRequest$Attachment;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1573
    :cond_1
    if-eqz p1, :cond_2

    .line 1574
    const-string v0, "  Parameters:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1576
    :cond_2
    iget-object v0, v2, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/GraphRequest;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V

    .line 1578
    if-eqz p1, :cond_3

    .line 1579
    const-string v0, "  Attachments:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1581
    :cond_3
    invoke-static {v3, v1}, Lcom/facebook/GraphRequest;->serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V

    .line 1583
    iget-object v0, v2, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 1584
    iget-object v0, v2, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/facebook/GraphRequest;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V

    .line 1605
    :cond_4
    :goto_1
    return-void

    .line 1587
    :cond_5
    invoke-static {p0}, Lcom/facebook/GraphRequest;->getBatchAppId(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;

    move-result-object v0

    .line 1588
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1589
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "App ID was not specified at the request or Settings."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1593
    :cond_6
    const-string v2, "batch_app_id"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1598
    invoke-static {v1, p0, v0}, Lcom/facebook/GraphRequest;->serializeRequestsAsJSON(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1600
    if-eqz p1, :cond_7

    .line 1601
    const-string v2, "  Attachments:\n"

    invoke-virtual {p1, v2}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1603
    :cond_7
    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V

    goto :goto_1
.end method

.method static runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequestBatch;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v1

    .line 1230
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1232
    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 1233
    iget-object v4, v3, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v4, :cond_0

    .line 1234
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    .line 1235
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1234
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1239
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1240
    new-instance v0, Lcom/facebook/GraphRequest$5;

    invoke-direct {v0, v2, p0}, Lcom/facebook/GraphRequest$5;-><init>(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V

    .line 1253
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1254
    if-nez v1, :cond_3

    .line 1256
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1262
    :cond_2
    :goto_1
    return-void

    .line 1259
    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;",
            "Lcom/facebook/GraphRequest$Serializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1734
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1736
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1737
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest$Attachment;

    .line 1738
    invoke-virtual {v1}, Lcom/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1739
    invoke-virtual {v1}, Lcom/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/GraphRequest$Attachment;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    .line 1742
    :cond_1
    return-void
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V
    .locals 4

    .prologue
    .line 1720
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1722
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1723
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1724
    invoke-static {v2}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1725
    invoke-virtual {p1, v0, v2, p2}, Lcom/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    .line 1728
    :cond_1
    return-void
.end method

.method private static serializeRequestsAsJSON(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequest$Serializer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1749
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1750
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1751
    invoke-direct {v0, v1, p2}, Lcom/facebook/GraphRequest;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    .line 1754
    :cond_0
    const-string v0, "batch"

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/GraphRequest$Serializer;->writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 1755
    return-void
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1393
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1395
    iget-object v0, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1396
    const-string v0, "name"

    iget-object v2, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1397
    const-string v0, "omit_response_on_success"

    iget-boolean v2, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1402
    const-string v0, "depends_on"

    iget-object v2, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1405
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getUrlForBatchedRequest()Ljava/lang/String;

    move-result-object v2

    .line 1406
    const-string v0, "relative_url"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1407
    const-string v0, "method"

    iget-object v3, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1408
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_2

    .line 1409
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1410
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1414
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1416
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1417
    iget-object v5, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1418
    invoke-static {v0}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1420
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%s%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "file"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1424
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1420
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1425
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    new-instance v6, Lcom/facebook/GraphRequest$Attachment;

    invoke-direct {v6, p0, v0}, Lcom/facebook/GraphRequest$Attachment;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1430
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1431
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1432
    const-string v3, "attached_files"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1435
    :cond_5
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    .line 1437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    iget-object v3, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    new-instance v4, Lcom/facebook/GraphRequest$6;

    invoke-direct {v4, p0, v0}, Lcom/facebook/GraphRequest$6;-><init>(Lcom/facebook/GraphRequest;Ljava/util/ArrayList;)V

    invoke-static {v3, v2, v4}, Lcom/facebook/GraphRequest;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V

    .line 1448
    const-string v2, "&"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1449
    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1452
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1453
    return-void
.end method

.method static final serializeToUrlConnection(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1498
    new-instance v12, Lcom/facebook/internal/Logger;

    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v2, "Request"

    invoke-direct {v12, v0, v2}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v2

    .line 1501
    invoke-static {p0}, Lcom/facebook/GraphRequest;->isGzipCompressible(Lcom/facebook/GraphRequestBatch;)Z

    move-result v5

    .line 1503
    if-ne v2, v1, :cond_0

    .line 1504
    invoke-virtual {p0, v6}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    .line 1505
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1506
    invoke-static {p1, v5}, Lcom/facebook/GraphRequest;->setConnectionContentType(Ljava/net/HttpURLConnection;Z)V

    .line 1508
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 1509
    const-string v7, "Request:\n"

    invoke-virtual {v12, v7}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1510
    const-string v7, "Id"

    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1511
    const-string v7, "URL"

    invoke-virtual {v12, v7, v3}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1512
    const-string v7, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1513
    const-string v7, "User-Agent"

    const-string v8, "User-Agent"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1514
    const-string v7, "Content-Type"

    const-string v8, "Content-Type"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1516
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getTimeout()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1517
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getTimeout()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1521
    sget-object v7, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v0, v7, :cond_1

    move v0, v1

    .line 1522
    :goto_1
    if-nez v0, :cond_2

    .line 1523
    invoke-virtual {v12}, Lcom/facebook/internal/Logger;->log()V

    .line 1555
    :goto_2
    return-void

    .line 1504
    :cond_0
    sget-object v0, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    goto :goto_0

    :cond_1
    move v0, v6

    .line 1521
    goto :goto_1

    .line 1527
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1531
    :try_start_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    if-eqz v5, :cond_3

    .line 1533
    :try_start_1
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v0

    .line 1536
    :cond_3
    invoke-static {p0}, Lcom/facebook/GraphRequest;->hasOnProgressCallbacks(Lcom/facebook/GraphRequestBatch;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1538
    new-instance v4, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/facebook/ProgressNoopOutputStream;-><init>(Landroid/os/Handler;)V

    .line 1539
    const/4 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 1541
    invoke-virtual {v4}, Lcom/facebook/ProgressNoopOutputStream;->getMaxProgress()I

    move-result v0

    .line 1542
    invoke-virtual {v4}, Lcom/facebook/ProgressNoopOutputStream;->getProgressMap()Ljava/util/Map;

    move-result-object v9

    .line 1544
    new-instance v6, Lcom/facebook/ProgressOutputStream;

    int-to-long v10, v0

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ProgressOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v6

    :goto_3
    move-object v0, p0

    move-object v1, v12

    .line 1547
    :try_start_2
    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1550
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1554
    invoke-virtual {v12}, Lcom/facebook/internal/Logger;->log()V

    goto :goto_2

    .line 1549
    :catchall_0
    move-exception v0

    move-object v7, v4

    :goto_4
    if-eqz v7, :cond_4

    .line 1550
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v0

    .line 1549
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v4

    goto :goto_4

    :cond_5
    move-object v4, v7

    goto :goto_3
.end method

.method private static setConnectionContentType(Ljava/net/HttpURLConnection;Z)V
    .locals 2

    .prologue
    .line 1474
    if-eqz p1, :cond_0

    .line 1475
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    :goto_0
    return-void

    .line 1478
    :cond_0
    const-string v0, "Content-Type"

    invoke-static {}, Lcom/facebook/GraphRequest;->getMimeContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 756
    sput-object p0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    .line 757
    return-void
.end method

.method public static toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 918
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 920
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 923
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/facebook/GraphRequest;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 937
    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->serializeToUrlConnection(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 944
    return-object v0

    .line 927
    :cond_0
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "could not construct URL for request"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 938
    :catch_1
    move-exception v0

    .line 939
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 940
    :catch_2
    move-exception v0

    .line 941
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 899
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 901
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toHttpConnection([Lcom/facebook/GraphRequest;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 884
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final executeAndWait()Lcom/facebook/GraphResponse;
    .locals 1

    .prologue
    .line 854
    invoke-static {p0}, Lcom/facebook/GraphRequest;->executeAndWait(Lcom/facebook/GraphRequest;)Lcom/facebook/GraphResponse;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    .locals 2

    .prologue
    .line 869
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessToken()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public final getBatchEntryDependsOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryOmitResultOnSuccess()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    return v0
.end method

.method public final getCallback()Lcom/facebook/GraphRequest$Callback;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    return-object v0
.end method

.method public final getGraphObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/facebook/HttpMethod;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/facebook/GraphRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method final getUrlForBatchedRequest()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1336
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1339
    :cond_0
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v0

    .line 1340
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->addCommonParameters()V

    .line 1341
    invoke-direct {p0, v0}, Lcom/facebook/GraphRequest;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1360
    :goto_0
    return-object v0

    .line 1350
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    const-string v1, "/videos"

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphVideoUrlBase()Ljava/lang/String;

    move-result-object v0

    .line 1357
    :goto_1
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1359
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->addCommonParameters()V

    .line 1360
    invoke-direct {p0, v0}, Lcom/facebook/GraphRequest;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1355
    :cond_1
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessToken(Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 662
    return-void
.end method

.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    .line 709
    return-void
.end method

.method public final setBatchEntryName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public final setBatchEntryOmitResultOnSuccess(Z)V
    .locals 0

    .prologue
    .line 732
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    .line 733
    return-void
.end method

.method public final setCallback(Lcom/facebook/GraphRequest$Callback;)V
    .locals 1

    .prologue
    .line 775
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 776
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    :cond_0
    new-instance v0, Lcom/facebook/GraphRequest$4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/GraphRequest$4;-><init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$Callback;)V

    .line 814
    iput-object v0, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    .line 819
    :goto_0
    return-void

    .line 816
    :cond_1
    iput-object p1, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    goto :goto_0
.end method

.method public final setGraphObject(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    .line 560
    return-void
.end method

.method public final setGraphPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-eq p1, v0, :cond_0

    .line 596
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    .line 599
    return-void

    .line 598
    :cond_1
    sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    goto :goto_0
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 644
    return-void
.end method

.method public final setSkipClientToken(Z)V
    .locals 0

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 626
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/facebook/GraphRequest;->tag:Ljava/lang/Object;

    .line 830
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 619
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "{Request:  accessToken: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 1212
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphPath: "

    .line 1213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 1214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    .line 1215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMethod: "

    .line 1217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    .line 1218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters: "

    .line 1219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 1220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    goto :goto_0
.end method
