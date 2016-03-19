.class final Lcom/google/android/gms/ads/internal/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/bg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/gk$a;

.field final synthetic b:Lcom/google/android/gms/ads/internal/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/gk$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/m$1;->b:Lcom/google/android/gms/ads/internal/m;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/m$1;->a:Lcom/google/android/gms/internal/gk$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m$1;->b:Lcom/google/android/gms/ads/internal/m;

    new-instance v1, Lcom/google/android/gms/internal/gk;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m$1;->a:Lcom/google/android/gms/internal/gk$a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gk;-><init>(Lcom/google/android/gms/internal/gk$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/m;->b(Lcom/google/android/gms/internal/gk;)V

    return-void
.end method
