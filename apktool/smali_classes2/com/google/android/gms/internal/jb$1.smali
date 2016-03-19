.class final Lcom/google/android/gms/internal/jb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/jb$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jb$1;->a:Lcom/google/android/gms/internal/jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/jb$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/jb$f",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jb$1;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/jb$f;->b()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jb$1;->a:Lcom/google/android/gms/internal/jb;

    invoke-static {v0}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/jb;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jb$1;->a:Lcom/google/android/gms/internal/jb;

    invoke-static {v0}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/jb;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/jb$f;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->a()V

    :cond_0
    return-void
.end method
