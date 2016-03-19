.class public final Lcom/google/android/gms/internal/ko;
.super Lcom/google/android/gms/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/b/c",
        "<",
        "Lcom/google/android/gms/internal/ko;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ko;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 8

    .prologue
    const-wide/32 v6, 0x7fffffff

    .line 0
    const/4 v1, 0x0

    .line 1000
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    and-long/2addr v4, v6

    long-to-int v0, v4

    if-eqz v0, :cond_1

    .line 0
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ko;-><init>(ZI)V

    return-void

    .line 1000
    :cond_1
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    and-long/2addr v2, v6

    long-to-int v0, v2

    if-nez v0, :cond_0

    const-string v0, "GAv4"

    const-string v2, "UUID.randomUUID() returned 0."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private constructor <init>(ZI)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/b/c;-><init>()V

    .line 2000
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Integer is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_0
    iput p2, p0, Lcom/google/android/gms/internal/ko;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ko;->g:Z

    return-void
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ko;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenViewInfo is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/b/c;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/ko;

    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->a:Ljava/lang/String;

    .line 4000
    invoke-direct {p1}, Lcom/google/android/gms/internal/ko;->d()V

    iput-object v0, p1, Lcom/google/android/gms/internal/ko;->a:Ljava/lang/String;

    .line 3000
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ko;->b:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ko;->b:I

    .line 5000
    invoke-direct {p1}, Lcom/google/android/gms/internal/ko;->d()V

    iput v0, p1, Lcom/google/android/gms/internal/ko;->b:I

    .line 3000
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ko;->c:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ko;->c:I

    .line 6000
    invoke-direct {p1}, Lcom/google/android/gms/internal/ko;->d()V

    iput v0, p1, Lcom/google/android/gms/internal/ko;->c:I

    .line 3000
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->d:Ljava/lang/String;

    .line 7000
    invoke-direct {p1}, Lcom/google/android/gms/internal/ko;->d()V

    iput-object v0, p1, Lcom/google/android/gms/internal/ko;->d:Ljava/lang/String;

    .line 3000
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->e:Ljava/lang/String;

    .line 8000
    invoke-direct {p1}, Lcom/google/android/gms/internal/ko;->d()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/ko;->e:Ljava/lang/String;

    .line 3000
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ko;->f:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ko;->f:Z

    .line 9000
    invoke-direct {p1}, Lcom/google/android/gms/internal/ko;->d()V

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ko;->f:Z

    .line 3000
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ko;->g:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ko;->g:Z

    .line 10000
    invoke-direct {p1}, Lcom/google/android/gms/internal/ko;->d()V

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ko;->g:Z

    .line 0
    :cond_6
    return-void

    .line 8000
    :cond_7
    iput-object v0, p1, Lcom/google/android/gms/internal/ko;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ko;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/ko;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "interstitial"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ko;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "automatic"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ko;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenId"

    iget v2, p0, Lcom/google/android/gms/internal/ko;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenId"

    iget v2, p0, Lcom/google/android/gms/internal/ko;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/ko;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/ko;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ko;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
