.class public Lcom/mdialog/android/Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mdialog/android/SessionInterface;


# instance fields
.field private a:Lcom/mdialog/android/SessionContext;

.field private b:Lcom/a/a/a/g;

.field private c:Lcom/mdialog/android/Stream;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/mdialog/android/Session;->a:Lcom/mdialog/android/SessionContext;

    .line 48
    iput-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    .line 103
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mdialog/android/Session$1;

    invoke-direct {v1, p0}, Lcom/mdialog/android/Session$1;-><init>(Lcom/mdialog/android/Session;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/mdialog/android/Session;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/mdialog/android/Session;->b()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    const-string v1, "manifest"

    invoke-static {v1, p1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/mdialog/android/Stream;->d:Ljava/net/URL;

    .line 207
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    const-string v1, "hd_manifest"

    invoke-static {v1, p1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/mdialog/android/Stream;->e:Ljava/net/URL;

    .line 208
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    const-string v1, "low_manifest"

    invoke-static {v1, p1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/mdialog/android/Stream;->f:Ljava/net/URL;

    .line 209
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    const-string v1, "stream_activity"

    invoke-static {v1, p1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/mdialog/android/Stream;->j:Ljava/net/URL;

    .line 210
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    const-string v1, "stream_time_events"

    invoke-static {v1, p1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/mdialog/android/Stream;->i:Ljava/net/URL;

    .line 211
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    const-string v1, "timed_metadata_events"

    invoke-static {v1, p1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/mdialog/android/Stream;->h:Ljava/net/URL;

    .line 212
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    invoke-static {p1}, Lcom/mdialog/android/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mdialog/android/Stream;->k:Ljava/lang/String;

    .line 214
    const-string v0, "pre_roll_manifest"

    invoke-static {v0, p1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lcom/mdialog/android/Stream;

    iget-object v1, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    iget-object v1, v1, Lcom/mdialog/android/Stream;->c:Lcom/mdialog/android/StreamContext;

    invoke-direct {v0, v1}, Lcom/mdialog/android/Stream;-><init>(Lcom/mdialog/android/StreamContext;)V

    .line 216
    iput-object p0, v0, Lcom/mdialog/android/Stream;->a:Ljava/lang/Object;

    .line 217
    const-string v1, "pre_roll_manifest"

    invoke-static {v1, p1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/mdialog/android/Stream;->d:Ljava/net/URL;

    .line 218
    const-string v1, "pre_roll_hd_manifest"

    invoke-static {v1, p1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/mdialog/android/Stream;->e:Ljava/net/URL;

    .line 219
    const-string v1, "pre_roll_low_manifest"

    invoke-static {v1, p1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/mdialog/android/Stream;->f:Ljava/net/URL;

    .line 220
    iget-object v1, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    iput-object v0, v1, Lcom/mdialog/android/Stream;->l:Lcom/mdialog/android/Stream;

    .line 222
    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 117
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "https://{0}.mdialog.com/video_assets/{1}/streams"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mdialog/android/Session;->a:Lcom/mdialog/android/SessionContext;

    iget-object v4, v4, Lcom/mdialog/android/SessionContext;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    iget-object v4, v4, Lcom/mdialog/android/Stream;->c:Lcom/mdialog/android/StreamContext;

    iget-object v4, v4, Lcom/mdialog/android/StreamContext;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 120
    iget-object v0, p0, Lcom/mdialog/android/Session;->a:Lcom/mdialog/android/SessionContext;

    iget-object v2, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    iget-object v2, v2, Lcom/mdialog/android/Stream;->c:Lcom/mdialog/android/StreamContext;

    iget-object v2, v2, Lcom/mdialog/android/StreamContext;->c:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mdialog/android/a;->a(Lcom/mdialog/android/SessionContext;Ljava/util/HashMap;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-direct {p0}, Lcom/mdialog/android/Session;->c()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-direct {p0}, Lcom/mdialog/android/Session;->d()Ljava/lang/String;

    move-result-object v3

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 125
    const-string v0, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDialogAPI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdialog/android/Session;->a:Lcom/mdialog/android/SessionContext;

    iget-object v3, v3, Lcom/mdialog/android/SessionContext;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/mdialog/android/a/a;->a(Lorg/apache/http/client/methods/HttpRequestBase;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/mdialog/android/a/a;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 141
    new-instance v2, Lcom/mdialog/android/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-direct {v2, v0}, Lcom/mdialog/android/a/b;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    iget-object v1, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mdialog/android/Stream;->c(Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 137
    :sswitch_0
    :try_start_1
    const-string v2, "Location"

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 138
    iget-object v3, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mdialog/android/Stream;->a(Ljava/lang/String;)V

    .line 149
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_0

    .line 150
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/mdialog/android/Session;->a(Lorg/json/JSONObject;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->a()V

    .line 157
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 169
    const-string v0, ""

    .line 171
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&dfp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdialog/android/Session;->b:Lcom/a/a/a/g;

    const-string v3, ""

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/mdialog/android/Session;->a:Lcom/mdialog/android/SessionContext;

    iget-object v4, v4, Lcom/mdialog/android/SessionContext;->n:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Lcom/a/a/a/g;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/a/a/a/h; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 183
    const-string v0, ""

    .line 185
    iget-object v1, p0, Lcom/mdialog/android/Session;->a:Lcom/mdialog/android/SessionContext;

    iget-object v1, v1, Lcom/mdialog/android/SessionContext;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 186
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=com.google.android.gms.ads"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 191
    :try_start_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_0

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&dfp_mv="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSession(Lcom/mdialog/android/SessionContext;)Lcom/mdialog/android/Session;
    .locals 4

    .prologue
    .line 58
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/mdialog/android/SessionContext;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdialog/android/SessionContext;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdialog/android/SessionContext;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdialog/android/SessionContext;->g:Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

    if-nez v0, :cond_1

    .line 59
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Session cannot be created! Please provide proper session context with apiKey, applicationKey, subDomain, playerType to create session for interacting with mDialog Services."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 62
    :cond_1
    new-instance v0, Lcom/mdialog/android/Session;

    invoke-direct {v0}, Lcom/mdialog/android/Session;-><init>()V

    .line 63
    iput-object p0, v0, Lcom/mdialog/android/Session;->a:Lcom/mdialog/android/SessionContext;

    .line 65
    new-instance v1, Lcom/a/a/a/g;

    const-string v2, "mDialogAndroidSmartStreamSDK-2.0.0"

    iget-object v3, p0, Lcom/mdialog/android/SessionContext;->n:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/a/a/a/f;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/a/a/a/g;-><init>(Lcom/a/a/a/c;)V

    iput-object v1, v0, Lcom/mdialog/android/Session;->b:Lcom/a/a/a/g;

    goto :goto_0
.end method


# virtual methods
.method destroyPreRollStream()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mdialog/android/Stream;->l:Lcom/mdialog/android/Stream;

    .line 237
    :cond_0
    return-void
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "2.0.0"

    return-object v0
.end method

.method public getStream(Lcom/mdialog/android/StreamContext;)Lcom/mdialog/android/Stream;
    .locals 2

    .prologue
    .line 78
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mdialog/android/StreamContext;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 79
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Stream cannot be created! Please provide proper stream context with assetKey."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 82
    :cond_1
    new-instance v0, Lcom/mdialog/android/Stream;

    invoke-direct {v0, p1}, Lcom/mdialog/android/Stream;-><init>(Lcom/mdialog/android/StreamContext;)V

    .line 83
    iput-object p0, v0, Lcom/mdialog/android/Stream;->a:Ljava/lang/Object;

    .line 84
    iput-object v0, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    .line 86
    invoke-direct {p0}, Lcom/mdialog/android/Session;->a()V

    goto :goto_0
.end method

.method pingTrackingURLs(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mdialog/android/Session;->a:Lcom/mdialog/android/SessionContext;

    iget-object v1, p0, Lcom/mdialog/android/Session;->c:Lcom/mdialog/android/Stream;

    iget-object v1, v1, Lcom/mdialog/android/Stream;->c:Lcom/mdialog/android/StreamContext;

    iget-object v1, v1, Lcom/mdialog/android/StreamContext;->b:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lcom/mdialog/android/a;->a(Ljava/lang/String;Lcom/mdialog/android/SessionContext;Ljava/util/HashMap;)V

    .line 230
    :cond_0
    return-void
.end method
