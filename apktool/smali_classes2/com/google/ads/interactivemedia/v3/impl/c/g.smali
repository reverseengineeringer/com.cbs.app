.class final Lcom/google/ads/interactivemedia/v3/impl/c/g;
.super Lcom/google/ads/interactivemedia/v3/impl/c/j;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/ads/interactivemedia/v3/impl/c/j$a;


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/ads/interactivemedia/v3/impl/c/j$a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->d:Lcom/google/ads/interactivemedia/v3/impl/c/j$a;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/c/j;

    if-eqz v2, :cond_3

    .line 63
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/c/j;

    .line 64
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->c:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->d:Lcom/google/ads/interactivemedia/v3/impl/c/j$a;

    .line 67
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/j;->d()Lcom/google/ads/interactivemedia/v3/impl/c/j$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c/j$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const v2, 0xf4243

    .line 76
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v2

    .line 77
    mul-int/2addr v0, v2

    .line 78
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 79
    mul-int/2addr v0, v2

    .line 80
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 81
    mul-int/2addr v0, v2

    .line 82
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/g;->d:Lcom/google/ads/interactivemedia/v3/impl/c/j$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/c/j$a;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 83
    return v0
.end method
