.class public final Lcom/google/ads/interactivemedia/v3/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/e;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/b/e$b;

.field private b:Lcom/google/ads/interactivemedia/v3/b/a;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/b/a;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/e$b;",
            "Lcom/google/ads/interactivemedia/v3/b/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->a:Lcom/google/ads/interactivemedia/v3/b/e$b;

    .line 28
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->b:Lcom/google/ads/interactivemedia/v3/b/a;

    .line 29
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Ljava/util/Map;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/b/e$b;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->a:Lcom/google/ads/interactivemedia/v3/b/e$b;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/i;

    if-nez v2, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/i;

    .line 77
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->a:Lcom/google/ads/interactivemedia/v3/b/e$b;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/i;->a:Lcom/google/ads/interactivemedia/v3/b/e$b;

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->b:Lcom/google/ads/interactivemedia/v3/b/a;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/i;->b:Lcom/google/ads/interactivemedia/v3/b/a;

    invoke-static {v2, v3}, Lcom/google/c/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/google/c/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->a:Lcom/google/ads/interactivemedia/v3/b/e$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->b:Lcom/google/ads/interactivemedia/v3/b/a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Ljava/util/Map;

    aput-object v2, v0, v1

    .line 1084
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 91
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 96
    const-string v0, "AdEvent[type=%s, ad=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->a:Lcom/google/ads/interactivemedia/v3/b/e$b;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->b:Lcom/google/ads/interactivemedia/v3/b/a;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, "]"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v3, ", adData=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    .line 1102
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1103
    const-string v0, ""

    .line 98
    :goto_2
    aput-object v0, v4, v7

    .line 97
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1105
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1107
    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1108
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1113
    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1116
    :cond_3
    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 97
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
