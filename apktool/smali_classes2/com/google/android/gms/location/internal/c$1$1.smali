.class final Lcom/google/android/gms/location/internal/c$1$1;
.super Lcom/google/android/gms/location/internal/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/c$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/internal/c$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/c$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/c$1$1;->a:Lcom/google/android/gms/location/internal/c$1;

    invoke-direct {p0}, Lcom/google/android/gms/location/internal/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/internal/FusedLocationProviderResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/c$1$1;->a:Lcom/google/android/gms/location/internal/c$1;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/FusedLocationProviderResult;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/internal/c$1;->a(Lcom/google/android/gms/common/api/e;)V

    return-void
.end method
