.class final Lcom/adobe/b/c/a/b/a/b/a$6;
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
    .line 744
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 747
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v11

    monitor-enter v11

    .line 748
    :try_start_0
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 750
    check-cast p1, Lcom/adobe/b/a/a;

    .line 752
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 754
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v4, "_onApiAdComplete"

    invoke-static {v3, v4}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v11

    .line 792
    :goto_0
    return-object v10

    .line 756
    :cond_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "playhead"

    aput-object v5, v4, v3

    .line 757
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->d(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/b;

    move-result-object v5

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v5, v3, v4}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/util/HashMap;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 758
    monitor-exit v11

    goto :goto_0

    .line 793
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 761
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/c;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad"

    if-eq v3, v4, :cond_2

    .line 762
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 763
    monitor-exit v11

    goto :goto_0

    .line 767
    :cond_2
    const-string v3, "_eventData"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 768
    const-string v3, "_eventData"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 770
    const-string v3, "_eventData"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 771
    const-string v4, "callback"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/b/a/b;

    move-object v9, v3

    .line 777
    :goto_1
    new-instance v3, Lcom/adobe/b/c/a/b/a/d/b/b;

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v4

    const-string v5, "complete"

    const-string v6, "playhead"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/adobe/b/c/a/b/a/d/b/b;-><init>(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;DLjava/lang/Object;Lcom/adobe/b/a/b;)V

    .line 783
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2, v3}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/b/b;)V

    .line 786
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/a;)V

    .line 789
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const-string v3, "main"

    invoke-virtual {v2, v3}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;)V

    .line 790
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$6;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_3
    move-object v9, v10

    goto :goto_1
.end method
