.class final Lcom/google/android/gms/internal/fu$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/aq;Lcom/google/android/gms/internal/ft;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$3;->a:Lcom/google/android/gms/internal/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/fu$3;->a:Lcom/google/android/gms/internal/fw;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/hs;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->destroy()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/hs;

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fu$3;->a:Lcom/google/android/gms/internal/fw;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/fw;->b:Lcom/google/android/gms/internal/cx$d;

    .line 0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$3;->a:Lcom/google/android/gms/internal/fw;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/fw;->b:Lcom/google/android/gms/internal/cx$d;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$d;->a()V

    :cond_1
    return-void
.end method
