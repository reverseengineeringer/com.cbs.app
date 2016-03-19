.class final Lcom/adobe/b/c/a/b/a/b/a$21;
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
    .line 383
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/a$21;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 386
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$21;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v9

    monitor-enter v9

    .line 387
    :try_start_0
    check-cast p1, Lcom/adobe/b/a/a;

    .line 388
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 390
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/a$21;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$21;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/a$21;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v2, "_onApiVideoComplete"

    invoke-static {v1, v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v9

    .line 416
    :goto_0
    return-object v8

    .line 395
    :cond_0
    const-string v1, "_eventData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 396
    const-string v1, "_eventData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 398
    const-string v1, "_eventData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 399
    const-string v1, "callback"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/b;

    move-object v7, v0

    .line 405
    :goto_1
    new-instance v1, Lcom/adobe/b/c/a/b/a/d/b/b;

    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$21;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v2

    const-string v3, "complete"

    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$21;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/a/c;->c()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/adobe/b/c/a/b/a/d/b/b;-><init>(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;DLjava/lang/Object;Lcom/adobe/b/a/b;)V

    .line 411
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$21;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0, v1}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/b/b;)V

    .line 414
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$21;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->i(Lcom/adobe/b/c/a/b/a/b/a;)Z

    .line 416
    monitor-exit v9

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v7, v8

    goto :goto_1
.end method
