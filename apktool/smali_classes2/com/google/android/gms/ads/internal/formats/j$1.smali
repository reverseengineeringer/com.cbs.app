.class final Lcom/google/android/gms/ads/internal/formats/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/j;->a(Lcom/google/android/gms/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/formats/h;

.field final synthetic b:Lcom/google/android/gms/ads/internal/formats/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/j;Lcom/google/android/gms/ads/internal/formats/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/j$1;->b:Lcom/google/android/gms/ads/internal/formats/j;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/j$1;->a:Lcom/google/android/gms/ads/internal/formats/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/j$1;->a:Lcom/google/android/gms/ads/internal/formats/h;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/h;->c()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/j$1;->b:Lcom/google/android/gms/ads/internal/formats/j;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/j;->a(Lcom/google/android/gms/ads/internal/formats/j;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
