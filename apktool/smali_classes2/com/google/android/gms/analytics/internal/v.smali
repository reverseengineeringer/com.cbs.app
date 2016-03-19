.class public final Lcom/google/android/gms/analytics/internal/v;
.super Lcom/google/android/gms/analytics/internal/o;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/q;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/o;-><init>(Lcom/google/android/gms/analytics/internal/q;)V

    new-instance v0, Lcom/google/android/gms/internal/ki;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ki;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/v;->a:Lcom/google/android/gms/internal/ki;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/v;->p()Lcom/google/android/gms/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/e;->a()Lcom/google/android/gms/internal/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/v;->a:Lcom/google/android/gms/internal/ki;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/ki;)V

    .line 1000
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/v;->s()Lcom/google/android/gms/analytics/internal/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/l;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/v;->a:Lcom/google/android/gms/internal/ki;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ki;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/l;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/v;->a:Lcom/google/android/gms/internal/ki;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ki;->b(Ljava/lang/String;)V

    .line 0
    :cond_1
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ki;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/v;->x()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/v;->a:Lcom/google/android/gms/internal/ki;

    return-object v0
.end method
