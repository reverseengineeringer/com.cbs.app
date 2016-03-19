.class public final Lcom/urbanairship/push/iam/InAppMessage$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/InAppMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/urbanairship/json/c;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Long;

.field private h:Ljava/lang/Long;

.field private i:I

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->c:Ljava/util/Map;

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->i:I

    .line 535
    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 2

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->c:Ljava/util/Map;

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->i:I

    .line 543
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->a(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->f:Ljava/lang/String;

    .line 544
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->b(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->d:Ljava/lang/String;

    .line 545
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->c(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->e:Ljava/lang/String;

    .line 546
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->d(Lcom/urbanairship/push/iam/InAppMessage;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->g:Ljava/lang/Long;

    .line 547
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->e(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->h:Ljava/lang/Long;

    .line 548
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->f(Lcom/urbanairship/push/iam/InAppMessage;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->i:I

    .line 549
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->g(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->a:Ljava/util/Map;

    .line 550
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->h(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->c:Ljava/util/Map;

    .line 551
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->i(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/json/c;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->b:Lcom/urbanairship/json/c;

    .line 552
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->j(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->j:Ljava/lang/Integer;

    .line 553
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->k(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->k:Ljava/lang/Integer;

    .line 554
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->g:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic b(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/urbanairship/push/iam/InAppMessage$a;)Lcom/urbanairship/json/c;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->b:Lcom/urbanairship/json/c;

    return-object v0
.end method

.method static synthetic d(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->h:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic f(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i(Lcom/urbanairship/push/iam/InAppMessage$a;)I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->i:I

    return v0
.end method

.method static synthetic j(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic k(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->k:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 2

    .prologue
    .line 680
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position must be either InAppMessage.POSITION_BOTTOM or InAppMessage.POSITION_TOP."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_0
    iput p1, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->i:I

    .line 685
    return-object p0
.end method

.method public final a(Lcom/urbanairship/json/c;)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->b:Lcom/urbanairship/json/c;

    .line 592
    return-object p0
.end method

.method public final a(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->j:Ljava/lang/Integer;

    .line 697
    return-object p0
.end method

.method public final a(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->g:Ljava/lang/Long;

    .line 579
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->f:Ljava/lang/String;

    .line 566
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;)",
            "Lcom/urbanairship/push/iam/InAppMessage$a;"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->c:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;)",
            "Lcom/urbanairship/push/iam/InAppMessage$a;"
        }
    .end annotation

    .prologue
    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->a:Ljava/util/Map;

    .line 609
    return-object p0
.end method

.method public final a()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 2

    .prologue
    .line 719
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>(Lcom/urbanairship/push/iam/InAppMessage$a;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->k:Ljava/lang/Integer;

    .line 709
    return-object p0
.end method

.method public final b(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 4

    .prologue
    .line 662
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration must be greater than 0 milliseconds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->h:Ljava/lang/Long;

    .line 667
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->d:Ljava/lang/String;

    .line 638
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$a;
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$a;->e:Ljava/lang/String;

    .line 650
    return-object p0
.end method
