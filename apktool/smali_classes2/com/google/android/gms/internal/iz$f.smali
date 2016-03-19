.class final Lcom/google/android/gms/internal/iz$f;
.super Lcom/google/android/gms/internal/iz$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iz;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/iz;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/a$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/iz$f;->a:Lcom/google/android/gms/internal/iz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/iz$i;-><init>(Lcom/google/android/gms/internal/iz;B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/iz$f;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$f;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->c(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/internal/jb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$f;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->g(Lcom/google/android/gms/internal/iz;)Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iz$f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    iget-object v3, p0, Lcom/google/android/gms/internal/iz$f;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v3}, Lcom/google/android/gms/internal/iz;->f(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/common/internal/s;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/internal/s;Ljava/util/Set;)V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
