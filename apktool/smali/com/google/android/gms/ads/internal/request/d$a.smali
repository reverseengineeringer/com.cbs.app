.class public final Lcom/google/android/gms/ads/internal/request/d$a;
.super Lcom/google/android/gms/ads/internal/request/d;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/c$a;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/d;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/c$a;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/d$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 0

    return-void
.end method

.method public final d()Lcom/google/android/gms/ads/internal/request/j;
    .locals 3

    .prologue
    .line 0
    new-instance v1, Lcom/google/android/gms/internal/aq;

    sget-object v0, Lcom/google/android/gms/internal/ax;->b:Lcom/google/android/gms/internal/at;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/aq;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d$a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ft;->a()Lcom/google/android/gms/internal/ft;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/fu;->a(Landroid/content/Context;Lcom/google/android/gms/internal/aq;Lcom/google/android/gms/internal/ft;)Lcom/google/android/gms/internal/fu;

    move-result-object v0

    return-object v0
.end method
