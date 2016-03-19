.class final Lcom/adobe/b/c/a/b/a/b/a$4;
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
    .line 572
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 575
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v4

    monitor-enter v4

    .line 576
    :try_start_0
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 578
    check-cast p1, Lcom/adobe/b/a/a;

    .line 579
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 581
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v5, "_onApiSeekComplete"

    invoke-static {v3, v5}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 659
    :goto_0
    return-object v10

    .line 583
    :cond_0
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "playhead"

    aput-object v6, v5, v3

    .line 584
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->d(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/b;

    move-result-object v6

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v6, v3, v5}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/util/HashMap;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 585
    monitor-exit v4

    goto :goto_0

    .line 660
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 588
    :cond_1
    :try_start_1
    const-string v3, "isInAd"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 589
    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "adId"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "adPosition"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "podPosition"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string v6, "podPlayerName"

    aput-object v6, v5, v3

    .line 590
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->d(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/b;

    move-result-object v6

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v6, v3, v5}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/util/HashMap;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 591
    monitor-exit v4

    goto :goto_0

    .line 594
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

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

    move-result-object v5

    .line 597
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->j(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/a/a;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->j(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->b()Ljava/lang/String;

    move-result-object v3

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->j(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->c()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xa

    invoke-static {v3, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "adPosition"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_4

    .line 601
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    iget-object v5, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v5}, Lcom/adobe/b/c/a/b/a/b/a;->j(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/a/a;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/a;)V

    .line 602
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v5, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v5}, Lcom/adobe/b/c/a/b/a/b/a;->j(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/b/c/a/b/a/d/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Ljava/lang/String;

    .line 619
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const-string v5, "ad"

    invoke-virtual {v3, v5}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;)V

    .line 627
    :goto_2
    const-string v3, "isInChapter"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 628
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "chapterPosition"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "chapterLength"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "chapterOffset"

    aput-object v6, v5, v3

    .line 629
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->d(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/b;

    move-result-object v6

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v6, v3, v5}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/util/HashMap;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 630
    monitor-exit v4

    goto/16 :goto_0

    .line 604
    :cond_4
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/c;->d()Lcom/adobe/b/c/a/b/a/d/a/a;

    move-result-object v3

    if-nez v3, :cond_3

    .line 605
    iget-object v6, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v3, "adId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    new-instance v6, Lcom/adobe/b/c/a/b/a/d/a/a;

    invoke-direct {v6}, Lcom/adobe/b/c/a/b/a/d/a/a;-><init>()V

    .line 609
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->h(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->a(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v6, v5}, Lcom/adobe/b/c/a/b/a/d/a/a;->d(Ljava/lang/String;)V

    .line 611
    const-string v3, "podPlayerName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->c(Ljava/lang/String;)V

    .line 612
    const-string v3, "podPosition"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->e(Ljava/lang/String;)V

    .line 613
    invoke-static {}, Lcom/adobe/b/c/a/b/a/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/adobe/b/c/a/b/a/d/a/a;->b(Ljava/lang/String;)V

    .line 615
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v3, v6}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/a;)V

    goto/16 :goto_1

    .line 621
    :cond_5
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/a;)V

    .line 622
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const-string v5, "main"

    invoke-virtual {v3, v5}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;)V

    .line 624
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v5, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v5, v5, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v5}, Lcom/adobe/b/c/a/b/a/d/a/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 634
    :cond_6
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->k(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/a/d;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v3, "chapterPosition"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->k(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/a/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/d;->a()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_8

    .line 637
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->k(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/a/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/d;)V

    .line 656
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/a/a;)Lcom/adobe/b/c/a/b/a/d/a/a;

    .line 657
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/a/d;)Lcom/adobe/b/c/a/b/a/d/a/d;

    .line 659
    monitor-exit v4

    goto/16 :goto_0

    .line 639
    :cond_8
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/c;->e()Lcom/adobe/b/c/a/b/a/d/a/d;

    move-result-object v3

    if-nez v3, :cond_7

    .line 641
    new-instance v5, Lcom/adobe/b/c/a/b/a/d/a/d;

    invoke-direct {v5}, Lcom/adobe/b/c/a/b/a/d/a/d;-><init>()V

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v6, v6, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v6}, Lcom/adobe/b/c/a/b/a/d/a/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "chapterPosition"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(Ljava/lang/String;)V

    .line 643
    const-string v3, "chapterName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/adobe/b/c/a/b/a/d/a/d;->c(Ljava/lang/String;)V

    .line 644
    const-string v3, "chapterLength"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(D)V

    .line 645
    const-string v3, "chapterPosition"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/adobe/b/c/a/b/a/d/a/d;->a(J)V

    .line 646
    const-string v3, "chapterOffset"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/adobe/b/c/a/b/a/d/a/d;->b(D)V

    .line 647
    invoke-static {}, Lcom/adobe/b/c/a/b/a/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/adobe/b/c/a/b/a/d/a/d;->b(Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v2, v5}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/d;)V

    goto/16 :goto_3

    .line 652
    :cond_9
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$4;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method
