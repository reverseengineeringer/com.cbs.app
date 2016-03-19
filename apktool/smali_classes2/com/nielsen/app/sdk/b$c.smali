.class final Lcom/nielsen/app/sdk/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/b$a;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/nielsen/app/sdk/b;

.field private e:J

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/b;Lcom/nielsen/app/sdk/b$c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    iput-object p1, p0, Lcom/nielsen/app/sdk/b$c;->d:Lcom/nielsen/app/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    .line 732
    iput-boolean v2, p0, Lcom/nielsen/app/sdk/b$c;->f:Z

    .line 770
    iput v2, p0, Lcom/nielsen/app/sdk/b$c;->g:I

    .line 771
    const-string v0, "X100zdCIGeIlgZnkYj6UvQ=="

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->h:Ljava/lang/String;

    .line 950
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    .line 951
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    .line 1061
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->k:Ljava/util/List;

    .line 1073
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    .line 1384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b$c;->m:Z

    .line 1463
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->n:Ljava/util/List;

    .line 1475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->a:Ljava/util/Map;

    .line 1501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->b:Ljava/util/Map;

    .line 1528
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->c:Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->a:Ljava/util/Map;

    iget-object v1, p2, Lcom/nielsen/app/sdk/b$c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 610
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->b:Ljava/util/Map;

    iget-object v1, p2, Lcom/nielsen/app/sdk/b$c;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 612
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    iget-object v1, p2, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 613
    iget-object v0, p2, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    iget-object v1, p2, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 618
    return-void
.end method

.method public constructor <init>(Lcom/nielsen/app/sdk/b;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 596
    iput-object p1, p0, Lcom/nielsen/app/sdk/b$c;->d:Lcom/nielsen/app/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    .line 732
    iput-boolean v2, p0, Lcom/nielsen/app/sdk/b$c;->f:Z

    .line 770
    iput v2, p0, Lcom/nielsen/app/sdk/b$c;->g:I

    .line 771
    const-string v0, "X100zdCIGeIlgZnkYj6UvQ=="

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->h:Ljava/lang/String;

    .line 950
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    .line 951
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    .line 1061
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->k:Ljava/util/List;

    .line 1073
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    .line 1384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b$c;->m:Z

    .line 1463
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->n:Ljava/util/List;

    .line 1475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->a:Ljava/util/Map;

    .line 1501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->b:Ljava/util/Map;

    .line 1528
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->c:Ljava/lang/String;

    .line 597
    invoke-virtual {p0, p2, p3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 598
    return-void
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-wide v2, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 629
    const/16 v0, 0x57

    const-string v2, "updateDictionary() failed. No native URL parser object."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 656
    :goto_0
    return v0

    .line 633
    :cond_0
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b$c;->m:Z

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->d:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->b(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v2

    iget-wide v4, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v2, v4, v5, v0}, Lcom/nielsen/app/sdk/AppNative;->a(JLjava/util/HashMap;)Z

    .line 635
    iput-boolean v1, p0, Lcom/nielsen/app/sdk/b$c;->m:Z

    .line 636
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 656
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 643
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 644
    iget-object v1, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 645
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 648
    :cond_3
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->d:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->b(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v0

    iget-wide v4, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    invoke-virtual {v0, v4, v5, v2}, Lcom/nielsen/app/sdk/AppNative;->a(JLjava/util/HashMap;)Z

    .line 649
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method


# virtual methods
.method public final a(JJJLjava/lang/String;)J
    .locals 11

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/nielsen/app/sdk/b$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->d:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->b(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v1

    iget-wide v2, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/nielsen/app/sdk/AppNative;->urlParserCalculatePosition(JJJJLjava/lang/String;)J

    move-result-wide v0

    .line 680
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 992
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x45

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 786
    const-string v0, ""

    .line 790
    :try_start_0
    invoke-direct {p0}, Lcom/nielsen/app/sdk/b$c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-object v0

    .line 796
    :cond_1
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v6, v1

    .line 798
    iget-object v1, p0, Lcom/nielsen/app/sdk/b$c;->d:Lcom/nielsen/app/sdk/b;

    invoke-static {v1}, Lcom/nielsen/app/sdk/b;->b(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v1

    iget-wide v2, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    .line 2420
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v5, p2, v4

    .line 2421
    const-string v4, ""

    .line 2423
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_2

    .line 2426
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v4, p1

    move-object v5, p2

    .line 2427
    invoke-virtual/range {v1 .. v6}, Lcom/nielsen/app/sdk/AppNative;->urlParserExecute(JLjava/lang/String;[Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    :goto_1
    const/4 v1, 0x0

    aget-boolean v1, p2, v1

    if-nez v1, :cond_0

    .line 800
    const/4 v1, 0x1

    const/16 v2, 0x45

    const-string v3, "Could not parse(%s). Error(%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 806
    :catch_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    const-string v4, "Could not parse(%s)"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object p1, v5, v10

    move v1, v11

    move v2, v11

    move v3, v12

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v0, v4

    goto :goto_1
.end method

.method public final declared-synchronized a(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1442
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/HashMap;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 825
    :try_start_0
    iget-wide v2, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 831
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 833
    iget-object v2, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v2

    .line 834
    const/4 v3, 0x0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 836
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 839
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 842
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 844
    invoke-virtual {p0, v0, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    const/16 v3, 0x45

    const-string v4, "Could not parse the CMS data"

    new-array v5, v6, [Ljava/lang/Object;

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 882
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 884
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 886
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 888
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 889
    :goto_1
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 890
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 893
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 894
    :goto_2
    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "<"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ">"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 895
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 898
    :cond_5
    iget-object v5, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 902
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 903
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    .line 905
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    .line 907
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    const-string v1, ":\""

    const-string v2, ":\"|!["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    .line 908
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    const-string v1, "\","

    const-string v2, "]!|\","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    const-string v1, "\"}"

    const-string v2, "]!|\"}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$c;->j:Ljava/lang/String;

    .line 912
    :cond_7
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 913
    :cond_8
    iput-boolean v4, p0, Lcom/nielsen/app/sdk/b$c;->m:Z

    .line 915
    :cond_9
    if-eqz p2, :cond_e

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 917
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 919
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 921
    const/4 v5, 0x0

    .line 923
    const/4 v3, 0x0

    .line 924
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 926
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_b

    .line 927
    iget-object v3, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move v0, v4

    .line 932
    :goto_4
    if-eqz v0, :cond_d

    .line 934
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 936
    iget-object v1, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 938
    invoke-virtual {v3, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 939
    invoke-virtual {p0, v0, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 944
    :cond_d
    invoke-virtual {p0, v1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 948
    :cond_e
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    return-object v0

    :cond_f
    move v0, v5

    goto :goto_4
.end method

.method public final a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 856
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 858
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 859
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 862
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 864
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 866
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 583
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    .line 584
    return-void
.end method

.method public final declared-synchronized a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1407
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1409
    const-string v0, "nol_comment"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    const-string v0, "nol_product"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    const-string v0, "nol_cadence"

    invoke-virtual {v2, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    const-string v0, "nol_url"

    invoke-virtual {v2, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    if-eqz p6, :cond_0

    .line 1416
    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1417
    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1418
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1421
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1423
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1424
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->n:Ljava/util/List;

    invoke-interface {v0, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    :goto_1
    monitor-exit p0

    return-void

    .line 1427
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->n:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 574
    iput-wide p1, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b$c;->m:Z

    .line 576
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 767
    iput p2, p0, Lcom/nielsen/app/sdk/b$c;->g:I

    .line 768
    iput-object p1, p0, Lcom/nielsen/app/sdk/b$c;->h:Ljava/lang/String;

    .line 769
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1013
    iget-boolean v1, p0, Lcom/nielsen/app/sdk/b$c;->m:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    :cond_1
    monitor-exit p0

    return-void

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/List;Ljava/util/Map;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/b$a;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1091
    if-nez p1, :cond_0

    .line 1092
    const/4 v1, 0x0

    .line 1365
    :goto_0
    return v1

    .line 1106
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    .line 1119
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1121
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1122
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1123
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1127
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    .line 1130
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .line 1131
    const/4 v1, 0x0

    move v7, v1

    :goto_2
    if-ge v7, v9, :cond_26

    .line 1133
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nielsen/app/sdk/b$a;

    .line 1134
    if-nez v1, :cond_4

    .line 1135
    const/4 v1, 0x3

    const/16 v2, 0x45

    const-string v3, "Could not parse filter(%i) on (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    :cond_3
    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2

    .line 1139
    :cond_4
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 1141
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$a;->c()Ljava/lang/String;

    move-result-object v3

    .line 1143
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1144
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1148
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$a;->e()Ljava/lang/String;

    move-result-object v10

    .line 1149
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$a;->f()Ljava/lang/String;

    move-result-object v3

    .line 1151
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1152
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 1156
    :goto_4
    const/4 v5, 0x1

    .line 1157
    const/4 v4, 0x0

    .line 1161
    :try_start_0
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$a;->d()I

    move-result v11

    .line 1162
    const/4 v3, 0x0

    move v6, v3

    move v3, v5

    move-object v5, v2

    :goto_5
    if-ge v6, v11, :cond_20

    .line 1164
    invoke-virtual {v1, v6}, Lcom/nielsen/app/sdk/b$a;->a(I)Ljava/lang/String;

    move-result-object v12

    .line 1165
    if-eqz v12, :cond_29

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "nol_"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1169
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1170
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1171
    :cond_5
    const-string v2, ""

    .line 1175
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "nol_fdcid"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "nol_pccid"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8

    .line 1176
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/b$c;->h:Ljava/lang/String;

    .line 1179
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1181
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1183
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "\\b"

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "\\b"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1184
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 1186
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "\\b"

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "\\b"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1187
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 1189
    const-string v2, "+"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    .line 1191
    if-eqz v3, :cond_a

    .line 1193
    const/4 v3, 0x0

    .line 1195
    const/4 v2, 0x0

    .line 1196
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    .line 1198
    invoke-virtual {v5, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    .line 1199
    const/4 v2, 0x1

    :goto_6
    move v4, v3

    move-object v3, v5

    .line 1162
    :goto_7
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v3

    move v3, v4

    move v4, v2

    goto/16 :goto_5

    .line 1201
    :cond_9
    invoke-virtual {v15, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    goto :goto_6

    .line 1207
    :cond_a
    const/4 v2, 0x0

    .line 1208
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    .line 1210
    invoke-virtual {v5, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    .line 1211
    const/4 v2, 0x1

    .line 1217
    :cond_b
    :goto_8
    if-eqz v4, :cond_d

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_9
    move v4, v3

    move-object v3, v5

    .line 1218
    goto :goto_7

    .line 1213
    :cond_c
    invoke-virtual {v15, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    goto :goto_8

    .line 1217
    :cond_d
    const/4 v2, 0x0

    goto :goto_9

    .line 1220
    :cond_e
    const-string v2, "-"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    .line 1222
    if-eqz v3, :cond_10

    .line 1224
    const/4 v3, 0x0

    .line 1226
    const/4 v2, 0x0

    .line 1227
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    .line 1228
    invoke-virtual {v5, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1f

    .line 1231
    invoke-virtual {v15, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    :goto_a
    move v4, v3

    move-object v3, v5

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    goto :goto_a

    .line 1237
    :cond_10
    const/4 v2, 0x0

    .line 1238
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_11

    .line 1239
    invoke-virtual {v5, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 1242
    invoke-virtual {v15, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    .line 1245
    :cond_11
    :goto_b
    if-eqz v4, :cond_13

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    :goto_c
    move v4, v3

    move-object v3, v5

    .line 1246
    goto/16 :goto_7

    .line 1242
    :cond_12
    const/4 v2, 0x0

    goto :goto_b

    .line 1245
    :cond_13
    const/4 v2, 0x0

    goto :goto_c

    .line 1248
    :cond_14
    const-string v2, "++"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1a

    .line 1250
    if-eqz v3, :cond_16

    .line 1252
    const/4 v3, 0x0

    .line 1254
    const/4 v2, 0x0

    .line 1255
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    .line 1256
    invoke-virtual {v5, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_15

    .line 1257
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 1259
    :cond_15
    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    goto/16 :goto_6

    .line 1265
    :cond_16
    const/4 v2, 0x0

    .line 1266
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_17

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_17

    .line 1267
    invoke-virtual {v5, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_18

    .line 1268
    const/4 v2, 0x1

    .line 1273
    :cond_17
    :goto_d
    if-eqz v4, :cond_19

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    :goto_e
    move v4, v3

    move-object v3, v5

    .line 1274
    goto/16 :goto_7

    .line 1270
    :cond_18
    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    goto :goto_d

    .line 1273
    :cond_19
    const/4 v2, 0x0

    goto :goto_e

    .line 1276
    :cond_1a
    const-string v2, "--"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_29

    .line 1278
    if-eqz v3, :cond_1c

    .line 1280
    const/4 v3, 0x0

    .line 1282
    const/4 v2, 0x0

    .line 1283
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    .line 1284
    invoke-virtual {v5, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1f

    .line 1287
    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    :goto_f
    move v4, v3

    move-object v3, v5

    goto/16 :goto_7

    :cond_1b
    const/4 v2, 0x0

    goto :goto_f

    .line 1293
    :cond_1c
    const/4 v2, 0x0

    .line 1294
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1d

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1d

    .line 1295
    invoke-virtual {v5, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1e

    .line 1298
    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    .line 1301
    :cond_1d
    :goto_10
    if-eqz v4, :cond_1f

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto/16 :goto_6

    .line 1298
    :cond_1e
    const/4 v2, 0x0

    goto :goto_10

    :cond_1f
    move v2, v3

    .line 1301
    const/4 v3, 0x0

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto/16 :goto_6

    .line 1306
    :cond_20
    if-nez v3, :cond_3

    .line 1310
    if-eqz v4, :cond_25

    .line 1312
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$a;->i()I

    move-result v2

    if-lez v2, :cond_24

    .line 1313
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$a;->j()Ljava/util/Map;

    move-result-object v2

    move-object v5, v2

    .line 1322
    :goto_11
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1327
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1329
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1331
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "nol_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1333
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1334
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_21

    move-object v3, v4

    .line 1343
    :cond_21
    const-string v4, "nol_disabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_22

    if-eqz v3, :cond_22

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_22

    .line 1344
    const/16 v4, 0x49

    const-string v10, "(%s) disabled by rule: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 2522
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nielsen/app/sdk/b$c;->c:Ljava/lang/String;

    .line 1344
    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$a;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v4, v10, v11}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    :cond_22
    if-eqz p2, :cond_23

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    .line 1350
    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    .line 1357
    :catch_0
    move-exception v1

    const/4 v1, 0x3

    const/16 v2, 0x45

    const-string v3, "Cound not evaluate conditions on rule"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1315
    :cond_24
    :try_start_1
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$a;->g()Ljava/util/Map;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_11

    .line 1319
    :cond_25
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$a;->h()Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_11

    .line 1361
    :cond_26
    if-eqz p2, :cond_27

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    .line 1365
    :cond_27
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_28
    move v4, v3

    move-object v3, v5

    goto/16 :goto_7

    :cond_29
    move v2, v4

    move v4, v3

    move-object v3, v5

    goto/16 :goto_7

    :cond_2a
    move-object v2, v3

    goto/16 :goto_4
.end method

.method public final b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 742
    const-string v6, ""

    .line 746
    :try_start_0
    invoke-direct {p0}, Lcom/nielsen/app/sdk/b$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->d:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->b(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v0

    iget-wide v2, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/nielsen/app/sdk/AppNative;->urlParserProcessIagData(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    .line 751
    :catch_0
    move-exception v0

    const/16 v3, 0x45

    const-string v4, "Could not parse IAG string"

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1030
    const-string v0, ""

    .line 1032
    const-string v1, "nol_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-object v0

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1036
    if-nez v0, :cond_2

    .line 1038
    const-string v0, ""

    goto :goto_0

    .line 1044
    :cond_2
    :goto_1
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final b(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 968
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 970
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 971
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 974
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 976
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 978
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b(JJJLjava/lang/String;)Z
    .locals 11

    .prologue
    .line 700
    sub-long v0, p1, p5

    add-long v2, v0, p3

    .line 703
    const-string v0, "nol_weekEndUTC"

    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 705
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 708
    :goto_0
    iget-boolean v4, p0, Lcom/nielsen/app/sdk/b$c;->f:Z

    if-nez v4, :cond_1

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/nielsen/app/sdk/b$c;->g:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 710
    const-string v0, "onWeekEndUTC"

    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_0

    .line 712
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 715
    :cond_0
    const-string v0, "nol_week"

    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    const-string v1, "nol_period"

    invoke-virtual {p0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 717
    const-string v2, "nol_weekEndUTC"

    invoke-virtual {p0, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    const-string v3, "nol_weekStartUTC"

    invoke-virtual {p0, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 720
    const/16 v4, 0x49

    const-string v5, "Applying Week End filter : name(%s) period(%s) end(%s) start(%s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    invoke-static {v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b$c;->f:Z

    .line 727
    :cond_1
    invoke-direct {p0}, Lcom/nielsen/app/sdk/b$c;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->d:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->b(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v1

    iget-wide v2, p0, Lcom/nielsen/app/sdk/b$c;->e:J

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/nielsen/app/sdk/AppNative;->urlParserCalculateVariable(JJJJLjava/lang/String;)Z

    move-result v0

    .line 730
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1381
    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/b$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1462
    return-void
.end method
