.class public final Lcom/google/android/gms/cast/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/cast/e;

.field private e:J

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/cast/j;

.field private h:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content ID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/d;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/cast/d;->b:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/cast/d;->e:J

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "contentId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/d;->a:Ljava/lang/String;

    const-string v1, "streamType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/cast/d;->b:I

    :goto_0
    const-string v1, "contentType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/d;->c:Ljava/lang/String;

    const-string v1, "metadata"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "metadata"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "metadataType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/google/android/gms/cast/e;

    invoke-direct {v3, v2}, Lcom/google/android/gms/cast/e;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/gms/cast/d;->d:Lcom/google/android/gms/cast/e;

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->d:Lcom/google/android/gms/cast/e;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/e;->a(Lorg/json/JSONObject;)V

    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/cast/d;->e:J

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "duration"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/f;->a(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/cast/d;->e:J

    :cond_1
    const-string v1, "tracks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/d;->f:Ljava/util/List;

    const-string v1, "tracks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/cast/h;

    invoke-direct {v3, v2}, Lcom/google/android/gms/cast/h;-><init>(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "BUFFERED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/cast/d;->b:I

    goto/16 :goto_0

    :cond_3
    const-string v2, "LIVE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/cast/d;->b:I

    goto/16 :goto_0

    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/cast/d;->b:I

    goto/16 :goto_0

    :cond_5
    iput-object v4, p0, Lcom/google/android/gms/cast/d;->f:Ljava/util/List;

    :cond_6
    const-string v0, "textTrackStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "textTrackStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/j;

    invoke-direct {v1}, Lcom/google/android/gms/cast/j;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/j;->a(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/d;->g:Lcom/google/android/gms/cast/j;

    :goto_2
    const-string v0, "customData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    return-void

    :cond_7
    iput-object v4, p0, Lcom/google/android/gms/cast/d;->g:Lcom/google/android/gms/cast/j;

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method final a(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid stream type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/google/android/gms/cast/d;->b:I

    return-void
.end method

.method final a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/cast/d;->e:J

    return-void
.end method

.method final a(Lcom/google/android/gms/cast/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/d;->d:Lcom/google/android/gms/cast/e;

    return-void
.end method

.method public final a(Lcom/google/android/gms/cast/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/d;->g:Lcom/google/android/gms/cast/j;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content type cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/d;->c:Ljava/lang/String;

    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/cast/d;->f:Ljava/util/List;

    return-void
.end method

.method final a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/d;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/cast/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->d:Lcom/google/android/gms/cast/e;

    return-object v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/d;->e:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/cast/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/cast/d;

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/jy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/d;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gms/cast/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/cast/d;->b:I

    iget v3, p1, Lcom/google/android/gms/cast/d;->b:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/d;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gms/cast/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->d:Lcom/google/android/gms/cast/e;

    iget-object v3, p1, Lcom/google/android/gms/cast/d;->d:Lcom/google/android/gms/cast/e;

    invoke-static {v0, v3}, Lcom/google/android/gms/cast/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/cast/d;->e:J

    iget-wide v6, p1, Lcom/google/android/gms/cast/d;->e:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->f:Ljava/util/List;

    return-object v0
.end method

.method public final g()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method final h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content ID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content type cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/cast/d;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a valid stream type must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/cast/d;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->d:Lcom/google/android/gms/cast/e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/cast/d;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1000
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 0
    return v0
.end method

.method public final i()Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "contentId"

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/google/android/gms/cast/d;->b:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "NONE"

    :goto_0
    const-string v2, "streamType"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "contentType"

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/d;->d:Lcom/google/android/gms/cast/e;

    if-eqz v0, :cond_1

    const-string v0, "metadata"

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->d:Lcom/google/android/gms/cast/e;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/e;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/cast/d;->e:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    const-string v0, "duration"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/cast/d;->f:Ljava/util/List;

    if-eqz v0, :cond_5

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/cast/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/h;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->h()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_2
    :goto_3
    return-object v1

    :pswitch_0
    const-string v0, "BUFFERED"

    goto :goto_0

    :pswitch_1
    const-string v0, "LIVE"

    goto :goto_0

    :cond_3
    const-string v0, "duration"

    iget-wide v2, p0, Lcom/google/android/gms/cast/d;->e:J

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    const-string v0, "tracks"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/cast/d;->g:Lcom/google/android/gms/cast/j;

    if-eqz v0, :cond_6

    const-string v0, "textTrackStyle"

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->g:Lcom/google/android/gms/cast/j;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/j;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v0, "customData"

    iget-object v2, p0, Lcom/google/android/gms/cast/d;->h:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
