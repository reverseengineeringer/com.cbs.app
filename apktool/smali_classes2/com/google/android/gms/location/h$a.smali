.class public abstract Lcom/google/android/gms/location/h$a;
.super Lcom/google/android/gms/internal/iw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/e;",
        ">",
        "Lcom/google/android/gms/internal/iw$a",
        "<TR;",
        "Lcom/google/android/gms/location/internal/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/b;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/location/h;->a()Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/iw$a;-><init>(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method
