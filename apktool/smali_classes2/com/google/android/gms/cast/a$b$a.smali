.class public final Lcom/google/android/gms/cast/a$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/b;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/a$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/a$b$a$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/a$b$a$2;-><init>(Lcom/google/android/gms/cast/a$b$a;Lcom/google/android/gms/common/api/b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/a$b$a$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/cast/a$b$a$1;-><init>(Lcom/google/android/gms/cast/a$b$a;Lcom/google/android/gms/common/api/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;)V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/e;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/e;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/i;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;D)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/e;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/cast/internal/e;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;Ljava/lang/String;Lcom/google/android/gms/cast/a$e;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/e;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/cast/internal/e;->a(Ljava/lang/String;Lcom/google/android/gms/cast/a$e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/api/b;)D
    .locals 2

    sget-object v0, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/e;->f()D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Lcom/google/android/gms/common/api/b;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/a$b$a$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/a$b$a$4;-><init>(Lcom/google/android/gms/cast/a$b$a;Lcom/google/android/gms/common/api/b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/api/b;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    new-instance v0, Lcom/google/android/gms/cast/a$b$a$3;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/a$b$a$3;-><init>(Lcom/google/android/gms/cast/a$b$a;Lcom/google/android/gms/common/api/b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/JoinOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final c(Lcom/google/android/gms/common/api/b;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/e;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/cast/internal/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/common/api/b;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/e;->g()Z

    move-result v0

    return v0
.end method

.method public final d(Lcom/google/android/gms/common/api/b;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/e;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
