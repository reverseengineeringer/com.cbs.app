.class abstract Lcom/google/android/gms/internal/iq$b;
.super Lcom/google/android/gms/internal/iw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/iq$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/iw$a",
        "<",
        "Lcom/google/android/gms/cast/b$c;",
        "Lcom/google/android/gms/internal/ir;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/iq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/iq;Lcom/google/android/gms/common/api/b;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/iq$b;->b:Lcom/google/android/gms/internal/iq;

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->b(Lcom/google/android/gms/internal/iq;)Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/iw$a;-><init>(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/e;
    .locals 1

    .prologue
    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/iq$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/iq$c;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 0
    return-object v0
.end method
