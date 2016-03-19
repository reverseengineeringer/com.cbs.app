.class public final Lcom/google/android/gms/ads/internal/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cv;

.field public final b:Lcom/google/android/gms/ads/internal/overlay/h;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/cv;Lcom/google/android/gms/ads/internal/overlay/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/d;->a:Lcom/google/android/gms/internal/cv;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/d;->b:Lcom/google/android/gms/ads/internal/overlay/h;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/d;
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/internal/d;

    new-instance v1, Lcom/google/android/gms/internal/cf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/cf;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/i;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/i;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/d;-><init>(Lcom/google/android/gms/internal/cv;Lcom/google/android/gms/ads/internal/overlay/h;)V

    return-object v0
.end method
