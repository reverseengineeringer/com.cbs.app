.class final Lcom/google/ads/interactivemedia/v3/impl/c/e;
.super Lcom/google/ads/interactivemedia/v3/impl/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/c/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:D

.field private final g:Z

.field private final h:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

.field private final i:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/c/b$a;Lcom/google/ads/interactivemedia/v3/impl/c/b$a;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/c/b;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null queryId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->a:Ljava/lang/String;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null eventId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->b:Ljava/lang/String;

    .line 37
    if-nez p3, :cond_2

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null vastEvent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->c:Ljava/lang/String;

    .line 41
    if-nez p4, :cond_3

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null appState"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_3
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->d:Ljava/lang/String;

    .line 45
    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->e:J

    .line 46
    iput-wide p7, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->f:D

    .line 47
    iput-boolean p9, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->g:Z

    .line 48
    if-nez p10, :cond_4

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null nativeViewBounds"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4
    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->h:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    .line 52
    if-nez p11, :cond_5

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null nativeViewVisibleBounds"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_5
    iput-object p11, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->i:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/c/b$a;Lcom/google/ads/interactivemedia/v3/impl/c/b$a;B)V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p11}, Lcom/google/ads/interactivemedia/v3/impl/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/c/b$a;Lcom/google/ads/interactivemedia/v3/impl/c/b$a;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    if-ne p1, p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/c/b;

    if-eqz v2, :cond_3

    .line 124
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/c/b;

    .line 125
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->b:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->c:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->d:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->e:J

    .line 129
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->f:D

    .line 130
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->g()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->g:Z

    .line 131
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->h()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->h:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    .line 132
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->i()Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->i:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    .line 133
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->j()Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->e:J

    return-wide v0
.end method

.method public final g()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->f:D

    return-wide v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->g:Z

    return v0
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const v6, 0xf4243

    .line 142
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v6

    .line 143
    mul-int/2addr v0, v6

    .line 144
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 145
    mul-int/2addr v0, v6

    .line 146
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 147
    mul-int/2addr v0, v6

    .line 148
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 149
    mul-int/2addr v0, v6

    .line 150
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->e:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->e:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 151
    mul-int/2addr v0, v6

    .line 152
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->f:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 153
    mul-int v1, v0, v6

    .line 154
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->g:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    xor-int/2addr v0, v1

    .line 155
    mul-int/2addr v0, v6

    .line 156
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->h:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 157
    mul-int/2addr v0, v6

    .line 158
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->i:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 159
    return v0

    .line 154
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public final i()Lcom/google/ads/interactivemedia/v3/impl/c/b$a;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->h:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    return-object v0
.end method

.method public final j()Lcom/google/ads/interactivemedia/v3/impl/c/b$a;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->i:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    .prologue
    .line 105
    const-string v0, "ActivityMonitorData{queryId="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->d:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->e:J

    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->f:D

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->g:Z

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->h:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e;->i:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit16 v13, v13, 0xaf

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vastEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeViewHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeViewBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeViewVisibleBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
