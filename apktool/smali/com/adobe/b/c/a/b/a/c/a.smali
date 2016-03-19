.class public Lcom/adobe/b/c/a/b/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/adobe/b/a/c;

.field private c:Lcom/adobe/b/a/b/a;

.field private d:Z

.field private e:Z

.field private f:Lcom/adobe/b/a/b/c;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/b/c/a/b/a/d/b/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Lcom/adobe/b/a/b;

.field private j:Lcom/adobe/b/a/b;

.field private k:Lcom/adobe/b/a/b;

.field private l:Lcom/adobe/b/a/b;


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/b/a;Lcom/adobe/b/a/c;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/adobe/b/c/a/b/a/c/a$1;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/c/a$1;-><init>(Lcom/adobe/b/c/a/b/a/c/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->i:Lcom/adobe/b/a/b;

    .line 146
    new-instance v0, Lcom/adobe/b/c/a/b/a/c/a$2;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/c/a$2;-><init>(Lcom/adobe/b/c/a/b/a/c/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->j:Lcom/adobe/b/a/b;

    .line 221
    new-instance v0, Lcom/adobe/b/c/a/b/a/c/a$3;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/c/a$3;-><init>(Lcom/adobe/b/c/a/b/a/c/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->k:Lcom/adobe/b/a/b;

    .line 240
    new-instance v0, Lcom/adobe/b/c/a/b/a/c/a$4;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/c/a$4;-><init>(Lcom/adobe/b/c/a/b/a/c/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->l:Lcom/adobe/b/a/b;

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the channel object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/c/a;->c:Lcom/adobe/b/a/b/a;

    .line 71
    if-nez p2, :cond_1

    .line 72
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the logger object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    const-class v0, Lcom/adobe/b/c/a/b/a/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->a:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/adobe/b/c/a/b/a/c/a;->b:Lcom/adobe/b/a/c;

    .line 77
    iput-boolean v1, p0, Lcom/adobe/b/c/a/b/a/c/a;->d:Z

    .line 78
    iput-boolean v1, p0, Lcom/adobe/b/c/a/b/a/c/a;->e:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->g:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->h:Ljava/util/Map;

    .line 81
    new-instance v0, Lcom/adobe/b/a/b/c;

    invoke-direct {v0}, Lcom/adobe/b/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->f:Lcom/adobe/b/a/b/c;

    .line 1256
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->c:Lcom/adobe/b/a/b/a;

    const-string v1, "context:report_available"

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/c/a;->k:Lcom/adobe/b/a/b;

    invoke-virtual {v0, v1, v2, p0}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    .line 1257
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->c:Lcom/adobe/b/a/b/a;

    const-string v1, "clock:flush_filter.tick"

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/c/a;->l:Lcom/adobe/b/a/b;

    invoke-virtual {v0, v1, v2, p0}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 1269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/b/a/d/b/a;

    .line 1272
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pause"

    if-eq v3, v4, :cond_0

    .line 1273
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/adobe/b/c/a/b/a/c/a;Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    .line 39
    .line 2200
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/b/a/d/b/a;

    .line 2202
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->d()Lcom/adobe/b/c/a/b/a/d/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/d/a/i;->a()Ljava/lang/String;

    move-result-object v2

    .line 2204
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/c/a;->h:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2205
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/c/a;->h:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2207
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/b/c/a/b/a/d/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->f()Lcom/adobe/b/c/a/b/a/d/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/d/a/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ad"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->f()Lcom/adobe/b/c/a/b/a/d/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/d/a/c;->d()Lcom/adobe/b/c/a/b/a/d/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2212
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/c/a;->h:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2213
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2214
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v5

    iget-object v6, p0, Lcom/adobe/b/c/a/b/a/c/a;->h:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/adobe/b/c/a/b/a/d/a/f;->b(J)V

    .line 2217
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/a/f;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2207
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->f()Lcom/adobe/b/c/a/b/a/d/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/d/a/c;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 39
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/adobe/b/c/a/b/a/c/a;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/adobe/b/c/a/b/a/c/a;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/adobe/b/c/a/b/a/c/a;->e:Z

    return p1
.end method

.method static synthetic b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, -0x1

    .line 1286
    .line 1288
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/b/a/d/b/a;

    .line 1291
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/b/c/a/b/a/d/a/f;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "start"

    if-ne v6, v7, :cond_3

    .line 1292
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->f()Lcom/adobe/b/c/a/b/a/d/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/b/c/a/b/a/d/a/c;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "main"

    if-ne v6, v7, :cond_1

    .line 1293
    if-ne v3, v2, :cond_0

    .line 1294
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    goto :goto_0

    .line 1297
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Lcom/adobe/b/c/a/b/a/d/a/f;->b(J)V

    .line 1298
    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1301
    :cond_1
    if-ne v1, v2, :cond_2

    .line 1302
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1305
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Lcom/adobe/b/c/a/b/a/d/a/f;->b(J)V

    .line 1306
    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1310
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_4
    return-object v4
.end method

.method static synthetic b(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 1317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/b/a/d/b/a;

    .line 1320
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "play"

    if-ne v3, v4, :cond_2

    .line 1322
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/f;->b()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1323
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1327
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/f;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->f()Lcom/adobe/b/c/a/b/a/d/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/c;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "main"

    if-ne v3, v4, :cond_0

    .line 1331
    invoke-static {p0}, Lcom/adobe/b/c/a/b/a/c/a;->d(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1332
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v4, v3, :cond_0

    .line 1333
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1337
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_3
    return-object v1
.end method

.method static synthetic c(Lcom/adobe/b/c/a/b/a/c/a;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b/a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->c:Lcom/adobe/b/a/b/a;

    return-object v0
.end method

.method private static d(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/b/c/a/b/a/d/b/a;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/b/c/a/b/a/d/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/b/a/d/b/a;

    .line 347
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "play"

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "buffer"

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->e()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "start"

    if-ne v3, v4, :cond_0

    .line 351
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_2
    return-object v1
.end method

.method static synthetic e(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->i:Lcom/adobe/b/a/b;

    return-object v0
.end method

.method static synthetic g(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b/c;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->f:Lcom/adobe/b/a/b/c;

    return-object v0
.end method

.method static synthetic h(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a;->j:Lcom/adobe/b/a/b;

    return-object v0
.end method
