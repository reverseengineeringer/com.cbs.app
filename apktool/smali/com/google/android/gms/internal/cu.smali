.class public final Lcom/google/android/gms/internal/cu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ci;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/hs;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hs;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->r()Lcom/google/android/gms/internal/cs;

    const-string v0, "abort"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/hs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2000
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :cond_2
    :try_start_0
    const-string v1, "player"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "mimetype"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "mimetype"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/cs;->b(Lcom/google/android/gms/internal/hs;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3000
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->g()Lcom/google/android/gms/ads/internal/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/f;->a(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->g()Lcom/google/android/gms/ads/internal/d;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/d;->a:Lcom/google/android/gms/internal/cv;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/cv;->a(Lcom/google/android/gms/internal/hs;)Lcom/google/android/gms/internal/ct;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/cr;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/ct;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->e()Ljava/util/concurrent/Future;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
