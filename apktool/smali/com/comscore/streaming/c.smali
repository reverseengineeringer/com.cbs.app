.class public final Lcom/comscore/streaming/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/comscore/a/b;

.field private b:Ljava/util/HashMap;
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

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Lcom/comscore/streaming/g;

.field private g:I

.field private h:Lcom/comscore/streaming/f;

.field private i:Ljava/lang/Runnable;

.field private j:Z

.field private k:Ljava/lang/Runnable;

.field private l:Lcom/comscore/streaming/n;

.field private m:Ljava/lang/Runnable;

.field private n:J

.field private o:I

.field private p:J

.field private q:Z

.field private r:Lcom/comscore/streaming/g;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/HashMap;
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

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const-wide/32 v10, 0xea60

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/comscore/streaming/c;->c:Ljava/lang/String;

    iput-object v6, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    iput-object v6, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    iput-object v6, p0, Lcom/comscore/streaming/c;->i:Ljava/lang/Runnable;

    iput-boolean v7, p0, Lcom/comscore/streaming/c;->j:Z

    iput-object v6, p0, Lcom/comscore/streaming/c;->l:Lcom/comscore/streaming/n;

    const-string v0, "StreamSense()"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/a/k;->g()Lcom/comscore/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/c;->b:Ljava/util/HashMap;

    iput v7, p0, Lcom/comscore/streaming/c;->g:I

    sget-object v0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    iput-object v0, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    new-instance v0, Lcom/comscore/streaming/f;

    invoke-direct {v0}, Lcom/comscore/streaming/f;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    iput-object v6, p0, Lcom/comscore/streaming/c;->i:Ljava/lang/Runnable;

    iput-boolean v7, p0, Lcom/comscore/streaming/c;->j:Z

    iput-object v6, p0, Lcom/comscore/streaming/c;->m:Ljava/lang/Runnable;

    iput v8, p0, Lcom/comscore/streaming/c;->o:I

    invoke-direct {p0}, Lcom/comscore/streaming/c;->g()V

    iput-object v6, p0, Lcom/comscore/streaming/c;->k:Ljava/lang/Runnable;

    iput-object v6, p0, Lcom/comscore/streaming/c;->l:Lcom/comscore/streaming/n;

    iput-boolean v8, p0, Lcom/comscore/streaming/c;->q:Z

    iput-object v6, p0, Lcom/comscore/streaming/c;->r:Lcom/comscore/streaming/g;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/streaming/c;->e:J

    const v0, 0x124f80

    iput v0, p0, Lcom/comscore/streaming/c;->x:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/comscore/streaming/c;->y:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/c;->v:Ljava/util/List;

    .line 1000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "playingtime"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "interval"

    const-wide/16 v4, 0x2710

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "playingtime"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "interval"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 0
    iput-object v0, p0, Lcom/comscore/streaming/c;->w:Ljava/util/List;

    .line 3000
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Reset()"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0, v6}, Lcom/comscore/streaming/f;->a(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->e()V

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/comscore/streaming/d;->a(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/comscore/streaming/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput v7, p0, Lcom/comscore/streaming/c;->g:I

    iput v8, p0, Lcom/comscore/streaming/c;->o:I

    invoke-direct {p0}, Lcom/comscore/streaming/c;->f()V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->g()V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->h()V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->j()V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->k()V

    sget-object v0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    iput-object v0, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/streaming/c;->d:J

    iput-object v6, p0, Lcom/comscore/streaming/c;->r:Lcom/comscore/streaming/g;

    const-string v0, "android_puppet"

    iput-object v0, p0, Lcom/comscore/streaming/c;->s:Ljava/lang/String;

    const-string v0, "4.1508.28"

    iput-object v0, p0, Lcom/comscore/streaming/c;->t:Ljava/lang/String;

    iput-object v6, p0, Lcom/comscore/streaming/c;->u:Ljava/util/HashMap;

    .line 0
    :cond_0
    return-void
.end method

.method private a(J)J
    .locals 9

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/c;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "playingtime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, p1, v6

    if-gez v1, :cond_0

    :cond_1
    const-string v1, "interval"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method private a(Lcom/comscore/streaming/e;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/e;",
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

    .prologue
    .line 0
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createMeasurementLabels("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    const-string v0, "ns_ts"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ns_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "ns_st_ev"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ns_st_ev"

    invoke-virtual {p1}, Lcom/comscore/streaming/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27000
    :cond_3
    iget-object v0, p0, Lcom/comscore/streaming/c;->b:Ljava/util/HashMap;

    .line 0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 28000
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 0
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0, p1, v2}, Lcom/comscore/streaming/f;->a(Lcom/comscore/streaming/e;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/comscore/streaming/d;->a(Lcom/comscore/streaming/e;Ljava/util/HashMap;)Ljava/util/HashMap;

    const-string v0, "ns_st_mp"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ns_st_mp"

    iget-object v1, p0, Lcom/comscore/streaming/c;->s:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "ns_st_mv"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ns_st_mv"

    iget-object v1, p0, Lcom/comscore/streaming/c;->t:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "ns_st_ub"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ns_st_ub"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "ns_st_br"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ns_st_br"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "ns_st_pn"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ns_st_pn"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "ns_st_tp"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ns_st_tp"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "ns_st_it"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ns_st_it"

    const-string v1, "c"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "ns_st_sv"

    const-string v1, "4.1508.28"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 28000
    :cond_c
    const-string v0, "ns_st_ec"

    iget v1, p0, Lcom/comscore/streaming/c;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_po"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-wide v0, p0, Lcom/comscore/streaming/c;->e:J

    invoke-static {v2}, Lcom/comscore/streaming/c;->c(Ljava/util/HashMap;)J

    move-result-wide v4

    sget-object v3, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    if-eq p1, v3, :cond_d

    sget-object v3, Lcom/comscore/streaming/e;->e:Lcom/comscore/streaming/e;

    if-eq p1, v3, :cond_d

    sget-object v3, Lcom/comscore/streaming/e;->f:Lcom/comscore/streaming/e;

    if-eq p1, v3, :cond_d

    if-nez p1, :cond_e

    iget-object v3, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    sget-object v6, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    if-ne v3, v6, :cond_e

    :cond_d
    iget-object v3, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v3}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/comscore/streaming/d;->e()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    :cond_e
    const-string v3, "ns_st_po"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    sget-object v0, Lcom/comscore/streaming/e;->f:Lcom/comscore/streaming/e;

    if-ne p1, v0, :cond_4

    const-string v0, "ns_st_hc"

    iget v1, p0, Lcom/comscore/streaming/c;->o:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_pe"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/comscore/streaming/c;)V
    .locals 2

    .prologue
    .line 0
    .line 31000
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Firing paused on buffering event"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/c;->r:Lcom/comscore/streaming/g;

    sget-object v1, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->d()V

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->c()V

    sget-object v0, Lcom/comscore/streaming/e;->b:Lcom/comscore/streaming/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 32000
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/c;->a(Ljava/util/HashMap;Z)V

    .line 31000
    iget v0, p0, Lcom/comscore/streaming/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/c;->g:I

    sget-object v0, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    iput-object v0, p0, Lcom/comscore/streaming/c;->r:Lcom/comscore/streaming/g;

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/comscore/streaming/c;Lcom/comscore/streaming/g;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/g;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Lcom/comscore/streaming/g;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/g;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 0
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transitionTo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->k()V

    .line 10000
    if-eqz p1, :cond_6

    .line 11000
    iget-object v0, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    .line 10000
    if-eq v0, p1, :cond_6

    move v0, v4

    .line 0
    :goto_1
    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/comscore/streaming/c;->c(Ljava/util/HashMap;)J

    .line 12000
    iget-object v0, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    .line 13000
    iget-object v1, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->U()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onExit("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/comscore/streaming/c;->c(Ljava/util/HashMap;)J

    move-result-wide v2

    sget-object v1, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0, v2, v3}, Lcom/comscore/streaming/f;->a(J)V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->f()V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->h()V

    .line 17000
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEnter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/comscore/streaming/c;->c(Ljava/util/HashMap;)J

    move-result-wide v8

    invoke-static {p2}, Lcom/comscore/streaming/c;->b(Ljava/util/HashMap;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/c;->e:J

    sget-object v0, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    if-ne p1, v0, :cond_9

    invoke-direct {p0}, Lcom/comscore/streaming/c;->e()V

    .line 18000
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Starting keep alive timer"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->h()V

    new-instance v0, Lcom/comscore/streaming/k;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/k;-><init>(Lcom/comscore/streaming/c;)V

    iput-object v0, p0, Lcom/comscore/streaming/c;->k:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/c;->k:Ljava/lang/Runnable;

    iget v2, p0, Lcom/comscore/streaming/c;->x:I

    int-to-long v2, v2

    iget v5, p0, Lcom/comscore/streaming/c;->x:I

    int-to-long v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;JZJ)Z

    .line 17000
    :cond_3
    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/comscore/streaming/d;->c(J)V

    invoke-direct {p0, p1}, Lcom/comscore/streaming/c;->b(Lcom/comscore/streaming/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->b()V

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->b()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0, v4}, Lcom/comscore/streaming/f;->a(I)V

    .line 21000
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/c;->d:J

    .line 0
    :cond_5
    iget-object v0, p0, Lcom/comscore/streaming/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_4

    .line 10000
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 13000
    :cond_7
    sget-object v1, Lcom/comscore/streaming/g;->d:Lcom/comscore/streaming/g;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0, v2, v3}, Lcom/comscore/streaming/f;->b(J)V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->j()V

    goto/16 :goto_2

    :cond_8
    sget-object v1, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    if-ne v0, v1, :cond_2

    .line 14000
    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    .line 15000
    iget-object v1, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v1}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v1

    .line 16000
    iget-object v1, v1, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    .line 13000
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/d;->a(Ljava/util/Set;)V

    goto/16 :goto_2

    .line 17000
    :cond_9
    sget-object v0, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    if-ne p1, v0, :cond_a

    invoke-direct {p0, p1}, Lcom/comscore/streaming/c;->b(Lcom/comscore/streaming/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->c()V

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/comscore/streaming/g;->d:Lcom/comscore/streaming/g;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/comscore/streaming/d;->d(J)V

    iget-boolean v0, p0, Lcom/comscore/streaming/c;->j:Z

    if-eqz v0, :cond_4

    .line 19000
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/comscore/streaming/c;->j()V

    .line 20000
    iget-boolean v0, p0, Lcom/comscore/streaming/c;->j:Z

    .line 19000
    if-eqz v0, :cond_4

    sget-object v0, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    invoke-direct {p0, v0}, Lcom/comscore/streaming/c;->b(Lcom/comscore/streaming/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/comscore/streaming/i;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/i;-><init>(Lcom/comscore/streaming/c;)V

    iput-object v0, p0, Lcom/comscore/streaming/c;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/c;->i:Ljava/lang/Runnable;

    iget v2, p0, Lcom/comscore/streaming/c;->y:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 17000
    :cond_b
    sget-object v0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/comscore/streaming/c;->g()V

    goto/16 :goto_3

    .line 22000
    :cond_c
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "ns_st_mp"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    iput-object v0, p0, Lcom/comscore/streaming/c;->s:Ljava/lang/String;

    const-string v0, "ns_st_mp"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const-string v0, "ns_st_mv"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    iput-object v0, p0, Lcom/comscore/streaming/c;->t:Ljava/lang/String;

    const-string v0, "ns_st_mv"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string v0, "ns_st_ec"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/c;->g:I

    const-string v0, "ns_st_ec"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0, p2, p1}, Lcom/comscore/streaming/f;->a(Ljava/util/HashMap;Lcom/comscore/streaming/g;)V

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/comscore/streaming/d;->a(Ljava/util/HashMap;Lcom/comscore/streaming/g;)V

    invoke-virtual {p1}, Lcom/comscore/streaming/g;->a()Lcom/comscore/streaming/e;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    invoke-direct {p0, v1}, Lcom/comscore/streaming/c;->b(Lcom/comscore/streaming/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23000
    invoke-direct {p0, v0, v4}, Lcom/comscore/streaming/c;->a(Ljava/util/HashMap;Z)V

    .line 0
    iget-object v0, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    iput-object v0, p0, Lcom/comscore/streaming/c;->r:Lcom/comscore/streaming/g;

    iget v0, p0, Lcom/comscore/streaming/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/c;->g:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_5
.end method

.method private a(Ljava/util/HashMap;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 0
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dispatch("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 24000
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25000
    iget-object v0, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    invoke-virtual {v0}, Lcom/comscore/streaming/g;->a()Lcom/comscore/streaming/e;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 24000
    iput-object v0, p0, Lcom/comscore/streaming/c;->u:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/comscore/streaming/c;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 26000
    :cond_2
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->A()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->H()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v3}, Lcom/comscore/a/b;->D()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 0
    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v2

    new-instance v3, Lcom/comscore/streaming/m;

    invoke-direct {v3, p0, p1, v0}, Lcom/comscore/streaming/m;-><init>(Lcom/comscore/streaming/c;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0

    .line 26000
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/comscore/streaming/g;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->U()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    if-ne p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/util/HashMap;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const-string v0, "ns_st_po"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "ns_st_po"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private b(Lcom/comscore/streaming/g;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/comscore/streaming/c;->r:Lcom/comscore/streaming/g;

    sget-object v2, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/comscore/streaming/c;->r:Lcom/comscore/streaming/g;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/comscore/streaming/g;->d:Lcom/comscore/streaming/g;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/comscore/streaming/c;->r:Lcom/comscore/streaming/g;

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Ljava/util/HashMap;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const-string v0, "ns_ts"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "ns_ts"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private e()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/comscore/streaming/c;->i()V

    iget-object v0, p0, Lcom/comscore/streaming/c;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/comscore/streaming/c;->n:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/comscore/streaming/c;->n:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resuming heart beat timer. Next event in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/comscore/streaming/c;->p:J

    new-instance v2, Lcom/comscore/streaming/j;

    invoke-direct {v2, p0}, Lcom/comscore/streaming/j;-><init>(Lcom/comscore/streaming/c;)V

    iput-object v2, p0, Lcom/comscore/streaming/c;->m:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/streaming/c;->m:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/c;->a(J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting heart beat timer. Next event in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Pausing heartbeat timer."

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->i()V

    iget-wide v0, p0, Lcom/comscore/streaming/c;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/streaming/c;->n:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/streaming/c;->p:J

    goto :goto_0
.end method

.method private g()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Resetting heartbeat timer."

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/comscore/streaming/c;->n:J

    iput-wide v2, p0, Lcom/comscore/streaming/c;->p:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/comscore/streaming/c;->o:I

    goto :goto_0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "stopKeepAliveTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/c;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/c;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/c;->k:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "releaseHeartBeatTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/c;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/c;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/c;->m:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "stopPausedOnBufferingTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/c;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/c;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/c;->i:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "stopDelayedTransitionTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/c;->l:Lcom/comscore/streaming/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/c;->l:Lcom/comscore/streaming/n;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/c;->l:Lcom/comscore/streaming/n;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 0
    .line 29000
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    sget-object v2, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    .line 30000
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/d;->a(Ljava/util/Set;)V

    .line 29000
    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    invoke-static {p1}, Lcom/comscore/utils/n;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/d;->b(Ljava/util/HashMap;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected final a()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Firing heart beat"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/comscore/streaming/c;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/c;->o:I

    sget-object v0, Lcom/comscore/streaming/e;->f:Lcom/comscore/streaming/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 4000
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/c;->a(Ljava/util/HashMap;Z)V

    .line 0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/streaming/c;->n:J

    invoke-direct {p0}, Lcom/comscore/streaming/c;->e()V

    goto :goto_0
.end method

.method public final a(Lcom/comscore/streaming/e;J)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;Ljava/util/HashMap;J)V

    return-void
.end method

.method public final a(Lcom/comscore/streaming/e;Ljava/util/HashMap;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/e;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notify("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    sget-object v0, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    .line 0
    :goto_1
    invoke-static {p2}, Lcom/comscore/utils/n;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    .line 7000
    iget-object v2, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->U()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/comscore/streaming/c;->c(Ljava/util/HashMap;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-string v2, "ns_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_2
    const-string v2, "ns_st_po"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ns_st_po"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v2, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/comscore/streaming/e;->b:Lcom/comscore/streaming/e;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/comscore/streaming/e;->d:Lcom/comscore/streaming/e;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/e;

    if-ne p1, v2, :cond_b

    .line 8000
    :cond_4
    iget-boolean v2, p0, Lcom/comscore/streaming/c;->q:Z

    .line 0
    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    invoke-direct {p0, v2}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/g;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v0}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/g;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    sget-object v3, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/comscore/streaming/c;->l:Lcom/comscore/streaming/n;

    if-eqz v2, :cond_a

    .line 9000
    :cond_5
    iget-object v2, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transitionTo("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 500)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/c;->k()V

    new-instance v2, Lcom/comscore/streaming/l;

    invoke-direct {v2, p0, v0, v1}, Lcom/comscore/streaming/l;-><init>(Lcom/comscore/streaming/c;Lcom/comscore/streaming/g;Ljava/util/HashMap;)V

    iput-object v2, p0, Lcom/comscore/streaming/c;->l:Lcom/comscore/streaming/n;

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/c;->l:Lcom/comscore/streaming/n;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 6000
    :cond_6
    sget-object v0, Lcom/comscore/streaming/e;->b:Lcom/comscore/streaming/e;

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/comscore/streaming/e;->d:Lcom/comscore/streaming/e;

    if-ne p1, v0, :cond_8

    sget-object v0, Lcom/comscore/streaming/g;->d:Lcom/comscore/streaming/g;

    goto/16 :goto_1

    :cond_8
    sget-object v0, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/e;

    if-ne p1, v0, :cond_9

    sget-object v0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 0
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/g;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, p1, v1}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/c;->a(Ljava/util/HashMap;Z)V

    iget v0, p0, Lcom/comscore/streaming/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/c;->g:I

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/streaming/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Firing keep alive"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/streaming/e;->e:Lcom/comscore/streaming/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/e;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 5000
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/c;->a(Ljava/util/HashMap;Z)V

    .line 0
    iget v0, p0, Lcom/comscore/streaming/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/c;->g:I

    goto :goto_0
.end method

.method public final c()Lcom/comscore/streaming/g;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/c;->f:Lcom/comscore/streaming/g;

    return-object v0
.end method

.method public final d()Lcom/comscore/streaming/d;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/c;->h:Lcom/comscore/streaming/f;

    invoke-virtual {v0}, Lcom/comscore/streaming/f;->a()Lcom/comscore/streaming/d;

    move-result-object v0

    return-object v0
.end method
