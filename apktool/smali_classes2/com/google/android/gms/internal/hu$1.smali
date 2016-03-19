.class final Lcom/google/android/gms/internal/hu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hu;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hu$1;->a:Lcom/google/android/gms/internal/hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$1;->a:Lcom/google/android/gms/internal/hu;

    iget-object v0, v0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->x()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$1;->a:Lcom/google/android/gms/internal/hu;

    iget-object v0, v0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->h()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hu$1;->a:Lcom/google/android/gms/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hu;->d(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hu$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$1;->a:Lcom/google/android/gms/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hu;->d(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hu$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/hu$b;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hu$1;->a:Lcom/google/android/gms/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hu;->e(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hu$b;

    :cond_1
    return-void
.end method
