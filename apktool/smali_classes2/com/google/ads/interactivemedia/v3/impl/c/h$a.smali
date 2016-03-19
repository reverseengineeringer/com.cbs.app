.class final Lcom/google/ads/interactivemedia/v3/impl/c/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/c/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/ads/interactivemedia/v3/impl/r$a;

.field private g:Ljava/util/Map;
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

.field private h:Ljava/util/Map;
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

.field private i:Lcom/google/ads/interactivemedia/v3/b/n;

.field private j:Lcom/google/ads/interactivemedia/v3/impl/l$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/b/n;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->i:Lcom/google/ads/interactivemedia/v3/b/n;

    .line 239
    return-object p0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/l$b;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->j:Lcom/google/ads/interactivemedia/v3/impl/l$b;

    .line 244
    return-object p0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/r$a;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->f:Lcom/google/ads/interactivemedia/v3/impl/r$a;

    .line 224
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->a:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/c/k$a;"
        }
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->g:Ljava/util/Map;

    .line 229
    return-object p0
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/impl/c/k;
    .locals 12

    .prologue
    .line 248
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/c/h;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->f:Lcom/google/ads/interactivemedia/v3/impl/r$a;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->g:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->h:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->i:Lcom/google/ads/interactivemedia/v3/b/n;

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->j:Lcom/google/ads/interactivemedia/v3/impl/l$b;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/impl/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/r$a;Ljava/util/Map;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/b/n;Lcom/google/ads/interactivemedia/v3/impl/l$b;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->b:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public final b(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/c/k$a;"
        }
    .end annotation

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->h:Ljava/util/Map;

    .line 234
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->c:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->d:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;->e:Ljava/lang/String;

    .line 219
    return-object p0
.end method
