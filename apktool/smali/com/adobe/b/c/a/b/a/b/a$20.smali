.class final Lcom/adobe/b/c/a/b/a/b/a$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/b/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/b/a;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 314
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v11

    monitor-enter v11

    .line 315
    :try_start_0
    check-cast p1, Lcom/adobe/b/a/a;

    .line 316
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 318
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#_onApiVideoStart(id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "videoId"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "videoName"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "videoLength"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "streamType"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", playerName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "playerName"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 326
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v4, "_onApiVideoStart"

    invoke-static {v3, v4}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v11

    .line 378
    :goto_0
    return-object v10

    .line 328
    :cond_0
    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "videoId"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "streamType"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "videoLength"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "playhead"

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "playerName"

    aput-object v5, v4, v3

    .line 329
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->d(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/b;

    move-result-object v5

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v5, v3, v4}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/util/HashMap;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 330
    monitor-exit v11

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 333
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->f:Lcom/adobe/b/c/a/b/a/d/a/b;

    const-string v3, "rsid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/b;->a(Ljava/lang/String;)V

    .line 334
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->f:Lcom/adobe/b/c/a/b/a/d/a/b;

    const-string v3, "trackingServer"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/b;->b(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->f:Lcom/adobe/b/c/a/b/a/d/a/b;

    const-string v3, "useSsl"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/b;->a(Ljava/lang/Boolean;)V

    .line 337
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->h:Lcom/adobe/b/c/a/b/a/d/a/h;

    const-string v3, "ovp"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/h;->a(Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->h:Lcom/adobe/b/c/a/b/a/d/a/h;

    const-string v3, "sdk"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/h;->b(Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->h:Lcom/adobe/b/c/a/b/a/d/a/h;

    const-string v3, "channel"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/h;->c(Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->h:Lcom/adobe/b/c/a/b/a/d/a/h;

    const-string v3, "version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/h;->e(Ljava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->h:Lcom/adobe/b/c/a/b/a/d/a/h;

    const-string v3, "apiLvl"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/adobe/b/c/a/b/a/d/a/h;->a(J)V

    .line 343
    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v3, "videoId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->h:Lcom/adobe/b/c/a/b/a/d/a/h;

    const-string v3, "playerName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/h;->d(Ljava/lang/String;)V

    .line 347
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/b/a;->h(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adobe/b/c/a/b/a/d/a/c;->b(Ljava/lang/String;)V

    .line 348
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const-string v3, "videoLength"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(D)V

    .line 349
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const-string v4, "main"

    invoke-virtual {v3, v4}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const-string v3, "publisher"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/c;->c(Ljava/lang/String;)V

    .line 352
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v4, v3, Lcom/adobe/b/c/a/b/a/b/a;->d:Lcom/adobe/b/c/a/b/a/d/a/j;

    const-string v3, "streamType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/j;->a(Ljava/lang/String;)V

    .line 355
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->c:Lcom/adobe/b/c/a/b/a/d/a/i;

    invoke-static {}, Lcom/adobe/b/c/a/b/a/b/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adobe/b/c/a/b/a/d/a/i;->a(Ljava/lang/String;)V

    .line 358
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3, v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/util/Map;)V

    .line 361
    const-string v3, "_eventData"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 362
    const-string v3, "_eventData"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 364
    const-string v3, "_eventData"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 365
    const-string v4, "callback"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/b/a/b;

    move-object v9, v3

    .line 370
    :goto_1
    new-instance v3, Lcom/adobe/b/c/a/b/a/d/b/b;

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v4

    const-string v5, "start"

    const-string v6, "playhead"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v8, "metaVideo"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v3 .. v9}, Lcom/adobe/b/c/a/b/a/d/b/b;-><init>(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;DLjava/lang/Object;Lcom/adobe/b/a/b;)V

    .line 376
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$20;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2, v3}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/b/b;)V

    .line 378
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_2
    move-object v9, v10

    goto :goto_1
.end method
