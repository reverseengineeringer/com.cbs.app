.class final Lcom/google/android/gms/ads/internal/k$a;
.super Lcom/google/android/gms/internal/gr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/k;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k$a;->a:Lcom/google/android/gms/ads/internal/k;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gr;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/k$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k$a;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gw;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
