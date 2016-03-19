.class final Lcom/google/android/gms/ads/internal/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/f;->a(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/internal/gk;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/gk;

.field final synthetic b:Lcom/google/android/gms/ads/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/f$1;->b:Lcom/google/android/gms/ads/internal/f;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/f$1;->a:Lcom/google/android/gms/internal/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f$1;->b:Lcom/google/android/gms/ads/internal/f;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/f;->h:Lcom/google/android/gms/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/f$1;->b:Lcom/google/android/gms/ads/internal/f;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/f;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f$1;->a:Lcom/google/android/gms/internal/gk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/w;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gk;)Lcom/google/android/gms/internal/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/f$1;->a:Lcom/google/android/gms/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/u;)V

    return-void
.end method
