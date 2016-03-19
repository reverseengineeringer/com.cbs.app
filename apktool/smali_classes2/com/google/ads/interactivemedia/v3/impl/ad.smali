.class public final Lcom/google/ads/interactivemedia/v3/impl/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/e;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/a/d;

.field private final b:Lcom/google/ads/interactivemedia/v3/impl/k;

.field private final c:Lcom/google/ads/interactivemedia/v3/impl/m;

.field private final d:Lcom/google/ads/interactivemedia/v3/impl/o;

.field private final e:Lcom/google/ads/interactivemedia/v3/impl/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ac;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/impl/m;Lcom/google/ads/interactivemedia/v3/b/b;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 35
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/ad;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ac;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/impl/m;Lcom/google/ads/interactivemedia/v3/b/b;Landroid/content/Context;B)V

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ac;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/impl/m;Lcom/google/ads/interactivemedia/v3/b/b;Landroid/content/Context;B)V
    .locals 6

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-interface {p5}, Lcom/google/ads/interactivemedia/v3/b/b;->a()Lcom/google/ads/interactivemedia/v3/b/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    .line 55
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/c$a;->r:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v3, "Ad Player was not provided."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/k;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    .line 65
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/ac;->a()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/k;-><init>(Lcom/google/ads/interactivemedia/v3/b/a/a;J)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/k;

    .line 67
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->c:Lcom/google/ads/interactivemedia/v3/impl/m;

    .line 71
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/o;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/o;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ac;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/b/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->d:Lcom/google/ads/interactivemedia/v3/impl/o;

    .line 74
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/j;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-direct {v0, p3, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/j;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/k;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/k;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->d:Lcom/google/ads/interactivemedia/v3/impl/o;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/k;->a(Lcom/google/ads/interactivemedia/v3/impl/c$b;)V

    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/k;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/k;->a(Lcom/google/ads/interactivemedia/v3/impl/c$b;)V

    .line 81
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/c/c;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->d:Lcom/google/ads/interactivemedia/v3/impl/o;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/o;->a(Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    .line 140
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/z$c;)Z
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ad$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/a/d;->addCallback(Lcom/google/ads/interactivemedia/v3/b/a/d$a;)V

    .line 134
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/a/d;->removeCallback(Lcom/google/ads/interactivemedia/v3/b/a/d$a;)V

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/impl/c/l;)Z
    .locals 6

    .prologue
    .line 90
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ad$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/d;->playAd()V

    .line 119
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/d;->pauseAd()V

    goto :goto_1

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/d;->resumeAd()V

    goto :goto_1

    .line 101
    :pswitch_3
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/impl/c/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/impl/c/l;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/a/d;->loadAd(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->c:Lcom/google/ads/interactivemedia/v3/impl/m;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/c$a;->a:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v5, "Load message must contain video url."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Lcom/google/ads/interactivemedia/v3/b/c;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/m;->a(Lcom/google/ads/interactivemedia/v3/b/d;)V

    goto :goto_1

    .line 110
    :pswitch_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->a()V

    goto :goto_1

    .line 113
    :pswitch_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->b()V

    goto :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/d;->stopAd()V

    .line 145
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->d:Lcom/google/ads/interactivemedia/v3/impl/o;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/o;->a()V

    .line 146
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->b()V

    .line 157
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/k;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->d:Lcom/google/ads/interactivemedia/v3/impl/o;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/k;->b(Lcom/google/ads/interactivemedia/v3/impl/c$b;)V

    .line 158
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/k;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/k;->b(Lcom/google/ads/interactivemedia/v3/impl/c$b;)V

    .line 159
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->d:Lcom/google/ads/interactivemedia/v3/impl/o;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/o;->a()V

    .line 160
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/a/d;->removeCallback(Lcom/google/ads/interactivemedia/v3/b/a/d$a;)V

    .line 161
    return-void
.end method

.method public final getAdProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/b/a/d;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/d;->getAdProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final onAdError(Lcom/google/ads/interactivemedia/v3/b/d;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->d:Lcom/google/ads/interactivemedia/v3/impl/o;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/o;->a()V

    .line 151
    return-void
.end method
