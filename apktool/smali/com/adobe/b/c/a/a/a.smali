.class public final Lcom/adobe/b/c/a/a/a;
.super Lcom/adobe/b/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/b/c/a/a/a$11;,
        Lcom/adobe/b/c/a/a/a$a;
    }
.end annotation


# instance fields
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

.field private j:Ljava/util/Map;
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

.field private k:Ljava/util/Map;
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

.field private l:Lcom/adobe/b/c/a/a/d;

.field private m:Lcom/adobe/b/a/b/c;

.field private n:Lcom/adobe/b/a/b/c;

.field private o:Lcom/adobe/b/c/a/a/c;

.field private p:Lcom/adobe/b/c/a;

.field private q:Lcom/adobe/b/c/a/a/b;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/adobe/b/a/b;

.field private final t:Lcom/adobe/b/a/b;

.field private final u:Lcom/adobe/b/a/b;

.field private final v:Lcom/adobe/b/a/b;

.field private final w:Lcom/adobe/b/a/b;

.field private final x:Lcom/adobe/b/a/b;

.field private final y:Lcom/adobe/b/a/b;


# direct methods
.method public constructor <init>(Lcom/adobe/b/c/a/a/c;)V
    .locals 3

    .prologue
    .line 97
    const-string v0, "adobe-analytics"

    invoke-direct {p0, v0}, Lcom/adobe/b/a/a/a;-><init>(Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/adobe/b/c/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/a/a$1;-><init>(Lcom/adobe/b/c/a/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->s:Lcom/adobe/b/a/b;

    .line 219
    new-instance v0, Lcom/adobe/b/c/a/a/a$12;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/a/a$12;-><init>(Lcom/adobe/b/c/a/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->t:Lcom/adobe/b/a/b;

    .line 234
    new-instance v0, Lcom/adobe/b/c/a/a/a$13;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/a/a$13;-><init>(Lcom/adobe/b/c/a/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->u:Lcom/adobe/b/a/b;

    .line 249
    new-instance v0, Lcom/adobe/b/c/a/a/a$14;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/a/a$14;-><init>(Lcom/adobe/b/c/a/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->v:Lcom/adobe/b/a/b;

    .line 270
    new-instance v0, Lcom/adobe/b/c/a/a/a$15;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/a/a$15;-><init>(Lcom/adobe/b/c/a/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->w:Lcom/adobe/b/a/b;

    .line 335
    new-instance v0, Lcom/adobe/b/c/a/a/a$16;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/a/a$16;-><init>(Lcom/adobe/b/c/a/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->x:Lcom/adobe/b/a/b;

    .line 634
    new-instance v0, Lcom/adobe/b/c/a/a/a$10;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/a/a$10;-><init>(Lcom/adobe/b/c/a/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->y:Lcom/adobe/b/a/b;

    .line 99
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a;->o:Lcom/adobe/b/c/a/a/c;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->r:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->i:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->j:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->k:Ljava/util/Map;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->p:Lcom/adobe/b/c/a;

    .line 108
    new-instance v0, Lcom/adobe/b/a/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/b/a/b/c;-><init>(B)V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->m:Lcom/adobe/b/a/b/c;

    .line 109
    new-instance v0, Lcom/adobe/b/c/a/a/d;

    iget-object v1, p0, Lcom/adobe/b/c/a/a/a;->y:Lcom/adobe/b/a/b;

    invoke-direct {v0, v1}, Lcom/adobe/b/c/a/a/d;-><init>(Lcom/adobe/b/a/b;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->l:Lcom/adobe/b/c/a/a/d;

    .line 1430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1432
    const-string v1, "rsid"

    new-instance v2, Lcom/adobe/b/c/a/a/a$17;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/a/a$17;-><init>(Lcom/adobe/b/c/a/a/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    const-string v1, "tracking_server"

    new-instance v2, Lcom/adobe/b/c/a/a/a$18;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/a/a$18;-><init>(Lcom/adobe/b/c/a/a/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    const-string v1, "ssl"

    new-instance v2, Lcom/adobe/b/c/a/a/a$19;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/a/a$19;-><init>(Lcom/adobe/b/c/a/a/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    const-string v1, "vid"

    new-instance v2, Lcom/adobe/b/c/a/a/a$2;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/a/a$2;-><init>(Lcom/adobe/b/c/a/a/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    const-string v1, "aid"

    new-instance v2, Lcom/adobe/b/c/a/a/a$3;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/a/a$3;-><init>(Lcom/adobe/b/c/a/a/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    const-string v1, "mid"

    new-instance v2, Lcom/adobe/b/c/a/a/a$4;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/a/a$4;-><init>(Lcom/adobe/b/c/a/a/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    const-string v1, "channel"

    new-instance v2, Lcom/adobe/b/c/a/a/a$5;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/a/a$5;-><init>(Lcom/adobe/b/c/a/a/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    const-string v1, "meta"

    new-instance v2, Lcom/adobe/b/c/a/a/a$6;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/a/a$6;-><init>(Lcom/adobe/b/c/a/a/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    new-instance v1, Lcom/adobe/b/c/a/a/a$7;

    invoke-direct {v1, p0, v0}, Lcom/adobe/b/c/a/a/a$7;-><init>(Lcom/adobe/b/c/a/a/a;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/adobe/b/c/a/a/a;->d:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/adobe/b/c/a/a/a;Lcom/adobe/b/c/a;)Lcom/adobe/b/c/a;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a;->p:Lcom/adobe/b/c/a;

    return-object p1
.end method

.method static synthetic a(Lcom/adobe/b/c/a/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/adobe/b/c/a/a/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/adobe/b/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic b(Lcom/adobe/b/c/a/a/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/adobe/b/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->w:Lcom/adobe/b/a/b;

    return-object v0
.end method

.method static synthetic c(Lcom/adobe/b/c/a/a/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/adobe/b/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/b/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->m:Lcom/adobe/b/a/b/c;

    return-object v0
.end method

.method static synthetic d(Lcom/adobe/b/c/a/a/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/adobe/b/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcom/adobe/b/c/a/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic g(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->x:Lcom/adobe/b/a/b;

    return-object v0
.end method

.method static synthetic h(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->p:Lcom/adobe/b/c/a;

    return-object v0
.end method

.method static synthetic i(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a/a/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->o:Lcom/adobe/b/c/a/a/c;

    return-object v0
.end method

.method static synthetic j(Lcom/adobe/b/c/a/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic l(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a/a/d;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->l:Lcom/adobe/b/c/a/a/d;

    return-object v0
.end method

.method static synthetic m(Lcom/adobe/b/c/a/a/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/adobe/b/c/a/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic p(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a/a/b;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->q:Lcom/adobe/b/c/a/a/b;

    return-object v0
.end method

.method static synthetic q(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic r(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic s(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic t(Lcom/adobe/b/c/a/a/a;)V
    .locals 1

    .prologue
    .line 40
    .line 1631
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->m:Lcom/adobe/b/a/b/c;

    invoke-virtual {v0}, Lcom/adobe/b/a/b/c;->a()V

    .line 40
    return-void
.end method

.method static synthetic u(Lcom/adobe/b/c/a/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 188
    .line 1602
    new-instance v0, Lcom/adobe/b/a/b/c;

    invoke-direct {v0}, Lcom/adobe/b/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/a/a/a;->n:Lcom/adobe/b/a/b/c;

    .line 1603
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->n:Lcom/adobe/b/a/b/c;

    new-instance v1, Lcom/adobe/b/a/b/b;

    new-instance v2, Lcom/adobe/b/c/a/a/a$8;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/a/a$8;-><init>(Lcom/adobe/b/c/a/a/a;)V

    invoke-direct {v1, v2}, Lcom/adobe/b/a/b/b;-><init>(Lcom/adobe/b/a/b;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/b/c;->a(Lcom/adobe/b/a/b/b;)V

    .line 1615
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->n:Lcom/adobe/b/a/b/c;

    new-instance v1, Lcom/adobe/b/a/b/b;

    new-instance v2, Lcom/adobe/b/c/a/a/a$9;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/a/a$9;-><init>(Lcom/adobe/b/c/a/a/a;)V

    invoke-direct {v1, v2}, Lcom/adobe/b/a/b/b;-><init>(Lcom/adobe/b/a/b;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/b/c;->a(Lcom/adobe/b/a/b/b;)V

    .line 190
    invoke-super {p0}, Lcom/adobe/b/a/a/a;->a()V

    .line 191
    return-void
.end method

.method public final a(Lcom/adobe/b/a/a/d;)V
    .locals 4

    .prologue
    .line 157
    const-class v0, Lcom/adobe/b/c/a/a/b;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Expected config data to be instance of AdobeAnalyticsPluginConfig"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    check-cast p1, Lcom/adobe/b/c/a/a/b;

    iput-object p1, p0, Lcom/adobe/b/c/a/a/a;->q:Lcom/adobe/b/c/a/a/b;

    .line 163
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->q:Lcom/adobe/b/c/a/a/b;

    iget-boolean v0, v0, Lcom/adobe/b/c/a/a/b;->b:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->b:Lcom/adobe/b/a/c;

    invoke-interface {v0}, Lcom/adobe/b/a/c;->a()V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#configure({trackingServer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/b/c/a/a/a;->q:Lcom/adobe/b/c/a/a/b;

    iget-boolean v3, v3, Lcom/adobe/b/c/a/a/b;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", channel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/a/a;->q:Lcom/adobe/b/c/a/a/b;

    iget-object v3, v3, Lcom/adobe/b/c/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ssl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/adobe/mobile/ah;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "})"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 174
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->b:Lcom/adobe/b/a/c;

    invoke-interface {v0}, Lcom/adobe/b/a/c;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/adobe/b/a/a/f;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 179
    invoke-super {p0, p1}, Lcom/adobe/b/a/a/a;->a(Lcom/adobe/b/a/a/f;)V

    .line 1555
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->e:Lcom/adobe/b/a/a/f;

    const-string v1, "handleVideoLoad"

    iget-object v2, p0, Lcom/adobe/b/c/a/a/a;->s:Lcom/adobe/b/a/b;

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a/c;Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 1556
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->e:Lcom/adobe/b/a/a/f;

    const-string v1, "handleVideoStart"

    iget-object v2, p0, Lcom/adobe/b/c/a/a/a;->t:Lcom/adobe/b/a/b;

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a/c;Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 1557
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->e:Lcom/adobe/b/a/a/f;

    const-string v1, "handleAdStart"

    iget-object v2, p0, Lcom/adobe/b/c/a/a/a;->u:Lcom/adobe/b/a/b;

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a/c;Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 1558
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->e:Lcom/adobe/b/a/a/f;

    const-string v1, "handleHeartbeatPluginError"

    iget-object v2, p0, Lcom/adobe/b/c/a/a/a;->v:Lcom/adobe/b/a/b;

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a/c;Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 1564
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->e:Lcom/adobe/b/a/a/f;

    new-instance v1, Lcom/adobe/b/a/e;

    const-string v2, "player"

    const-string v3, "video_load"

    invoke-direct {v1, v2, v3}, Lcom/adobe/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "handleVideoLoad"

    invoke-virtual {v0, v1, p0, v2, v5}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/e;Lcom/adobe/b/a/a/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "video.id"

    const-string v4, "videoId"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "video.name"

    const-string v4, "videoName"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "video.length"

    const-string v4, "videoLength"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "video.playerName"

    const-string v4, "playerName"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "video.streamType"

    const-string v4, "streamType"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "adobe-heartbeat"

    const-string v3, "is_primetime"

    const-string v4, "isPrimetime"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "adobe-analytics"

    const-string v3, "channel"

    const-string v4, "channel"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "adobe-analytics"

    const-string v3, "meta.video.*"

    const-string v4, "metaVideo"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    iget-object v1, p0, Lcom/adobe/b/c/a/a/a;->e:Lcom/adobe/b/a/a/f;

    new-instance v2, Lcom/adobe/b/a/e;

    const-string v3, "player"

    const-string v4, "video_start"

    invoke-direct {v2, v3, v4}, Lcom/adobe/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "handleVideoStart"

    invoke-virtual {v1, v2, p0, v3, v0}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/e;Lcom/adobe/b/a/a/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "video.id"

    const-string v4, "videoId"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "video.streamType"

    const-string v4, "streamType"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "video.playhead"

    const-string v4, "playhead"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "video.playerName"

    const-string v4, "playerName"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "ad.id"

    const-string v4, "adId"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "ad.length"

    const-string v4, "adLength"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "ad.position"

    const-string v4, "adPosition"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "ad.name"

    const-string v4, "adName"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "pod.name"

    const-string v4, "podName"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1587
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "pod.position"

    const-string v4, "podPosition"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1588
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "pod.startTime"

    const-string v4, "podSecond"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "player"

    const-string v3, "pod.playerName"

    const-string v4, "podPlayerName"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "adobe-heartbeat"

    const-string v3, "is_primetime"

    const-string v4, "isPrimetime"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "adobe-analytics"

    const-string v3, "channel"

    const-string v4, "channel"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "adobe-analytics"

    const-string v3, "meta.video.*"

    const-string v4, "metaVideo"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    new-instance v1, Lcom/adobe/b/a/a/e;

    const-string v2, "adobe-analytics"

    const-string v3, "meta.ad.*"

    const-string v4, "metaAd"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/b/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    iget-object v1, p0, Lcom/adobe/b/c/a/a/a;->e:Lcom/adobe/b/a/a/f;

    new-instance v2, Lcom/adobe/b/a/e;

    const-string v3, "player"

    const-string v4, "ad_start"

    invoke-direct {v2, v3, v4}, Lcom/adobe/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "handleAdStart"

    invoke-virtual {v1, v2, p0, v3, v0}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/e;Lcom/adobe/b/a/a/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1596
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->e:Lcom/adobe/b/a/a/f;

    new-instance v1, Lcom/adobe/b/a/e;

    const-string v2, "adobe-heartbeat"

    const-string v3, "error"

    invoke-direct {v1, v2, v3}, Lcom/adobe/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "handleHeartbeatPluginError"

    invoke-virtual {v0, v1, p0, v2, v5}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/e;Lcom/adobe/b/a/a/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 183
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a;->i:Ljava/util/Map;

    .line 126
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a;->j:Ljava/util/Map;

    .line 136
    return-void
.end method

.method public final c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a;->k:Ljava/util/Map;

    .line 146
    return-void
.end method

.method protected final c()Z
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->p:Lcom/adobe/b/c/a;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/a/a;->a:Ljava/lang/String;

    const-string v2, "#_canProcess() > In ERROR state."

    invoke-interface {v0, v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/adobe/b/a/a/a;->c()Z

    move-result v0

    goto :goto_0
.end method
