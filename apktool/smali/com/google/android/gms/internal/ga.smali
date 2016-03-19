.class public final Lcom/google/android/gms/internal/ga;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ga$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ga$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->a:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/fz;
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ga$a;

    if-eqz v0, :cond_1

    .line 1000
    iget-wide v2, v0, Lcom/google/android/gms/internal/ga$a;->a:J

    sget-object v1, Lcom/google/android/gms/internal/ax;->ad:Lcom/google/android/gms/internal/at;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v1

    .line 1000
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->i()Lcom/google/android/gms/internal/ju;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ju;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    .line 0
    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ax;->ac:Lcom/google/android/gms/internal/at;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/fz$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/ga$a;->b:Lcom/google/android/gms/internal/fz;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/fz$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fz$a;->a()Lcom/google/android/gms/internal/fz;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ga;->a:Ljava/util/WeakHashMap;

    new-instance v2, Lcom/google/android/gms/internal/ga$a;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ga$a;-><init>(Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fz;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 1000
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 0
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/fz$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fz$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz$a;->a()Lcom/google/android/gms/internal/fz;

    move-result-object v0

    goto :goto_1
.end method
