.class public final Lcom/google/android/gms/internal/cg;
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
    .locals 8
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
    const/4 v7, 0x5

    .line 0
    const-string v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "tick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1000
    const-string v0, "label"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "start_label"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2000
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 9000
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3000
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 1000
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->i()Lcom/google/android/gms/internal/ju;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ju;->a()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->i()Lcom/google/android/gms/internal/ju;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/ju;->b()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v2, v4

    add-long/2addr v2, v6

    .line 1000
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "native:view_load"

    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->w()Lcom/google/android/gms/internal/bf;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/bf;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 5000
    :catch_0
    move-exception v0

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :cond_4
    const-string v1, "experiment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6000
    const-string v0, "value"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7000
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 6000
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->w()Lcom/google/android/gms/internal/bf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bf;->a()Lcom/google/android/gms/internal/bg;

    move-result-object v1

    if-nez v1, :cond_6

    .line 8000
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 6000
    :cond_6
    const-string v2, "e"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 0
    :cond_7
    const-string v1, "extra"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9000
    const-string v0, "name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "value"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10000
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_0

    .line 9000
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 11000
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_0

    .line 9000
    :cond_9
    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->w()Lcom/google/android/gms/internal/bf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bf;->a()Lcom/google/android/gms/internal/bg;

    move-result-object v2

    if-nez v2, :cond_a

    .line 12000
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_0

    .line 9000
    :cond_a
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
