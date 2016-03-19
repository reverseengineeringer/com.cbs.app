.class final Lcom/google/android/gms/internal/kx$1;
.super Lcom/google/android/gms/common/api/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$b",
        "<",
        "Lcom/google/android/gms/signin/internal/i;",
        "Lcom/google/android/gms/internal/la;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/j;Ljava/lang/Object;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)Lcom/google/android/gms/common/api/a$c;
    .locals 9

    .prologue
    .line 0
    check-cast p4, Lcom/google/android/gms/internal/la;

    .line 1000
    if-nez p4, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/la;->a:Lcom/google/android/gms/internal/la;

    :goto_0
    new-instance v0, Lcom/google/android/gms/signin/internal/i;

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/signin/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/j;Lcom/google/android/gms/internal/la;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;Ljava/util/concurrent/ExecutorService;)V

    .line 0
    return-object v0

    :cond_0
    move-object v5, p4

    goto :goto_0
.end method
