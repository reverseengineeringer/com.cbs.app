.class abstract Lcom/adobe/mobile/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/Long;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/lang/Object;

.field private static final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/mobile/ae$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/adobe/mobile/ae$a;

.field protected c:Ljava/util/Date;

.field protected d:Ljava/util/Date;

.field protected e:Z

.field protected f:Z

.field protected g:I

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/mobile/q;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/mobile/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/m;->k:Ljava/lang/Long;

    .line 89
    new-instance v0, Lcom/adobe/mobile/m$1;

    invoke-direct {v0}, Lcom/adobe/mobile/m$1;-><init>()V

    sput-object v0, Lcom/adobe/mobile/m;->l:Ljava/util/Map;

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/m;->n:Ljava/lang/Object;

    .line 410
    new-instance v0, Lcom/adobe/mobile/m$2;

    invoke-direct {v0}, Lcom/adobe/mobile/m$2;-><init>()V

    sput-object v0, Lcom/adobe/mobile/m;->o:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lorg/json/JSONObject;)Lcom/adobe/mobile/m;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 96
    const-string v0, ""

    .line 102
    :try_start_0
    const-string v2, "template"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 103
    :try_start_1
    sget-object v0, Lcom/adobe/mobile/m;->l:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/m;

    .line 105
    invoke-virtual {v0, p0}, Lcom/adobe/mobile/m;->b(Lorg/json/JSONObject;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .line 124
    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    const-string v0, "Messages - template is required for in-app message"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 109
    goto :goto_0

    .line 112
    :catch_1
    move-exception v2

    :goto_1
    const-string v2, "Messages - invalid template specified for message (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 113
    goto :goto_0

    .line 115
    :catch_2
    move-exception v0

    .line 116
    const-string v2, "Messages - unable to create instance of message (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 117
    goto :goto_0

    .line 119
    :catch_3
    move-exception v0

    .line 120
    const-string v2, "Messages - unable to create instance of message (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 121
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 124
    goto :goto_0

    .line 112
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 440
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 425
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 427
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    const-string v2, "Messages- Unable to deserialize blacklist(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    :cond_0
    return-object v1
.end method

.method protected static c()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "messagesBlackList"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    invoke-static {v0}, Lcom/adobe/mobile/m;->a(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Lcom/adobe/mobile/am$b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string v1, "Messaging - Unable to get shared preferences while loading blacklist. (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 233
    sget-object v1, Lcom/adobe/mobile/m;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/m;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Lcom/adobe/mobile/m;->c()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/m;->m:Ljava/util/HashMap;

    .line 238
    :cond_0
    sget-object v0, Lcom/adobe/mobile/m;->m:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/mobile/m;->b:Lcom/adobe/mobile/ae$a;

    invoke-virtual {v3}, Lcom/adobe/mobile/ae$a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "Messages - adding message \"%s\" to blacklist"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    const-string v2, "messagesBlackList"

    sget-object v3, Lcom/adobe/mobile/m;->m:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/adobe/mobile/m;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lcom/adobe/mobile/am$b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v2, "Messages - Error persisting blacklist map (%s)."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/adobe/mobile/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v1, Lcom/adobe/mobile/m;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/m;->m:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "Messages - removing message \"%s\" from blacklist"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/am;->r()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    const-string v2, "messagesBlackList"

    sget-object v3, Lcom/adobe/mobile/m;->m:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/adobe/mobile/m;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lcom/adobe/mobile/am$b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 268
    :cond_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    const-string v2, "Messages - Error persisting blacklist map (%s)."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected final a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    iget-boolean v0, p0, Lcom/adobe/mobile/m;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adobe/mobile/m;->g:I

    invoke-static {}, Lcom/adobe/mobile/am;->v()I

    move-result v3

    if-eq v0, v3, :cond_0

    instance-of v0, p0, Lcom/adobe/mobile/n;

    if-eqz v0, :cond_0

    move v0, v1

    .line 353
    :goto_0
    return v0

    .line 302
    :cond_0
    invoke-static {}, Lcom/adobe/mobile/ae;->e()Lcom/adobe/mobile/m;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/adobe/mobile/p;

    if-nez v0, :cond_1

    move v0, v2

    .line 303
    goto :goto_0

    .line 307
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    move v0, v2

    .line 308
    goto :goto_0

    .line 312
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/mobile/m;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 313
    goto :goto_0

    .line 318
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/am;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/mobile/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 319
    iget-boolean v0, p0, Lcom/adobe/mobile/m;->e:Z
    :try_end_0
    .catch Lcom/adobe/mobile/am$b; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_6

    move v0, v2

    .line 320
    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 329
    :cond_6
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/adobe/mobile/am;->p()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 330
    iget-object v3, p0, Lcom/adobe/mobile/m;->c:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v2

    .line 331
    goto :goto_0

    .line 333
    :cond_7
    iget-object v3, p0, Lcom/adobe/mobile/m;->d:Ljava/util/Date;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/adobe/mobile/m;->d:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 334
    goto :goto_0

    .line 338
    :cond_8
    iget-object v0, p0, Lcom/adobe/mobile/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/q;

    .line 339
    new-array v4, v1, [Ljava/util/Map;

    aput-object p3, v4, v2

    invoke-virtual {v0, v4}, Lcom/adobe/mobile/q;->a([Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 340
    goto :goto_0

    .line 345
    :cond_a
    invoke-static {p2}, Lcom/adobe/mobile/am;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 347
    iget-object v0, p0, Lcom/adobe/mobile/m;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/q;

    .line 348
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Map;

    aput-object p1, v5, v2

    aput-object v3, v5, v1

    invoke-virtual {v0, v5}, Lcom/adobe/mobile/q;->a([Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 349
    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 353
    goto/16 :goto_0
.end method

.method protected final b()Z
    .locals 3

    .prologue
    .line 271
    sget-object v1, Lcom/adobe/mobile/m;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/m;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 273
    invoke-static {}, Lcom/adobe/mobile/m;->c()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/m;->m:Ljava/util/HashMap;

    .line 276
    :cond_0
    sget-object v0, Lcom/adobe/mobile/m;->m:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Lorg/json/JSONObject;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 224
    :goto_0
    return v0

    .line 135
    :cond_1
    :try_start_0
    const-string v0, "messageId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 137
    const-string v0, "Messages - Unable to create message, messageId is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 138
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    const-string v0, "Messages - Unable to create message, messageId is required"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 143
    goto :goto_0

    .line 147
    :cond_2
    :try_start_1
    const-string v0, "showRule"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1419
    sget-object v0, Lcom/adobe/mobile/m;->o:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/ae$a;

    .line 148
    iput-object v0, p0, Lcom/adobe/mobile/m;->b:Lcom/adobe/mobile/ae$a;

    .line 149
    iget-object v0, p0, Lcom/adobe/mobile/m;->b:Lcom/adobe/mobile/ae$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/mobile/m;->b:Lcom/adobe/mobile/ae$a;

    sget-object v4, Lcom/adobe/mobile/ae$a;->a:Lcom/adobe/mobile/ae$a;

    if-ne v0, v4, :cond_4

    .line 151
    :cond_3
    const-string v0, "Messages - Unable to create message \"%s\", showRule not valid (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 152
    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    const-string v0, "Messages - Unable to create message \"%s\", showRule is required"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 157
    goto :goto_0

    .line 162
    :cond_4
    :try_start_2
    const-string v0, "startDate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 163
    new-instance v0, Ljava/util/Date;

    mul-long/2addr v4, v8

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/adobe/mobile/m;->c:Ljava/util/Date;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    :goto_1
    :try_start_3
    const-string v0, "endDate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 173
    new-instance v0, Ljava/util/Date;

    mul-long/2addr v4, v8

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/adobe/mobile/m;->d:Ljava/util/Date;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 181
    :goto_2
    :try_start_4
    const-string v0, "showOffline"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/mobile/m;->e:Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 189
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/mobile/m;->i:Ljava/util/ArrayList;

    .line 191
    :try_start_5
    const-string v0, "audiences"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v1

    .line 193
    :goto_4
    if-ge v0, v4, :cond_5

    .line 194
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 195
    iget-object v6, p0, Lcom/adobe/mobile/m;->i:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/adobe/mobile/q;->a(Lorg/json/JSONObject;)Lcom/adobe/mobile/q;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 166
    :catch_2
    move-exception v0

    const-string v0, "Messages - Tried to read startDate from message \"%s\" but none found. Using default value"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    new-instance v0, Ljava/util/Date;

    sget-object v3, Lcom/adobe/mobile/m;->k:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/adobe/mobile/m;->c:Ljava/util/Date;

    goto :goto_1

    .line 176
    :catch_3
    move-exception v0

    const-string v0, "Messages - Tried to read endDate from message \"%s\" but none found. Using default value"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 184
    :catch_4
    move-exception v0

    const-string v0, "Messages - Tried to read showOffline from message \"%s\" but none found. Using default value"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iput-boolean v1, p0, Lcom/adobe/mobile/m;->e:Z

    goto :goto_3

    .line 198
    :catch_5
    move-exception v0

    .line 199
    const-string v3, "Messages - failed to read audience for message \"%s\", error: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/mobile/m;->j:Ljava/util/ArrayList;

    .line 205
    :try_start_6
    const-string v0, "triggers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 206
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v1

    .line 207
    :goto_5
    if-ge v0, v4, :cond_6

    .line 208
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 209
    iget-object v6, p0, Lcom/adobe/mobile/m;->j:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/adobe/mobile/q;->a(Lorg/json/JSONObject;)Lcom/adobe/mobile/q;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 212
    :catch_6
    move-exception v0

    .line 213
    const-string v3, "Messages - failed to read trigger for message \"%s\", error: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_6
    iget-object v0, p0, Lcom/adobe/mobile/m;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 218
    const-string v0, "Messages - Unable to load message \"%s\" - at least one valid trigger is required for a message"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 219
    goto/16 :goto_0

    .line 222
    :cond_7
    iput-boolean v1, p0, Lcom/adobe/mobile/m;->f:Z

    move v0, v2

    .line 224
    goto/16 :goto_0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/adobe/mobile/am;->v()I

    move-result v0

    iput v0, p0, Lcom/adobe/mobile/m;->g:I

    .line 361
    invoke-static {p0}, Lcom/adobe/mobile/ae;->a(Lcom/adobe/mobile/m;)V

    .line 362
    return-void
.end method

.method protected final e()V
    .locals 4

    .prologue
    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 369
    const-string v1, "a.message.id"

    iget-object v2, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "a.message.viewed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "In-App Message"

    invoke-static {}, Lcom/adobe/mobile/am;->p()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/adobe/mobile/d;->a(Ljava/lang/String;Ljava/util/Map;J)V

    .line 374
    iget-object v0, p0, Lcom/adobe/mobile/m;->b:Lcom/adobe/mobile/ae$a;

    sget-object v1, Lcom/adobe/mobile/ae$a;->c:Lcom/adobe/mobile/ae$a;

    if-ne v0, v1, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/adobe/mobile/m;->h()V

    .line 379
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/mobile/ae;->a(Lcom/adobe/mobile/m;)V

    .line 380
    return-void
.end method

.method protected final f()V
    .locals 4

    .prologue
    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 384
    const-string v1, "a.message.id"

    iget-object v2, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "a.message.clicked"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "In-App Message"

    invoke-static {}, Lcom/adobe/mobile/am;->p()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/adobe/mobile/d;->a(Ljava/lang/String;Ljava/util/Map;J)V

    .line 389
    iget-object v0, p0, Lcom/adobe/mobile/m;->b:Lcom/adobe/mobile/ae$a;

    sget-object v1, Lcom/adobe/mobile/ae$a;->c:Lcom/adobe/mobile/ae$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/mobile/m;->b:Lcom/adobe/mobile/ae$a;

    sget-object v1, Lcom/adobe/mobile/ae$a;->d:Lcom/adobe/mobile/ae$a;

    if-ne v0, v1, :cond_1

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/adobe/mobile/m;->h()V

    .line 395
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/mobile/ae;->a(Lcom/adobe/mobile/m;)V

    .line 396
    return-void
.end method

.method protected final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Show Rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/mobile/m;->b:Lcom/adobe/mobile/ae$a;

    .line 402
    invoke-virtual {v1}, Lcom/adobe/mobile/ae$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Blacklisted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 404
    invoke-virtual {p0}, Lcom/adobe/mobile/m;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
