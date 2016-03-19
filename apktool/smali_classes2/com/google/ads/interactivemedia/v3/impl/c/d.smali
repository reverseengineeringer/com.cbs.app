.class public final Lcom/google/ads/interactivemedia/v3/impl/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/f;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:D

.field public e:I

.field public f:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->a:I

    .line 16
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->b:I

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->c:Z

    .line 18
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->d:D

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->b:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->c:Z

    return v0
.end method

.method public final d()D
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->d:D

    return-wide v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->e:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final f()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->f:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, La/a/a/a/a/c;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 64
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->a:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->b:I

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->c:Z

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->d:D

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->e:I

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/impl/c/d;->f:D

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0xa9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "AdPodInfo [totalAds="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", adPosition="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBumper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", podIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
