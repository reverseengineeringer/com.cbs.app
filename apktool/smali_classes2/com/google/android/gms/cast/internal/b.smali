.class public abstract Lcom/google/android/gms/cast/internal/b;
.super Lcom/google/android/gms/internal/iw$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/e;",
        ">",
        "Lcom/google/android/gms/internal/iw$a",
        "<TR;",
        "Lcom/google/android/gms/cast/internal/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/b;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/iw$a;-><init>(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x7d1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/b;->a(Lcom/google/android/gms/common/api/e;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;B)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/b;->a(Lcom/google/android/gms/common/api/e;)V

    return-void
.end method
