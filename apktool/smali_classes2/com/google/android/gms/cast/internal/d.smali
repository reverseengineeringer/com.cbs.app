.class public abstract Lcom/google/android/gms/cast/internal/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/cast/internal/n;

.field protected final f:Lcom/google/android/gms/cast/internal/l;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/cast/internal/f;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/d;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/cast/internal/l;

    invoke-direct {v0, p2}, Lcom/google/android/gms/cast/internal/l;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/d;->f:Lcom/google/android/gms/cast/internal/l;

    .line 1000
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/d;->f:Lcom/google/android/gms/cast/internal/l;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/cast/internal/l;->a(Ljava/lang/String;)V

    .line 0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/cast/internal/n;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/d;->b:Lcom/google/android/gms/cast/internal/n;

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/d;->b:Lcom/google/android/gms/cast/internal/n;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/d;->c()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/String;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/d;->f:Lcom/google/android/gms/cast/internal/l;

    const-string v1, "Sending text message: %s to: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/d;->b:Lcom/google/android/gms/cast/internal/n;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/cast/internal/n;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final e()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/d;->b:Lcom/google/android/gms/cast/internal/n;

    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/n;->a()J

    move-result-wide v0

    return-wide v0
.end method
