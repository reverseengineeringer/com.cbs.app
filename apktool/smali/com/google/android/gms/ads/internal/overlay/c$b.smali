.class final Lcom/google/android/gms/ads/internal/overlay/c$b;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/gy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/gy;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/gy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c$b;->a:Lcom/google/android/gms/internal/gy;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c$b;->a:Lcom/google/android/gms/internal/gy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gy;->a(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method
