.class public final Lcom/google/android/gms/internal/fq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fn$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/fn$a",
        "<",
        "Lcom/google/android/gms/ads/internal/formats/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/fq;->a:Z

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/jp;)Lcom/google/android/gms/internal/jp;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/jp",
            "<TK;",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;)",
            "Lcom/google/android/gms/internal/jp",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/jp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/jp;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jp;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jp;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jp;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/jp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/fn;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/h$a;
    .locals 9

    .prologue
    .line 0
    .line 1000
    new-instance v1, Lcom/google/android/gms/internal/jp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/jp;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/jp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/jp;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/hj;

    move-result-object v3

    const-string v0, "custom_assets"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2000
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "string_value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/jp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "image"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3000
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "image_value"

    iget-boolean v8, p0, Lcom/google/android/gms/internal/fq;->a:Z

    invoke-virtual {p1, v5, v7, v8}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/google/android/gms/internal/jp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1000
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Unknown custom asset type: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1

    .line 1000
    :cond_2
    new-instance v4, Lcom/google/android/gms/ads/internal/formats/f;

    const-string v0, "custom_template_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/internal/jp;)Lcom/google/android/gms/internal/jp;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/a;

    invoke-direct {v4, v5, v1, v2, v0}, Lcom/google/android/gms/ads/internal/formats/f;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/ads/internal/formats/a;)V

    .line 0
    return-object v4
.end method
