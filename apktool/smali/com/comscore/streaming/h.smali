.class public final Lcom/comscore/streaming/h;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Lcom/comscore/streaming/c;

.field private c:J

.field private d:J

.field private e:I

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/comscore/streaming/r;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ns_st_ci"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "c3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "c4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "c6"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ns_st_st"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ns_st_pu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ns_st_pr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ns_st_ep"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ns_st_sn"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ns_st_en"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ns_st_ct"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/comscore/streaming/h;->a:[Ljava/lang/String;

    iput v3, p0, Lcom/comscore/streaming/h;->e:I

    iput-wide v4, p0, Lcom/comscore/streaming/h;->c:J

    iput-wide v4, p0, Lcom/comscore/streaming/h;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/h;->f:Ljava/util/HashMap;

    iput-boolean v3, p0, Lcom/comscore/streaming/h;->h:Z

    sget-object v0, Lcom/comscore/streaming/r;->a:Lcom/comscore/streaming/r;

    iput-object v0, p0, Lcom/comscore/streaming/h;->g:Lcom/comscore/streaming/r;

    new-instance v0, Lcom/comscore/streaming/c;

    invoke-direct {v0}, Lcom/comscore/streaming/c;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    const-string v1, "ns_st_it"

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Lcom/comscore/streaming/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/comscore/utils/n;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/streaming/h;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ns_st_ci"

    if-ne v4, v5, :cond_1

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "*null"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    invoke-virtual {v0}, Lcom/comscore/streaming/c;->c()Lcom/comscore/streaming/g;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    invoke-virtual {v0}, Lcom/comscore/streaming/c;->c()Lcom/comscore/streaming/g;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    sget-object v1, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/e;

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/h;->b(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    invoke-virtual {v0}, Lcom/comscore/streaming/c;->c()Lcom/comscore/streaming/g;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    sget-object v1, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/e;

    iget-wide v2, p0, Lcom/comscore/streaming/h;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;J)V

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;Lcom/comscore/streaming/r;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/r;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 0
    invoke-static {p1}, Lcom/comscore/utils/n;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/streaming/h;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v0, p0, Lcom/comscore/streaming/h;->g:Lcom/comscore/streaming/r;

    sget-object v1, Lcom/comscore/streaming/r;->a:Lcom/comscore/streaming/r;

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Lcom/comscore/streaming/h;->g:Lcom/comscore/streaming/r;

    :cond_0
    iget-boolean v0, p0, Lcom/comscore/streaming/h;->h:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/comscore/streaming/h;->g:Lcom/comscore/streaming/r;

    if-ne v0, p2, :cond_7

    .line 3000
    invoke-static {v5}, Lcom/comscore/utils/n;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/streaming/h;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/comscore/streaming/h;->a:[Ljava/lang/String;

    array-length v10, v9

    move v4, v2

    :goto_0
    if-ge v4, v10, :cond_6

    aget-object v11, v9, v4

    iget-object v12, p0, Lcom/comscore/streaming/h;->f:Ljava/util/HashMap;

    .line 4000
    if-eqz v11, :cond_4

    if-eqz v12, :cond_2

    move v1, v3

    :goto_1
    if-eqz v8, :cond_3

    move v0, v3

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3000
    :goto_3
    if-nez v0, :cond_5

    move v0, v2

    .line 0
    :goto_4
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    invoke-virtual {v0}, Lcom/comscore/streaming/c;->d()Lcom/comscore/streaming/d;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/comscore/streaming/d;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    invoke-virtual {v0}, Lcom/comscore/streaming/c;->c()Lcom/comscore/streaming/g;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    if-eq v0, v1, :cond_1

    iput-wide v6, p0, Lcom/comscore/streaming/h;->c:J

    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    sget-object v1, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    iget-wide v4, p0, Lcom/comscore/streaming/h;->d:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;J)V

    :cond_1
    :goto_5
    iput-boolean v3, p0, Lcom/comscore/streaming/h;->h:Z

    iput-object p2, p0, Lcom/comscore/streaming/h;->g:Lcom/comscore/streaming/r;

    return-void

    :cond_2
    move v1, v2

    .line 4000
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    .line 3000
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_4

    .line 5000
    :cond_7
    invoke-direct {p0, v6, v7}, Lcom/comscore/streaming/h;->a(J)V

    iget v0, p0, Lcom/comscore/streaming/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/h;->e:I

    const-string v0, "ns_st_cn"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ns_st_cn"

    iget v1, p0, Lcom/comscore/streaming/h;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "ns_st_pn"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ns_st_pn"

    const-string v1, "1"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "ns_st_tp"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ns_st_tp"

    const-string v1, "0"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    invoke-virtual {v0, v5}, Lcom/comscore/streaming/c;->a(Ljava/util/HashMap;)Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/comscore/streaming/h;->f:Ljava/util/HashMap;

    iput-wide v6, p0, Lcom/comscore/streaming/h;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/streaming/h;->d:J

    iget-object v0, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    sget-object v1, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    iget-wide v4, p0, Lcom/comscore/streaming/h;->d:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;J)V

    goto :goto_5
.end method

.method private b(J)J
    .locals 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/comscore/streaming/h;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/comscore/streaming/h;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/comscore/streaming/h;->d:J

    iget-wide v2, p0, Lcom/comscore/streaming/h;->c:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/streaming/h;->d:J

    :goto_0
    iget-wide v0, p0, Lcom/comscore/streaming/h;->d:J

    return-wide v0

    :cond_0
    iput-wide v2, p0, Lcom/comscore/streaming/h;->d:J

    goto :goto_0
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 0
    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/h;->a(J)V

    iget v2, p0, Lcom/comscore/streaming/h;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/streaming/h;->e:I

    invoke-static {p1}, Lcom/comscore/utils/n;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/comscore/streaming/h;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ns_st_cn"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ns_st_cn"

    iget v4, p0, Lcom/comscore/streaming/h;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "ns_st_pn"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ns_st_pn"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v3, "ns_st_tp"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ns_st_tp"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v3, "ns_st_ad"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ns_st_ad"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v3, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    invoke-virtual {v3, v2}, Lcom/comscore/streaming/c;->a(Ljava/util/HashMap;)Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/streaming/h;->d:J

    iget-object v2, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    sget-object v3, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    iget-wide v4, p0, Lcom/comscore/streaming/h;->d:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;J)V

    iput-wide v0, p0, Lcom/comscore/streaming/h;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/streaming/h;->h:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 6000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 0
    iget-object v2, p0, Lcom/comscore/streaming/h;->b:Lcom/comscore/streaming/c;

    sget-object v3, Lcom/comscore/streaming/e;->b:Lcom/comscore/streaming/e;

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/h;->b(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;J)V

    return-void
.end method

.method public final a(Lcom/comscore/streaming/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/a;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ns_st_ct"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "v"

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "ns_st_ct"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, v1}, Lcom/comscore/streaming/h;->b(Ljava/util/HashMap;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comscore/streaming/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/HashMap;Lcom/comscore/streaming/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/b;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "ns_st_ct"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "v"

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "ns_st_ct"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/comscore/streaming/r;->c:Lcom/comscore/streaming/r;

    invoke-direct {p0, v1, v0}, Lcom/comscore/streaming/h;->a(Ljava/util/HashMap;Lcom/comscore/streaming/r;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/comscore/streaming/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
