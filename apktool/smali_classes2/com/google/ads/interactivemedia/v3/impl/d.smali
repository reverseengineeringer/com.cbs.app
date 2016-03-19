.class public final Lcom/google/ads/interactivemedia/v3/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/e;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/b/a/c;

.field private b:Lcom/google/ads/interactivemedia/v3/impl/aa;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/ads/interactivemedia/v3/b/k;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/b/b;Lcom/google/ads/interactivemedia/v3/b/k;Lcom/google/ads/interactivemedia/v3/impl/a;)V
    .locals 4

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/b/b;->b()Lcom/google/ads/interactivemedia/v3/b/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->a:Lcom/google/ads/interactivemedia/v3/b/a/c;

    .line 76
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->a:Lcom/google/ads/interactivemedia/v3/b/a/c;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/c$a;->r:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v3, "Server-side ad insertion player was not provided."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->c:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 82
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->d:Lcom/google/ads/interactivemedia/v3/b/k;

    .line 83
    if-eqz p5, :cond_1

    .line 84
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->e:Lcom/google/ads/interactivemedia/v3/impl/a;

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/d$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/d$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/d;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->e:Lcom/google/ads/interactivemedia/v3/impl/a;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/c/c;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/z$c;)Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/impl/c/l;)Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->a:Lcom/google/ads/interactivemedia/v3/b/a/c;

    .line 139
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 140
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->e:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->a()Ljava/lang/String;

    .line 162
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->e:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->a()Ljava/lang/String;

    .line 166
    return-void
.end method

.method public final getAdProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->a:Lcom/google/ads/interactivemedia/v3/b/a/c;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/c;->getContentProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final onAdError(Lcom/google/ads/interactivemedia/v3/b/d;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method
