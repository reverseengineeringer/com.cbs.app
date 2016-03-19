.class public final Lcom/google/ads/interactivemedia/v3/b/c;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/c$a;,
        Lcom/google/ads/interactivemedia/v3/b/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/c$a;

.field private final b:Lcom/google/ads/interactivemedia/v3/b/c$b;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/c$b;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/b/c$a;->a(I)Lcom/google/ads/interactivemedia/v3/b/c$a;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/c;->b:Lcom/google/ads/interactivemedia/v3/b/c$b;

    .line 191
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/c;->a:Lcom/google/ads/interactivemedia/v3/b/c$a;

    .line 192
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/b/c$b;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/c;->b:Lcom/google/ads/interactivemedia/v3/b/c$b;

    return-object v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/b/c$a;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/c;->a:Lcom/google/ads/interactivemedia/v3/b/c$a;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/c;->b:Lcom/google/ads/interactivemedia/v3/b/c$b;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/c;->a:Lcom/google/ads/interactivemedia/v3/b/c$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/c;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "AdError [errorType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", errorCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
