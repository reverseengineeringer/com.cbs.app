.class public final Lcom/google/android/gms/location/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/internal/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/b;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/internal/c$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/location/internal/c$4;-><init>(Lcom/google/android/gms/location/internal/c;Lcom/google/android/gms/common/api/b;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/internal/c$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/location/internal/c$2;-><init>(Lcom/google/android/gms/location/internal/c;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/f;Landroid/os/Looper;)Lcom/google/android/gms/common/api/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/location/f;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/internal/c$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/internal/c$1;-><init>(Lcom/google/android/gms/location/internal/c;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/f;Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/f;)Lcom/google/android/gms/common/api/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Lcom/google/android/gms/location/f;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/internal/c$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/location/internal/c$3;-><init>(Lcom/google/android/gms/location/internal/c;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/location/f;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method
