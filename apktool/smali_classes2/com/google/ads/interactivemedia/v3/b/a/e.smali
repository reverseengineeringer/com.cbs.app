.class public final Lcom/google/ads/interactivemedia/v3/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/b/a/e;


# instance fields
.field private b:F

.field private c:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 13
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/a/e;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/a/e;-><init>(JJ)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->a:Lcom/google/ads/interactivemedia/v3/b/a/e;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    long-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/e;->b:F

    .line 26
    long-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/e;->c:F

    .line 27
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/e;->b:F

    return v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/e;->c:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :cond_3
    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/a/e;

    .line 55
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/e;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/e;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_4
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/e;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/e;->c:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/e;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/e;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1084
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 69
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/e;->b:F

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/e;->c:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VideoProgressUpdate [currentTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
