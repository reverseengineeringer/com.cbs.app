.class final Lcom/google/ads/interactivemedia/v3/impl/c/i;
.super Lcom/google/ads/interactivemedia/v3/impl/c/a;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:F

.field private final d:Z

.field private final e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->a:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->b:Z

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->c:F

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->e:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/c/a;

    if-eqz v2, :cond_5

    .line 93
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/c/a;

    .line 94
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->a:Z

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->a()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->b:Z

    .line 95
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->b()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->c:F

    .line 96
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->c()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->d:Z

    .line 97
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->d()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->e:Z

    .line 98
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->e()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->f:Ljava/util/List;

    if-nez v2, :cond_3

    .line 99
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->f()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->g:Ljava/util/Map;

    if-nez v2, :cond_4

    .line 100
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->g()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 99
    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 100
    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->g()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->f:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const v5, 0xf4243

    .line 109
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v5

    .line 110
    mul-int v4, v0, v5

    .line 111
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->b:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v4

    .line 112
    mul-int/2addr v0, v5

    .line 113
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->c:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    xor-int/2addr v0, v4

    .line 114
    mul-int v4, v0, v5

    .line 115
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->d:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    xor-int/2addr v0, v4

    .line 116
    mul-int/2addr v0, v5

    .line 117
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->e:Z

    if-eqz v4, :cond_3

    :goto_3
    xor-int/2addr v0, v1

    .line 118
    mul-int v1, v0, v5

    .line 119
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->f:Ljava/util/List;

    if-nez v0, :cond_4

    move v0, v3

    :goto_4
    xor-int/2addr v0, v1

    .line 120
    mul-int/2addr v0, v5

    .line 121
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->g:Ljava/util/Map;

    if-nez v1, :cond_5

    :goto_5
    xor-int/2addr v0, v3

    .line 122
    return v0

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    :cond_1
    move v0, v2

    .line 111
    goto :goto_1

    :cond_2
    move v0, v2

    .line 115
    goto :goto_2

    :cond_3
    move v1, v2

    .line 117
    goto :goto_3

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_4

    .line 121
    :cond_5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 76
    const-string v0, "TestingConfiguration{disableExperiments="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->a:Z

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->b:Z

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->c:F

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->d:Z

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->e:Z

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->f:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/impl/c/i;->g:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit16 v9, v9, 0xaf

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useVideoElementMock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoElementMockDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useTestSsaiStreamManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableMonitorAppLifecycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceExperimentIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
