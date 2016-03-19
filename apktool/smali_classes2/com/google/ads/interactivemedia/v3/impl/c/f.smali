.class final Lcom/google/ads/interactivemedia/v3/impl/c/f;
.super Lcom/google/ads/interactivemedia/v3/impl/c/b$a;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/c/b$a;-><init>()V

    .line 19
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->a:I

    .line 20
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->b:I

    .line 21
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->c:I

    .line 22
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->d:I

    .line 23
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    if-eqz v2, :cond_3

    .line 61
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    .line 62
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->a:I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b$a;->a()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->b:I

    .line 63
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b$a;->b()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->c:I

    .line 64
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b$a;->c()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->d:I

    .line 65
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b$a;->d()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const v2, 0xf4243

    .line 74
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->a:I

    xor-int/2addr v0, v2

    .line 75
    mul-int/2addr v0, v2

    .line 76
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->b:I

    xor-int/2addr v0, v1

    .line 77
    mul-int/2addr v0, v2

    .line 78
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->c:I

    xor-int/2addr v0, v1

    .line 79
    mul-int/2addr v0, v2

    .line 80
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->d:I

    xor-int/2addr v0, v1

    .line 81
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 47
    const-string v0, "BoundingRect{left="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->a:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->b:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->c:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/f;->d:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x44

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
