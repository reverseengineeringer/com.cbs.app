.class final Lcom/adobe/b/c/a/b/a/b/a$10;
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
    .line 978
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 981
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v10

    monitor-enter v10

    .line 982
    :try_start_0
    check-cast p1, Lcom/adobe/b/a/a;

    .line 983
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 987
    const-string v1, "_eventData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 988
    const-string v1, "_eventData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 990
    const-string v1, "_eventData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 992
    const-string v2, "callback"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/b/a/b;

    move-object v7, v2

    move-object v9, v1

    .line 997
    :goto_0
    if-eqz v9, :cond_0

    .line 998
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#_onApiTrackError(source="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "source"

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", err_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "error_id"

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/b/a;->g(Lcom/adobe/b/c/a/b/a/b/a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 1007
    monitor-exit v10

    .line 1030
    :goto_1
    return-object v8

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/b/a;->l(Lcom/adobe/b/c/a/b/a/b/a;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "source"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sourceErrorSDK"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1013
    monitor-exit v10

    goto :goto_1

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1017
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v1, v0}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/util/Map;)V

    .line 1019
    new-instance v1, Lcom/adobe/b/c/a/b/a/d/b/b;

    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v2

    const-string v3, "error"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/adobe/b/c/a/b/a/d/b/b;-><init>(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;DLjava/lang/Object;Lcom/adobe/b/a/b;)V

    .line 1025
    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/d/b/b;->a()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v2

    const-string v0, "error_id"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/adobe/b/c/a/b/a/d/a/f;->b(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/d/b/b;->a()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v2

    const-string v0, "source"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/adobe/b/c/a/b/a/d/a/f;->c(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$10;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0, v1}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/b/b;)V

    .line 1030
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    move-object v7, v8

    move-object v9, v8

    goto/16 :goto_0
.end method
