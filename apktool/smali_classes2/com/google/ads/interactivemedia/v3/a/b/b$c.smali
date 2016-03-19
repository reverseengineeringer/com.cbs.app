.class final Lcom/google/ads/interactivemedia/v3/a/b/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    array-length v0, p2

    if-gt v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/a;->a(Z)V

    .line 538
    array-length v0, p1

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/a;->a(Z)V

    .line 540
    array-length v0, p2

    if-ne v0, v1, :cond_3

    .line 541
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/b;->e(Ljava/lang/reflect/Type;)V

    .line 543
    aget-object v0, p1, v2

    const-class v3, Ljava/lang/Object;

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/b/a;->a(Z)V

    .line 544
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->b:Ljava/lang/reflect/Type;

    .line 545
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->a:Ljava/lang/reflect/Type;

    .line 553
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 537
    goto :goto_0

    :cond_1
    move v0, v2

    .line 538
    goto :goto_1

    :cond_2
    move v1, v2

    .line 543
    goto :goto_2

    .line 548
    :cond_3
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/b;->e(Ljava/lang/reflect/Type;)V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->b:Ljava/lang/reflect/Type;

    .line 551
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->a:Ljava/lang/reflect/Type;

    goto :goto_3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 564
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 565
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->b:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/b;->a:[Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method public final getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 556
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->a:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->a:Ljava/lang/reflect/Type;

    .line 571
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0

    .line 570
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_1

    .line 576
    const-string v1, "? super "

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/b;->c(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->a:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 578
    const-string v0, "?"

    goto :goto_0

    .line 580
    :cond_2
    const-string v1, "? extends "

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/b$c;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/b;->c(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
