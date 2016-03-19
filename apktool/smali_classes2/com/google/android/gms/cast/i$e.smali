.class abstract Lcom/google/android/gms/cast/i$e;
.super Lcom/google/android/gms/cast/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/cast/internal/b",
        "<",
        "Lcom/google/android/gms/cast/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field h:Lcom/google/android/gms/cast/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/b;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/b;-><init>(Lcom/google/android/gms/common/api/b;)V

    new-instance v0, Lcom/google/android/gms/cast/i$e$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/i$e$1;-><init>(Lcom/google/android/gms/cast/i$e;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/i$e;->h:Lcom/google/android/gms/cast/internal/o;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/i$e;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/i$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/i$a;
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/i$e$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/i$e$2;-><init>(Lcom/google/android/gms/cast/i$e;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
