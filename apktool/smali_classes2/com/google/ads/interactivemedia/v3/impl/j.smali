.class public final Lcom/google/ads/interactivemedia/v3/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/a/d$a;
.implements Lcom/google/ads/interactivemedia/v3/impl/c$b;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/impl/aa;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/ads/interactivemedia/v3/impl/k;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/aa;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/k;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->c:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Z

    .line 26
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 27
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->e:Lcom/google/ads/interactivemedia/v3/impl/k;

    .line 29
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/b/a/e;)V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/z$b;->h:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 96
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Z

    .line 37
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/a/e;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/a/e;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 80
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/a/e;->a()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 81
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$c;->Q:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    .line 5089
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/b/a/e;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Z

    .line 84
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$c;->W:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/b/a/e;)V

    .line 86
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->e:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->b()V

    .line 43
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$c;->D:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    .line 1089
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/b/a/e;)V

    .line 44
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->e:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->a()V

    .line 50
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$c;->E:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    .line 2089
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/b/a/e;)V

    .line 51
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$c;->p:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    .line 3089
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/b/a/e;)V

    .line 56
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$c;->q:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    .line 4089
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/b/a/e;)V

    .line 61
    return-void
.end method
