.class final Lcom/google/android/gms/internal/cx$e$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cx$e$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aa;

.field final synthetic b:Lcom/google/android/gms/internal/cx$e$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cx$e$3;Lcom/google/android/gms/internal/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cx$e$3$1;->b:Lcom/google/android/gms/internal/cx$e$3;

    iput-object p2, p0, Lcom/google/android/gms/internal/cx$e$3$1;->a:Lcom/google/android/gms/internal/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$e$3$1;->b:Lcom/google/android/gms/internal/cx$e$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/cx$e$3;->a:Lcom/google/android/gms/internal/cx$e;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx$e;->a(Lcom/google/android/gms/internal/cx$e;)Lcom/google/android/gms/internal/cx$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cx$e$3$1;->a:Lcom/google/android/gms/internal/aa;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cx$b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$e$3$1;->a:Lcom/google/android/gms/internal/aa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aa;->a()V

    return-void
.end method
