.class final Lcom/google/android/gms/internal/iz$h;
.super Lcom/google/android/gms/internal/iz$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
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

    iput-object p1, p0, Lcom/google/android/gms/internal/iz$h;->a:Lcom/google/android/gms/internal/iz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/iz$i;-><init>(Lcom/google/android/gms/internal/iz;B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/iz$h;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    iget-object v2, p0, Lcom/google/android/gms/internal/iz$h;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v2}, Lcom/google/android/gms/internal/iz;->f(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/common/internal/s;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/internal/s;)V

    goto :goto_0

    :cond_0
    return-void
.end method
