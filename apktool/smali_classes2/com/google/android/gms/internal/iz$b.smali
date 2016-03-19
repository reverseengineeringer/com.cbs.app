.class final Lcom/google/android/gms/internal/iz$b;
.super Lcom/google/android/gms/common/internal/w$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/iz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iz;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/w$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iz$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iz;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->c(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/internal/jb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/iz$b$1;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/internal/iz$b$1;-><init>(Lcom/google/android/gms/internal/iz$b;Lcom/google/android/gms/internal/jc;Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/jb$b;)V

    goto :goto_0
.end method
