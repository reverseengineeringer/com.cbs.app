.class final Lcom/adobe/b/c/a/b/a/b/a$5;
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
    .line 664
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 667
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v11

    monitor-enter v11

    .line 668
    :try_start_0
    check-cast p1, Lcom/adobe/b/a/a;

    .line 669
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 671
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#_onApiAdStart(id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "adId"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", player_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "podPlayerName"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", parent_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v6, v6, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v6}, Lcom/adobe/b/c/a/b/a/d/a/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pod_pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "adPosition"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 678
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v4, "_onApiAdStart"

    invoke-static {v3, v4}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v11

    .line 739
    :goto_0
    return-object v10

    .line 680
    :cond_0
    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "playhead"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "podPosition"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "podPlayerName"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "adId"

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "adPosition"

    aput-object v5, v4, v3

    .line 681
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->d(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/b;

    move-result-object v5

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v5, v3, v4}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/util/HashMap;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 682
    monitor-exit v11

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 685
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v3, "adId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Ljava/lang/String;

    .line 688
    new-instance v4, Lcom/adobe/b/c/a/b/a/d/a/a;

    invoke-direct {v4}, Lcom/adobe/b/c/a/b/a/d/a/a;-><init>()V

    .line 689
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->h(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->a(Ljava/lang/String;)V

    .line 690
    const-string v3, "podPlayerName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->c(Ljava/lang/String;)V

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v5, v5, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v5}, Lcom/adobe/b/c/a/b/a/d/a/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "podPosition"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->d(Ljava/lang/String;)V

    .line 692
    const-string v3, "adPosition"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->e(Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/adobe/b/c/a/b/a/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->b(Ljava/lang/String;)V

    .line 695
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v3, v4}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/a;)V

    .line 698
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const-string v4, "ad"

    invoke-virtual {v3, v4}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;)V

    .line 701
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3, v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/util/Map;)V

    .line 704
    const-string v3, "metaVideo"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 706
    const-string v3, "metaVideo"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 707
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 710
    :goto_1
    const-string v3, "metaAd"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 712
    const-string v3, "metaAd"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 714
    if-eqz v8, :cond_3

    .line 715
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 722
    :cond_2
    :goto_2
    const-string v3, "_eventData"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 723
    const-string v3, "_eventData"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/HashMap;

    if-eqz v3, :cond_4

    .line 725
    const-string v3, "_eventData"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 726
    const-string v4, "callback"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/b/a/b;

    move-object v9, v3

    .line 731
    :goto_3
    new-instance v3, Lcom/adobe/b/c/a/b/a/d/b/b;

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v4

    const-string v5, "start"

    const-string v6, "playhead"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct/range {v3 .. v9}, Lcom/adobe/b/c/a/b/a/d/b/b;-><init>(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;DLjava/lang/Object;Lcom/adobe/b/a/b;)V

    .line 737
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$5;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2, v3}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/b/b;)V

    .line 739
    monitor-exit v11

    goto/16 :goto_0

    .line 717
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v3

    goto :goto_2

    :cond_4
    move-object v9, v10

    goto :goto_3

    :cond_5
    move-object v8, v10

    goto :goto_1
.end method
