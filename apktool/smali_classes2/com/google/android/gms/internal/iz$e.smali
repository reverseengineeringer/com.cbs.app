.class final Lcom/google/android/gms/internal/iz$e;
.super Lcom/google/android/gms/internal/iz$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iz;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$c;",
            "Lcom/google/android/gms/common/api/b$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/iz;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$c;",
            "Lcom/google/android/gms/common/api/b$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/iz$e;->a:Lcom/google/android/gms/internal/iz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/iz$i;-><init>(Lcom/google/android/gms/internal/iz;B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/iz$e;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$e;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/internal/iz;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$e;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->c(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/internal/jb;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/iz$e$1;

    iget-object v3, p0, Lcom/google/android/gms/internal/iz$e;->a:Lcom/google/android/gms/internal/iz;

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/gms/internal/iz$e$1;-><init>(Lcom/google/android/gms/internal/iz$e;Lcom/google/android/gms/internal/jc;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/jb$b;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/iz$e;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->d(Lcom/google/android/gms/internal/iz;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$e;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->e(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/internal/kz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/kz;->f()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/iz$e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    iget-object v1, p0, Lcom/google/android/gms/internal/iz$e;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/b$e;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/b$e;)V

    goto :goto_0
.end method
