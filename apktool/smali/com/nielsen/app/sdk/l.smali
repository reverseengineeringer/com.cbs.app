.class public final Lcom/nielsen/app/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static a:Lcom/nielsen/app/sdk/u;

.field private static b:Lcom/nielsen/app/sdk/l;

.field private static c:Lcom/nielsen/app/sdk/o;

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 165
    sput-object v0, Lcom/nielsen/app/sdk/l;->a:Lcom/nielsen/app/sdk/u;

    .line 167
    sput-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;

    .line 168
    sput-object v0, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    .line 181
    sput-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    .line 245
    sput-boolean v1, Lcom/nielsen/app/sdk/l;->e:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/n;)V
    .locals 4

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p3}, Lcom/nielsen/app/sdk/q;->a(Lcom/nielsen/app/sdk/n;)V

    .line 96
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z

    .line 98
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 100
    invoke-static {p2}, Lcom/nielsen/app/sdk/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "\"nol_devdebug\":\"true\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 103
    sput-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v1, :cond_0

    .line 106
    :cond_0
    sget-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-nez v1, :cond_1

    .line 107
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/nielsen/app/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/u;)Lcom/nielsen/app/sdk/o;

    move-result-object v1

    sput-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    .line 109
    :cond_1
    sget-object v1, Lcom/nielsen/app/sdk/l;->a:Lcom/nielsen/app/sdk/u;

    if-nez v1, :cond_2

    sget-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-eqz v1, :cond_2

    .line 110
    invoke-static {v0, p1}, Lcom/nielsen/app/sdk/u;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/nielsen/app/sdk/u;

    move-result-object v0

    sput-object v0, Lcom/nielsen/app/sdk/l;->a:Lcom/nielsen/app/sdk/u;

    .line 112
    :cond_2
    sget-object v0, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nielsen/app/sdk/l;->a:Lcom/nielsen/app/sdk/u;

    if-eqz v0, :cond_3

    .line 113
    sget-object v0, Lcom/nielsen/app/sdk/l;->a:Lcom/nielsen/app/sdk/u;

    invoke-static {v0}, Lcom/nielsen/app/sdk/o;->a(Lcom/nielsen/app/sdk/u;)Z

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_3
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_4

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: getInstance API - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z

    if-eqz v0, :cond_a

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_4
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :try_start_1
    const-string v1, "AppSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Nielsen AppSDK: getInstance API - JSON EXCEPTION; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_4

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: getInstance API - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z

    if-eqz v0, :cond_7

    const-string v0, "SUCCESS"

    goto :goto_0

    .line 123
    :catch_1
    move-exception v0

    .line 124
    :try_start_2
    const-string v1, "AppSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Nielsen AppSDK: getInstance API - EXCEPTION; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_4

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: getInstance API - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z

    if-eqz v0, :cond_8

    const-string v0, "SUCCESS"

    goto :goto_0

    .line 125
    :catch_2
    move-exception v0

    .line 126
    :try_start_3
    const-string v1, "AppSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Nielsen AppSDK: getInstance API - ERROR; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_4

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: getInstance API - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z

    if-eqz v0, :cond_9

    const-string v0, "SUCCESS"

    goto/16 :goto_0

    .line 129
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v1, :cond_5

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Nielsen AppSDK: getInstance API - "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/nielsen/app/sdk/l;->e:Z

    if-eqz v1, :cond_6

    const-string v1, "SUCCESS"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_5
    throw v0

    .line 130
    :cond_6
    const-string v1, "FAILED"

    goto :goto_1

    :cond_7
    const-string v0, "FAILED"

    goto/16 :goto_0

    :cond_8
    const-string v0, "FAILED"

    goto/16 :goto_0

    :cond_9
    const-string v0, "FAILED"

    goto/16 :goto_0

    :cond_a
    const-string v0, "FAILED"

    goto/16 :goto_0
.end method

.method public static a(J)Lcom/nielsen/app/sdk/l;
    .locals 4

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    sget-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-nez v1, :cond_2

    .line 302
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 307
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nielsen AppSDK: setPlayheadPosition API - FAILED; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_1
    return-object v0

    .line 304
    :cond_2
    invoke-static {p0, p1}, Lcom/nielsen/app/sdk/o;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    sget-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/n;)Lcom/nielsen/app/sdk/l;
    .locals 2

    .prologue
    .line 148
    const-class v1, Lcom/nielsen/app/sdk/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/nielsen/app/sdk/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/nielsen/app/sdk/l;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/n;)V

    sput-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z

    if-nez v0, :cond_1

    .line 155
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 156
    sget-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/l;->close()V

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_1
    :goto_0
    :try_start_2
    sget-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/nielsen/app/sdk/l;
    .locals 5

    .prologue
    .line 259
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: loadMetadata API - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    const/4 v0, 0x0

    .line 265
    if-eqz p0, :cond_1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 266
    :cond_1
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 283
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v1, :cond_3

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Nielsen AppSDK: loadMetadata API - "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_6

    const-string v1, "FAILED"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_3
    return-object v0

    .line 260
    :cond_4
    const-string v0, "EMPTY"

    goto :goto_0

    .line 268
    :cond_5
    sget-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-eqz v1, :cond_2

    .line 272
    :try_start_0
    invoke-static {p0}, Lcom/nielsen/app/sdk/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v1}, Lcom/nielsen/app/sdk/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    sget-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 277
    :catch_0
    move-exception v1

    .line 278
    const-string v2, "AppSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Nielsen AppSDK: loadMetadata API - JSON EXCEPTION; "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 279
    :catch_1
    move-exception v1

    .line 280
    const-string v2, "AppSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Nielsen AppSDK: loadMetadata API - EXCEPTION; "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 284
    :cond_6
    const-string v1, "SUCCESS"

    goto :goto_2
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 179
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)Lcom/nielsen/app/sdk/l;
    .locals 4

    .prologue
    .line 324
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: sendID3 API - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_0
    const/4 v0, 0x0

    .line 330
    :try_start_0
    sget-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-nez v1, :cond_3

    .line 331
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_1
    :goto_1
    return-object v0

    .line 325
    :cond_2
    const-string v0, "EMPTY"

    goto :goto_0

    .line 333
    :cond_3
    :try_start_1
    sget-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    invoke-virtual {v1, p0}, Lcom/nielsen/app/sdk/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    sget-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 337
    :catch_0
    move-exception v1

    .line 339
    sget-boolean v2, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v2, :cond_4

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Nielsen AppSDK: sendID3 API - FAILED - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_4
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_1

    .line 340
    :cond_5
    const-string p0, "EMPTY"

    goto :goto_2
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z

    .line 240
    :cond_0
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_1

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: isValid API - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z

    if-eqz v0, :cond_2

    const-string v0, "TRUE"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_1
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z

    return v0

    .line 241
    :cond_2
    const-string v0, "FALSE"

    goto :goto_0
.end method

.method public static c()Lcom/nielsen/app/sdk/l;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 400
    sget-object v3, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-nez v3, :cond_1

    .line 401
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    move-object v0, v2

    .line 415
    :goto_0
    sget-boolean v2, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v2, :cond_0

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Nielsen AppSDK: stop API - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v1, "BACKGROUND"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_3

    const-string v1, "FAILED"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_0
    return-object v0

    .line 403
    :cond_1
    new-array v3, v1, [Z

    .line 404
    aput-boolean v0, v3, v0

    .line 406
    sget-object v4, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    invoke-virtual {v4, v3}, Lcom/nielsen/app/sdk/o;->a([Z)Z

    move-result v4

    .line 408
    if-eqz v4, :cond_4

    aget-boolean v3, v3, v0

    if-ne v3, v1, :cond_4

    .line 409
    sput-object v2, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    .line 413
    :goto_3
    sget-object v1, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;

    move v5, v0

    move-object v0, v1

    move v1, v5

    goto :goto_0

    .line 416
    :cond_2
    const-string v1, "STOPPED"

    goto :goto_1

    :cond_3
    const-string v1, "SUCCESS"

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public static c(Ljava/lang/String;)Lcom/nielsen/app/sdk/l;
    .locals 5

    .prologue
    .line 361
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: play API - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_0
    const/4 v0, 0x0

    .line 367
    :try_start_0
    invoke-static {p0}, Lcom/nielsen/app/sdk/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    sget-object v2, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-nez v2, :cond_4

    .line 370
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 379
    :cond_1
    :goto_1
    sget-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v1, :cond_2

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Nielsen AppSDK: play API - "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_5

    const-string v1, "FAILED"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_2
    return-object v0

    .line 362
    :cond_3
    const-string v0, "EMPTY"

    goto :goto_0

    .line 371
    :cond_4
    :try_start_1
    invoke-static {v1}, Lcom/nielsen/app/sdk/o;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    sget-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 374
    :catch_0
    move-exception v1

    .line 375
    const-string v2, "AppSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Nielsen AppSDK: play API - JSON EXCEPTION; "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 376
    :catch_1
    move-exception v1

    .line 377
    const-string v2, "AppSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Nielsen AppSDK: play API - EXCEPTION; "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 380
    :cond_5
    const-string v1, "SUCCESS"

    goto :goto_2
.end method

.method public static d(Ljava/lang/String;)Lcom/nielsen/app/sdk/l;
    .locals 3

    .prologue
    .line 460
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: userOptOut API - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_0
    const/4 v0, 0x0

    .line 466
    sget-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-nez v1, :cond_4

    .line 468
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 481
    :cond_1
    :goto_1
    sget-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v1, :cond_2

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Nielsen AppSDK: userOptOut API - "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_7

    const-string v1, "FAILED"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_2
    return-object v0

    .line 461
    :cond_3
    const-string v0, "NULL"

    goto :goto_0

    .line 470
    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 475
    :cond_5
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    goto :goto_1

    .line 477
    :cond_6
    invoke-static {p0}, Lcom/nielsen/app/sdk/o;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    sget-object v0, Lcom/nielsen/app/sdk/l;->b:Lcom/nielsen/app/sdk/l;

    goto :goto_1

    .line 482
    :cond_7
    const-string v1, "SUCCESS"

    goto :goto_2
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    const-string v0, ""

    .line 497
    sget-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-nez v1, :cond_1

    .line 498
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 502
    :goto_0
    sget-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    :cond_0
    return-object v0

    .line 500
    :cond_1
    invoke-static {}, Lcom/nielsen/app/sdk/o;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 516
    const-string v0, ""

    .line 518
    sget-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-nez v1, :cond_1

    .line 519
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 524
    :goto_0
    sget-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v1, :cond_0

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Nielsen AppSDK: getNielsenId API - "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_0
    return-object v0

    .line 521
    :cond_1
    invoke-static {}, Lcom/nielsen/app/sdk/o;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_2
    const-string v1, "NONE"

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 611
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_0

    .line 617
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 619
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 624
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 626
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 629
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 635
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 639
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    sget-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v1, :cond_2

    .line 646
    :cond_2
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 538
    const-string v0, ""

    .line 540
    sget-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-nez v1, :cond_1

    .line 541
    invoke-static {}, Lcom/nielsen/app/sdk/q;->a()V

    .line 546
    :goto_0
    sget-boolean v1, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v1, :cond_0

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Nielsen AppSDK: getDeviceId API - "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_0
    return-object v0

    .line 543
    :cond_1
    invoke-static {}, Lcom/nielsen/app/sdk/o;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_2
    const-string v1, "NONE"

    goto :goto_1
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 560
    invoke-static {}, Lcom/nielsen/app/sdk/o;->c()Ljava/lang/String;

    move-result-object v1

    .line 562
    sget-boolean v0, Lcom/nielsen/app/sdk/l;->d:Z

    if-eqz v0, :cond_0

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: getMeterVersion API - "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_0
    return-object v1

    .line 563
    :cond_1
    const-string v0, "NONE"

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    sget-object v0, Lcom/nielsen/app/sdk/l;->a:Lcom/nielsen/app/sdk/u;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/nielsen/app/sdk/l;->a:Lcom/nielsen/app/sdk/u;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/u;->close()V

    .line 194
    sput-object v1, Lcom/nielsen/app/sdk/l;->a:Lcom/nielsen/app/sdk/u;

    .line 196
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    if-eqz v0, :cond_1

    .line 197
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nielsen/app/sdk/l;->e:Z

    .line 199
    sget-object v0, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/o;->close()V

    .line 200
    sput-object v1, Lcom/nielsen/app/sdk/l;->c:Lcom/nielsen/app/sdk/o;

    .line 202
    :cond_1
    return-void
.end method
