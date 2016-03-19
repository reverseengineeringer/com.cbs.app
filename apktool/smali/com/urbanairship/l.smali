.class public final Lcom/urbanairship/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/l$a;,
        Lcom/urbanairship/l$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/urbanairship/q;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/l$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/urbanairship/q;

    invoke-direct {v0, p1}, Lcom/urbanairship/q;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/urbanairship/l;-><init>(Lcom/urbanairship/q;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/q;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/l;->a:Ljava/util/concurrent/Executor;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/l;->b:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/l;->d:Ljava/util/List;

    .line 88
    iput-object p1, p0, Lcom/urbanairship/l;->c:Lcom/urbanairship/q;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/l;)Lcom/urbanairship/q;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/urbanairship/l;->c:Lcom/urbanairship/q;

    return-object v0
.end method

.method static synthetic a(Lcom/urbanairship/l;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    .line 1323
    iget-object v1, p0, Lcom/urbanairship/l;->d:Ljava/util/List;

    monitor-enter v1

    .line 1324
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/l$b;

    .line 1325
    invoke-interface {v0, p1}, Lcom/urbanairship/l$b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/urbanairship/l$a;
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Lcom/urbanairship/l;->b:Ljava/util/Map;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/urbanairship/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/l$a;

    .line 346
    :goto_0
    monitor-exit v1

    .line 348
    return-object v0

    .line 343
    :cond_0
    new-instance v0, Lcom/urbanairship/l$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/urbanairship/l$a;-><init>(Lcom/urbanairship/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/urbanairship/l;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/l$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 195
    :goto_0
    return p2

    .line 193
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/l$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 167
    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-wide p2

    .line 172
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/l$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 153
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method final a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/urbanairship/l;->c:Lcom/urbanairship/q;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/urbanairship/q;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 121
    const-string v2, "value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 123
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    iget-object v5, p0, Lcom/urbanairship/l;->b:Ljava/util/Map;

    new-instance v6, Lcom/urbanairship/l$a;

    invoke-direct {v6, p0, v3, v4}, Lcom/urbanairship/l$a;-><init>(Lcom/urbanairship/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final a(Lcom/urbanairship/l$b;)V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/urbanairship/l;->d:Ljava/util/List;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/l;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V
    .locals 2

    .prologue
    .line 282
    if-nez p2, :cond_0

    .line 283
    invoke-virtual {p0, p1}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/l$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/urbanairship/json/d;)V
    .locals 1

    .prologue
    .line 296
    if-nez p2, :cond_0

    .line 297
    invoke-virtual {p0, p1}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-interface {p2}, Lcom/urbanairship/json/d;->e()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/l;->a(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/l$a;->a(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/l$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    .locals 1

    .prologue
    .line 207
    :try_start_0
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/l$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/urbanairship/json/JsonValue;->a:Lcom/urbanairship/json/JsonValue;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/l$a;->a(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/l$a;->a(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/l$a;->a(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 313
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 314
    :goto_0
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/l$a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 313
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/urbanairship/l;->d(Ljava/lang/String;)Lcom/urbanairship/l$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/l$a;->a(Ljava/lang/String;)V

    .line 233
    return-void
.end method
