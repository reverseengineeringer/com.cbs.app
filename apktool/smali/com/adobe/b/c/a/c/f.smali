.class public final Lcom/adobe/b/c/a/c/f;
.super Lcom/adobe/b/a/a/a;
.source "SourceFile"


# instance fields
.field private i:Lcom/adobe/b/c/a/c/h;

.field private j:Z

.field private k:Z

.field private final l:Lcom/adobe/b/a/b;

.field private final m:Lcom/adobe/b/a/b;

.field private final n:Lcom/adobe/b/a/b;

.field private final o:Lcom/adobe/b/a/b;

.field private final p:Lcom/adobe/b/a/b;


# direct methods
.method public constructor <init>(Lcom/adobe/b/c/a/c/h;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 72
    const-string v0, "player"

    invoke-direct {p0, v0}, Lcom/adobe/b/a/a/a;-><init>(Ljava/lang/String;)V

    .line 390
    new-instance v0, Lcom/adobe/b/c/a/c/f$1;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/c/f$1;-><init>(Lcom/adobe/b/c/a/c/f;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/c/f;->l:Lcom/adobe/b/a/b;

    .line 405
    new-instance v0, Lcom/adobe/b/c/a/c/f$12;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/c/f$12;-><init>(Lcom/adobe/b/c/a/c/f;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/c/f;->m:Lcom/adobe/b/a/b;

    .line 420
    new-instance v0, Lcom/adobe/b/c/a/c/f$23;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/c/f$23;-><init>(Lcom/adobe/b/c/a/c/f;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/c/f;->n:Lcom/adobe/b/a/b;

    .line 435
    new-instance v0, Lcom/adobe/b/c/a/c/f$26;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/c/f$26;-><init>(Lcom/adobe/b/c/a/c/f;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/c/f;->o:Lcom/adobe/b/a/b;

    .line 450
    new-instance v0, Lcom/adobe/b/c/a/c/f$27;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/c/f$27;-><init>(Lcom/adobe/b/c/a/c/f;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/c/f;->p:Lcom/adobe/b/a/b;

    .line 77
    iput-object p1, p0, Lcom/adobe/b/c/a/c/f;->i:Lcom/adobe/b/c/a/c/h;

    .line 79
    iput-boolean v1, p0, Lcom/adobe/b/c/a/c/f;->j:Z

    .line 80
    iput-boolean v1, p0, Lcom/adobe/b/c/a/c/f;->k:Z

    .line 1471
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1472
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1474
    const-string v2, "video.id"

    new-instance v3, Lcom/adobe/b/c/a/c/f$28;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$28;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    const-string v2, "video.name"

    new-instance v3, Lcom/adobe/b/c/a/c/f$29;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$29;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    const-string v2, "video.length"

    new-instance v3, Lcom/adobe/b/c/a/c/f$30;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$30;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    const-string v2, "video.playerName"

    new-instance v3, Lcom/adobe/b/c/a/c/f$31;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$31;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    const-string v2, "video.streamType"

    new-instance v3, Lcom/adobe/b/c/a/c/f$2;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$2;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    const-string v2, "video.playhead"

    new-instance v3, Lcom/adobe/b/c/a/c/f$3;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$3;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const-string v2, "pod.name"

    new-instance v3, Lcom/adobe/b/c/a/c/f$4;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$4;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    const-string v2, "pod.playerName"

    new-instance v3, Lcom/adobe/b/c/a/c/f$5;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$5;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    const-string v2, "pod.position"

    new-instance v3, Lcom/adobe/b/c/a/c/f$6;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$6;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const-string v2, "pod.startTime"

    new-instance v3, Lcom/adobe/b/c/a/c/f$7;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$7;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const-string v2, "ad.isInAdBreak"

    new-instance v3, Lcom/adobe/b/c/a/c/f$8;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$8;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    const-string v2, "ad.isInAd"

    new-instance v3, Lcom/adobe/b/c/a/c/f$9;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$9;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    const-string v2, "ad.id"

    new-instance v3, Lcom/adobe/b/c/a/c/f$10;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$10;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    const-string v2, "ad.name"

    new-instance v3, Lcom/adobe/b/c/a/c/f$11;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$11;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    const-string v2, "ad.length"

    new-instance v3, Lcom/adobe/b/c/a/c/f$13;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$13;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    const-string v2, "ad.position"

    new-instance v3, Lcom/adobe/b/c/a/c/f$14;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$14;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    const-string v2, "chapter.isInChapter"

    new-instance v3, Lcom/adobe/b/c/a/c/f$15;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$15;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    const-string v2, "chapter.name"

    new-instance v3, Lcom/adobe/b/c/a/c/f$16;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$16;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    const-string v2, "chapter.length"

    new-instance v3, Lcom/adobe/b/c/a/c/f$17;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$17;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    const-string v2, "chapter.position"

    new-instance v3, Lcom/adobe/b/c/a/c/f$18;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$18;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    const-string v2, "chapter.startTime"

    new-instance v3, Lcom/adobe/b/c/a/c/f$19;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$19;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    const-string v2, "qos.bitrate"

    new-instance v3, Lcom/adobe/b/c/a/c/f$20;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$20;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    const-string v2, "qos.fps"

    new-instance v3, Lcom/adobe/b/c/a/c/f$21;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$21;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    const-string v2, "qos.droppedFrames"

    new-instance v3, Lcom/adobe/b/c/a/c/f$22;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$22;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    const-string v2, "qos.startupTime"

    new-instance v3, Lcom/adobe/b/c/a/c/f$24;

    invoke-direct {v3, p0, v1}, Lcom/adobe/b/c/a/c/f$24;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    new-instance v2, Lcom/adobe/b/c/a/c/f$25;

    invoke-direct {v2, p0, v1, v0}, Lcom/adobe/b/c/a/c/f$25;-><init>(Lcom/adobe/b/c/a/c/f;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/adobe/b/c/a/c/f;->d:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method static synthetic A(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic B(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic D(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic F(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic H(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic I(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic J(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->m:Lcom/adobe/b/a/b;

    return-object v0
.end method

.method static synthetic K(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic L(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic M(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic N(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic O(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic P(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic Q(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic R(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic S(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic T(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic U(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->o:Lcom/adobe/b/a/b;

    return-object v0
.end method

.method static synthetic V(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic W(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic X(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Y(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic Z(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/c/a/c/h;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->i:Lcom/adobe/b/c/a/c/h;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 748
    iget-boolean v1, p0, Lcom/adobe/b/c/a/c/f;->j:Z

    if-nez v1, :cond_1

    .line 749
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() > No active tracking session."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 750
    const/4 v0, 0x0

    .line 758
    :cond_0
    :goto_0
    return v0

    .line 753
    :cond_1
    iget-boolean v1, p0, Lcom/adobe/b/c/a/c/f;->k:Z

    if-nez v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() > Tracking session auto-start."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 2117
    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2121
    iget-boolean v1, p0, Lcom/adobe/b/c/a/c/f;->j:Z

    if-nez v1, :cond_2

    .line 2122
    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 2126
    :cond_2
    iget-boolean v1, p0, Lcom/adobe/b/c/a/c/f;->k:Z

    if-eqz v1, :cond_3

    .line 2127
    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 2131
    :cond_3
    iput-boolean v0, p0, Lcom/adobe/b/c/a/c/f;->k:Z

    .line 2133
    const-string v1, "video_start"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic aa(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic ab(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ac(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic ad(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ae(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic af(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->p:Lcom/adobe/b/a/b;

    return-object v0
.end method

.method static synthetic ag(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ah(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic ai(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aj(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic ak(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic al(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic am(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic an(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic b(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic d(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic f(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic h(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic j(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic l(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->l:Lcom/adobe/b/a/b;

    return-object v0
.end method

.method static synthetic m(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic o(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic q(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic s(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic u(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic w(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic y(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->n:Lcom/adobe/b/a/b;

    return-object v0
.end method

.method static synthetic z(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/adobe/b/a/a/d;)V
    .locals 4

    .prologue
    .line 91
    instance-of v0, p1, Lcom/adobe/b/c/a/c/g;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Expected config data to be instance of VideoPlayerPluginConfig."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    check-cast p1, Lcom/adobe/b/c/a/c/g;

    .line 96
    iget-boolean v0, p1, Lcom/adobe/b/c/a/c/g;->a:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    invoke-interface {v0}, Lcom/adobe/b/a/c;->a()V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configure(debugLogging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lcom/adobe/b/c/a/c/g;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 106
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    invoke-interface {v0}, Lcom/adobe/b/a/c;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/adobe/b/a/b;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const-string v0, "trackComplete"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 267
    const-string v1, "callback"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "video_complete"

    invoke-virtual {p0, v1, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, "video_load"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/b/c/a/c/f;->j:Z

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/b/c/a/c/f;->k:Z

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/b/c/a/c/f;->j:Z

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    const-string v0, "video_unload"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iput-boolean v2, p0, Lcom/adobe/b/c/a/c/f;->j:Z

    .line 168
    iput-boolean v2, p0, Lcom/adobe/b/c/a/c/f;->k:Z

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string v0, "trackPlay"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "play"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string v0, "trackPause"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "pause"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string v0, "trackBufferStart"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "buffer_start"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v0, "trackBufferComplete"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "buffer_complete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const-string v0, "trackSeekStart"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "seek_start"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const-string v0, "trackSeekComplete"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "seek_complete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    const-string v0, "trackChapterStart"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "chapter_start"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string v0, "trackChapterComplete"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "chapter_complete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v0, "trackAdStart"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "ad_start"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/adobe/b/c/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v0, "trackAdComplete"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const-string v0, "ad_complete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
