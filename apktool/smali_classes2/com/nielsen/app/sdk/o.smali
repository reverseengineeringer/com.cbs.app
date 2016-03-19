.class final Lcom/nielsen/app/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static d:Lcom/nielsen/app/sdk/o;

.field private static e:Lcom/nielsen/app/sdk/q;

.field private static f:Lcom/nielsen/app/sdk/w;

.field private static g:Lcom/nielsen/app/sdk/b;

.field private static h:Lcom/nielsen/app/sdk/a;

.field private static i:Lcom/nielsen/app/sdk/k;

.field private static j:Lcom/nielsen/app/sdk/AppNative;

.field private static k:Lcom/nielsen/app/sdk/e;

.field private static l:Lcom/nielsen/app/sdk/t;

.field private static m:Lcom/nielsen/app/sdk/h;

.field private static n:Lcom/nielsen/app/sdk/p;

.field private static o:Lcom/nielsen/app/sdk/d;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 882
    sput-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    .line 901
    sput-object v0, Lcom/nielsen/app/sdk/o;->e:Lcom/nielsen/app/sdk/q;

    .line 920
    sput-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    .line 939
    sput-object v0, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    .line 958
    sput-object v0, Lcom/nielsen/app/sdk/o;->h:Lcom/nielsen/app/sdk/a;

    .line 977
    sput-object v0, Lcom/nielsen/app/sdk/o;->i:Lcom/nielsen/app/sdk/k;

    .line 996
    sput-object v0, Lcom/nielsen/app/sdk/o;->j:Lcom/nielsen/app/sdk/AppNative;

    .line 1015
    sput-object v0, Lcom/nielsen/app/sdk/o;->k:Lcom/nielsen/app/sdk/e;

    .line 1034
    sput-object v0, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    .line 1053
    sput-object v0, Lcom/nielsen/app/sdk/o;->m:Lcom/nielsen/app/sdk/h;

    .line 1072
    sput-object v0, Lcom/nielsen/app/sdk/o;->n:Lcom/nielsen/app/sdk/p;

    .line 1091
    sput-object v0, Lcom/nielsen/app/sdk/o;->o:Lcom/nielsen/app/sdk/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-boolean v0, p0, Lcom/nielsen/app/sdk/o;->a:Z

    .line 363
    iput-boolean v0, p0, Lcom/nielsen/app/sdk/o;->b:Z

    .line 509
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/o;->c:Ljava/util/concurrent/locks/Lock;

    .line 63
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/u;)Lcom/nielsen/app/sdk/o;
    .locals 6

    .prologue
    .line 286
    const-class v1, Lcom/nielsen/app/sdk/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    iget-boolean v0, v0, Lcom/nielsen/app/sdk/o;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 291
    :try_start_1
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/o;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Lcom/nielsen/app/sdk/o;

    invoke-direct {v0}, Lcom/nielsen/app/sdk/o;-><init>()V

    .line 309
    sput-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/nielsen/app/sdk/o;->b(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/u;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/o;->close()V

    .line 312
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    .line 314
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "AppApi initialization failed but successfully closed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 293
    :catch_0
    move-exception v0

    const/4 v2, 0x1

    const/16 v3, 0x45

    :try_start_3
    const-string v4, "AppApi.getInstance(), exception while closing previous AppApi"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :cond_1
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    iget-boolean v0, v0, Lcom/nielsen/app/sdk/o;->b:Z

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    :goto_1
    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_4
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static a(J)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 419
    .line 421
    sget-object v1, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    if-nez v1, :cond_1

    .line 422
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 435
    :goto_0
    return v0

    .line 423
    :cond_1
    invoke-static {}, Lcom/nielsen/app/sdk/o;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 425
    :cond_2
    sget-object v1, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/w;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 430
    :cond_3
    :try_start_0
    sget-object v1, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    invoke-virtual {v1, p0, p1}, Lcom/nielsen/app/sdk/t;->a(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    const/4 v2, 0x1

    const/16 v3, 0x45

    const-string v4, "Failure while setting playhead position"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Lcom/nielsen/app/sdk/u;)Z
    .locals 1

    .prologue
    .line 857
    sget-object v0, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    if-eqz v0, :cond_0

    .line 859
    sget-object v0, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v0, p0}, Lcom/nielsen/app/sdk/b;->a(Lcom/nielsen/app/sdk/u;)V

    .line 860
    const/4 v0, 0x1

    .line 862
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 388
    .line 389
    sget-object v1, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    if-nez v1, :cond_2

    .line 390
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 408
    :cond_1
    :goto_0
    return v0

    .line 394
    :cond_2
    invoke-static {}, Lcom/nielsen/app/sdk/o;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 396
    :cond_3
    sget-object v1, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/w;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 397
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 401
    :cond_4
    :try_start_0
    sget-object v1, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    invoke-virtual {v1, p0}, Lcom/nielsen/app/sdk/t;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 405
    :goto_1
    if-nez v0, :cond_1

    .line 406
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    const/4 v2, 0x1

    const/16 v3, 0x45

    const-string v4, "Failed while loading metadata"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/nielsen/app/sdk/t;->e()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/u;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    monitor-enter p0

    if-nez p1, :cond_0

    .line 208
    :goto_0
    monitor-exit p0

    return v0

    .line 87
    :cond_0
    :try_start_0
    const-string v2, "{\"nol_errlogInterval\" : \"86400\",\"sdk_useroptoutsent\" : \"false\",\"sdk_appdisablesent\" : \"false\",\"sdk_appdisablets\" : \"0\",\"nol_useroptout\" : \"nielsenappsdk://0\",\"nol_appdisable\" : \"false\",\"nol_deviceId\" : \"\",\"nol_nuid\" : \"\"}"

    .line 98
    invoke-static {p1, v2}, Lcom/nielsen/app/sdk/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nielsen/app/sdk/p;

    move-result-object v2

    sput-object v2, Lcom/nielsen/app/sdk/o;->n:Lcom/nielsen/app/sdk/p;

    .line 100
    invoke-static {p1}, Lcom/nielsen/app/sdk/w;->a(Landroid/content/Context;)Lcom/nielsen/app/sdk/w;

    move-result-object v2

    sput-object v2, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    .line 102
    invoke-static {p1}, Lcom/nielsen/app/sdk/q;->a(Landroid/content/Context;)Lcom/nielsen/app/sdk/q;

    move-result-object v2

    sput-object v2, Lcom/nielsen/app/sdk/o;->e:Lcom/nielsen/app/sdk/q;

    .line 103
    const/16 v2, 0x57

    invoke-static {v2}, Lcom/nielsen/app/sdk/q;->a(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    invoke-static {p1}, Lcom/nielsen/app/sdk/AppNative;->a(Landroid/content/Context;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v2

    sput-object v2, Lcom/nielsen/app/sdk/o;->j:Lcom/nielsen/app/sdk/AppNative;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    :try_start_2
    invoke-static {p1}, Lcom/nielsen/app/sdk/a;->a(Landroid/content/Context;)Lcom/nielsen/app/sdk/a;

    move-result-object v2

    .line 137
    sput-object v2, Lcom/nielsen/app/sdk/o;->h:Lcom/nielsen/app/sdk/a;

    if-eqz v2, :cond_1

    .line 138
    sget-object v2, Lcom/nielsen/app/sdk/o;->h:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/a;->a()Z

    .line 141
    :cond_1
    invoke-static {p1}, Lcom/nielsen/app/sdk/d;->a(Landroid/content/Context;)Lcom/nielsen/app/sdk/d;

    move-result-object v2

    .line 143
    sput-object v2, Lcom/nielsen/app/sdk/o;->o:Lcom/nielsen/app/sdk/d;

    if-eqz v2, :cond_2

    .line 144
    sget-object v2, Lcom/nielsen/app/sdk/o;->o:Lcom/nielsen/app/sdk/d;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/d;->a()Z

    .line 147
    :cond_2
    invoke-static {}, Lcom/nielsen/app/sdk/k;->a()Lcom/nielsen/app/sdk/k;

    move-result-object v2

    sput-object v2, Lcom/nielsen/app/sdk/o;->i:Lcom/nielsen/app/sdk/k;

    .line 149
    invoke-static {p1}, Lcom/nielsen/app/sdk/h;->a(Landroid/content/Context;)Lcom/nielsen/app/sdk/h;

    move-result-object v2

    sput-object v2, Lcom/nielsen/app/sdk/o;->m:Lcom/nielsen/app/sdk/h;

    .line 151
    const/4 v3, 0x0

    .line 152
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 156
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :try_start_4
    const-string v3, "nol_nslApiDbg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 160
    const-string v3, "nol_nslApiDbg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 162
    :goto_1
    invoke-static {v3}, Lcom/nielsen/app/sdk/q;->a(Z)V

    .line 165
    const-string v3, "appVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "appversion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "apv"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect AppId provided - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    :goto_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse JSON - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    :catch_1
    move-exception v1

    :try_start_6
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :catch_2
    move-exception v1

    :try_start_7
    const-string v1, "AppSdk"

    const-string v2, "Nielsen AppSDK: hit an exception while loading the shared libary. Closing the API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 128
    const/4 v1, 0x3

    :try_start_8
    const-string v2, "AppSDK could not load the shared libary."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 117
    :catch_3
    move-exception v1

    :try_start_9
    const-string v1, "AppSdk"

    const-string v2, "Nielsen AppSDK: could not load the shared libary - Possible Cause - UnsatisfiedLinkError. Closing the API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 128
    const/4 v1, 0x3

    :try_start_a
    const-string v2, "AppSDK could not load the shared libary."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 122
    :catch_4
    move-exception v1

    :try_start_b
    const-string v1, "AppSdk"

    const-string v2, "Nielsen AppSDK: could not load the shared libary  - Possible Cause - Other Error.  Closing the API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 128
    const/4 v1, 0x3

    :try_start_c
    const-string v2, "AppSDK could not load the shared libary."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 127
    :catchall_1
    move-exception v0

    .line 130
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 171
    :cond_3
    :try_start_d
    const-string v3, "appId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "appid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "apid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect AppId provided - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    :cond_4
    const-string v3, "appName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "appname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect AppId provided - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 188
    :cond_5
    :try_start_e
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "JSON string is empty or null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_6
    const/16 v3, 0x49

    const-string v4, "appInit: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-static {v2, p3}, Lcom/nielsen/app/sdk/b;->a(Lorg/json/JSONObject;Lcom/nielsen/app/sdk/u;)Lcom/nielsen/app/sdk/b;

    move-result-object v2

    sput-object v2, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    .line 196
    invoke-static {}, Lcom/nielsen/app/sdk/t;->a()Lcom/nielsen/app/sdk/t;

    move-result-object v2

    sput-object v2, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    .line 198
    invoke-static {}, Lcom/nielsen/app/sdk/e;->a()Lcom/nielsen/app/sdk/e;

    move-result-object v2

    sput-object v2, Lcom/nielsen/app/sdk/o;->k:Lcom/nielsen/app/sdk/e;

    .line 200
    const/4 v2, 0x0

    const-string v3, "App SDK was successfully initiated."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move v0, v1

    .line 208
    goto/16 :goto_0

    .line 182
    :catch_5
    move-exception v1

    move-object v2, v3

    goto/16 :goto_2

    :cond_7
    move v3, v0

    goto/16 :goto_1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    invoke-static {}, Lcom/nielsen/app/sdk/w;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 522
    .line 523
    sget-object v1, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    if-nez v1, :cond_2

    .line 524
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 545
    :cond_1
    :goto_0
    return v0

    .line 525
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 526
    :cond_3
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 527
    :cond_4
    invoke-static {}, Lcom/nielsen/app/sdk/o;->r()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 528
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 529
    :cond_5
    sget-object v1, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/w;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 530
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 535
    :cond_6
    :try_start_0
    sget-object v1, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    invoke-virtual {v1, p0}, Lcom/nielsen/app/sdk/t;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 540
    :goto_1
    if-nez v0, :cond_1

    .line 541
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 538
    :catch_0
    move-exception v1

    const/4 v2, 0x1

    const/16 v3, 0x45

    const-string v4, "Failed starting session"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 677
    const-string v1, ""

    .line 678
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    if-nez v0, :cond_3

    .line 679
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    move-object v0, v1

    .line 689
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    :cond_1
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 692
    :cond_2
    return-object v0

    .line 683
    :cond_3
    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    const/4 v2, 0x1

    const/16 v3, 0x45

    const-string v4, "Could not get the NUID number."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/16 v6, 0x57

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 782
    .line 783
    sget-object v1, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    if-nez v1, :cond_2

    .line 784
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 804
    :cond_1
    :goto_0
    return v0

    .line 789
    :cond_2
    :try_start_0
    sget-object v1, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v1, p0}, Lcom/nielsen/app/sdk/b;->d(Ljava/lang/String;)V

    .line 790
    const/16 v1, 0x49

    const-string v3, "Response from Opt In/Out web page (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v2

    .line 800
    :goto_1
    if-nez v0, :cond_1

    .line 801
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 794
    :catch_0
    move-exception v1

    const-string v3, "Could not set Opt In/Out App SDK. No such algorithm"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v6, v3, v4}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 796
    :catch_1
    move-exception v1

    const-string v3, "Could not set Opt In/Out App SDK. No such padding"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v6, v3, v4}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 798
    :catch_2
    move-exception v1

    const-string v3, "Could not set Opt In/Out App SDK. General exception"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v6, v3, v4}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static e()Ljava/lang/String;
    .locals 6

    .prologue
    .line 704
    const-string v1, ""

    .line 705
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    if-nez v0, :cond_3

    .line 706
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    move-object v0, v1

    .line 715
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 716
    :cond_1
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 718
    :cond_2
    return-object v0

    .line 710
    :cond_3
    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    const/4 v2, 0x1

    const/16 v3, 0x45

    const-string v4, "Could not get the Device ID number."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 729
    const-string v0, ""

    .line 731
    sget-object v1, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    if-nez v1, :cond_3

    .line 736
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 742
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 747
    :cond_1
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 749
    :cond_2
    return-object v0

    .line 739
    :cond_3
    sget-object v0, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/b;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static g()Lcom/nielsen/app/sdk/o;
    .locals 2

    .prologue
    .line 877
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    return-object v0
.end method

.method public static h()Lcom/nielsen/app/sdk/w;
    .locals 2

    .prologue
    .line 915
    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    if-nez v0, :cond_0

    .line 916
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk utilities object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    return-object v0
.end method

.method public static i()Lcom/nielsen/app/sdk/b;
    .locals 2

    .prologue
    .line 934
    sget-object v0, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    if-nez v0, :cond_0

    .line 935
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk configuration object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    return-object v0
.end method

.method public static j()Lcom/nielsen/app/sdk/a;
    .locals 2

    .prologue
    .line 953
    sget-object v0, Lcom/nielsen/app/sdk/o;->h:Lcom/nielsen/app/sdk/a;

    if-nez v0, :cond_0

    .line 954
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk cache object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->h:Lcom/nielsen/app/sdk/a;

    return-object v0
.end method

.method public static k()Lcom/nielsen/app/sdk/k;
    .locals 2

    .prologue
    .line 972
    sget-object v0, Lcom/nielsen/app/sdk/o;->i:Lcom/nielsen/app/sdk/k;

    if-nez v0, :cond_0

    .line 973
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk scheduler object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->i:Lcom/nielsen/app/sdk/k;

    return-object v0
.end method

.method public static l()Lcom/nielsen/app/sdk/AppNative;
    .locals 2

    .prologue
    .line 991
    sget-object v0, Lcom/nielsen/app/sdk/o;->j:Lcom/nielsen/app/sdk/AppNative;

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk native object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->j:Lcom/nielsen/app/sdk/AppNative;

    return-object v0
.end method

.method public static m()Lcom/nielsen/app/sdk/e;
    .locals 2

    .prologue
    .line 1010
    sget-object v0, Lcom/nielsen/app/sdk/o;->k:Lcom/nielsen/app/sdk/e;

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk client logger object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->k:Lcom/nielsen/app/sdk/e;

    return-object v0
.end method

.method public static n()Lcom/nielsen/app/sdk/t;
    .locals 2

    .prologue
    .line 1029
    sget-object v0, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk processor manager object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    return-object v0
.end method

.method public static o()Lcom/nielsen/app/sdk/h;
    .locals 2

    .prologue
    .line 1048
    sget-object v0, Lcom/nielsen/app/sdk/o;->m:Lcom/nielsen/app/sdk/h;

    if-nez v0, :cond_0

    .line 1049
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk request manager object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->m:Lcom/nielsen/app/sdk/h;

    return-object v0
.end method

.method public static p()Lcom/nielsen/app/sdk/p;
    .locals 2

    .prologue
    .line 1067
    sget-object v0, Lcom/nielsen/app/sdk/o;->n:Lcom/nielsen/app/sdk/p;

    if-nez v0, :cond_0

    .line 1068
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk keychain object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->n:Lcom/nielsen/app/sdk/p;

    return-object v0
.end method

.method public static q()Lcom/nielsen/app/sdk/d;
    .locals 2

    .prologue
    .line 1086
    sget-object v0, Lcom/nielsen/app/sdk/o;->o:Lcom/nielsen/app/sdk/d;

    if-nez v0, :cond_0

    .line 1087
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no AppSdk location manager object yet!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->o:Lcom/nielsen/app/sdk/d;

    return-object v0
.end method

.method private static r()Z
    .locals 2

    .prologue
    .line 760
    const/4 v0, 0x1

    .line 762
    sget-object v1, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    if-nez v1, :cond_1

    .line 763
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 768
    :goto_0
    return v0

    .line 765
    :cond_1
    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->d()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 328
    monitor-enter p0

    .line 331
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nielsen/app/sdk/o;->a:Z

    .line 333
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    if-nez v0, :cond_1

    .line 334
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    move v0, v1

    .line 346
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/o;->a:Z

    .line 360
    :goto_1
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/o;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 337
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/nielsen/app/sdk/t;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 340
    :try_start_2
    sget-object v2, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    const-string v3, "nol_backgroundMode"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b;->b(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v2

    const/16 v2, 0x45

    :try_start_3
    const-string v3, "App SDK Config is not configured correctly"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 352
    :cond_2
    const/4 v0, 0x2

    :try_start_4
    const-string v1, "App SDK closed while application goes into background:"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/o;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 355
    :catch_1
    move-exception v0

    const/16 v0, 0x45

    :try_start_5
    const-string v1, "Failure while App SDK goes into background"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final a([Z)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 560
    .line 562
    sget-object v1, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    if-nez v1, :cond_2

    .line 563
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 600
    :cond_1
    :goto_0
    return v0

    .line 564
    :cond_2
    invoke-static {}, Lcom/nielsen/app/sdk/o;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 565
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 566
    :cond_3
    sget-object v1, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/w;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 567
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 573
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    aput-boolean v2, p1, v1

    .line 576
    sget-object v1, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/t;->f()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 578
    const/16 v3, 0x49

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "Session stopped "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_6

    const-string v1, "successfully"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 580
    iget-boolean v1, p0, Lcom/nielsen/app/sdk/o;->a:Z

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 581
    const/4 v1, 0x2

    const-string v3, "App SDK closed when playing back ends in background:"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/nielsen/app/sdk/q;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 583
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/o;->close()V

    .line 585
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nielsen/app/sdk/o;->a:Z

    .line 588
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, p1, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    move v0, v2

    .line 596
    :goto_2
    if-nez v0, :cond_1

    .line 597
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_0

    .line 578
    :cond_6
    :try_start_2
    const-string v1, "failed"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 593
    :catch_0
    move-exception v1

    move v2, v0

    :goto_3
    const/16 v3, 0x45

    const-string v4, "Failed stopping session"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v4, v0}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v3, 0xf9

    const/4 v6, 0x0

    .line 449
    .line 451
    sget-object v0, Lcom/nielsen/app/sdk/o;->d:Lcom/nielsen/app/sdk/o;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    if-nez v0, :cond_1

    .line 452
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 507
    :goto_0
    return v6

    .line 458
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/o;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 460
    invoke-static {}, Lcom/nielsen/app/sdk/o;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    .line 504
    :goto_1
    iget-object v1, p0, Lcom/nielsen/app/sdk/o;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v6, v0

    .line 505
    goto :goto_0

    .line 462
    :cond_2
    :try_start_1
    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    move v0, v6

    goto :goto_1

    .line 466
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 467
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid ID3. Empty string"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x45

    :try_start_2
    const-string v4, "Interruption while processing ID3 tag (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    iget-object v0, p0, Lcom/nielsen/app/sdk/o;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 470
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 472
    if-ge v0, v3, :cond_7

    .line 473
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid ID3. Length too short("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 496
    :catch_1
    move-exception v0

    .line 498
    :try_start_4
    invoke-static {}, Lcom/nielsen/app/sdk/l;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nielsen AppSDK: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_6
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x45

    const-string v4, "Invalid format ID3 tag (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 504
    iget-object v0, p0, Lcom/nielsen/app/sdk/o;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 477
    :cond_7
    :try_start_5
    const-string v1, "www.nielsen.com"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 478
    if-ltz v1, :cond_8

    if-lez v1, :cond_9

    .line 479
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid ID3. Didn\'t start with Nielsen domain"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 504
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/o;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 482
    :cond_9
    if-lt v0, v3, :cond_a

    .line 483
    const/4 v0, 0x0

    const/16 v1, 0xf9

    :try_start_6
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 486
    :cond_a
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 487
    array-length v0, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_b

    .line 488
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid ID3. Did not have 7 parts separated by \"/\" characters"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_b
    sget-object v0, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    invoke-virtual {v0, p1}, Lcom/nielsen/app/sdk/t;->b(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    goto/16 :goto_1
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/nielsen/app/sdk/o;->l:Lcom/nielsen/app/sdk/t;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/t;->close()V

    .line 221
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/o;->k:Lcom/nielsen/app/sdk/e;

    if-eqz v0, :cond_1

    .line 222
    sget-object v0, Lcom/nielsen/app/sdk/o;->k:Lcom/nielsen/app/sdk/e;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/e;->close()V

    .line 225
    :cond_1
    sget-object v0, Lcom/nielsen/app/sdk/o;->o:Lcom/nielsen/app/sdk/d;

    if-eqz v0, :cond_2

    .line 226
    sget-object v0, Lcom/nielsen/app/sdk/o;->o:Lcom/nielsen/app/sdk/d;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/d;->close()V

    .line 229
    :cond_2
    sget-object v0, Lcom/nielsen/app/sdk/o;->h:Lcom/nielsen/app/sdk/a;

    if-eqz v0, :cond_3

    .line 230
    sget-object v0, Lcom/nielsen/app/sdk/o;->h:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a;->a()Z

    .line 233
    :cond_3
    sget-object v0, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    if-eqz v0, :cond_4

    .line 234
    sget-object v0, Lcom/nielsen/app/sdk/o;->g:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/b;->close()V

    .line 237
    :cond_4
    sget-object v0, Lcom/nielsen/app/sdk/o;->n:Lcom/nielsen/app/sdk/p;

    if-eqz v0, :cond_5

    .line 238
    sget-object v0, Lcom/nielsen/app/sdk/o;->n:Lcom/nielsen/app/sdk/p;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/p;->close()V

    .line 241
    :cond_5
    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    if-eqz v0, :cond_6

    .line 242
    sget-object v0, Lcom/nielsen/app/sdk/o;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->close()V

    .line 245
    :cond_6
    sget-object v0, Lcom/nielsen/app/sdk/o;->i:Lcom/nielsen/app/sdk/k;

    if-eqz v0, :cond_8

    .line 248
    sget-object v0, Lcom/nielsen/app/sdk/o;->i:Lcom/nielsen/app/sdk/k;

    const-string v1, "AppUpload"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->c(Ljava/lang/String;)Lcom/nielsen/app/sdk/k$a;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_7

    .line 250
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/k$a;->a()Z

    .line 253
    :cond_7
    sget-object v0, Lcom/nielsen/app/sdk/o;->i:Lcom/nielsen/app/sdk/k;

    const-string v1, "AppUpload"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->b(Ljava/lang/String;)Z

    .line 256
    :cond_8
    sget-object v0, Lcom/nielsen/app/sdk/o;->h:Lcom/nielsen/app/sdk/a;

    if-eqz v0, :cond_9

    .line 257
    sget-object v0, Lcom/nielsen/app/sdk/o;->h:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a;->close()V

    .line 260
    :cond_9
    sget-object v0, Lcom/nielsen/app/sdk/o;->e:Lcom/nielsen/app/sdk/q;

    if-eqz v0, :cond_a

    .line 261
    sget-object v0, Lcom/nielsen/app/sdk/o;->e:Lcom/nielsen/app/sdk/q;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/q;->close()V

    .line 264
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/o;->b:Z

    .line 265
    return-void
.end method
