.class final Lcom/google/android/gms/ads/internal/c$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/c$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/e;

.field final synthetic b:Lcom/google/android/gms/ads/internal/c$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/c$2;Lcom/google/android/gms/ads/internal/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/c$2$2;->b:Lcom/google/android/gms/ads/internal/c$2;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/c$2$2;->a:Lcom/google/android/gms/ads/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$2$2;->a:Lcom/google/android/gms/ads/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/e;->a()V

    return-void
.end method
