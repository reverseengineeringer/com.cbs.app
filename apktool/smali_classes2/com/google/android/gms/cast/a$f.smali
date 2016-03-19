.class abstract Lcom/google/android/gms/cast/a$f;
.super Lcom/google/android/gms/cast/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/cast/internal/b",
        "<",
        "Lcom/google/android/gms/cast/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/b;-><init>(Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/e;
    .locals 1

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/cast/a$f$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/a$f$1;-><init>(Lcom/google/android/gms/cast/a$f;Lcom/google/android/gms/common/api/Status;)V

    .line 0
    return-object v0
.end method
