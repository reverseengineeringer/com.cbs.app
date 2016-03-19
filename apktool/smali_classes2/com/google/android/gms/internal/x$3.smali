.class final Lcom/google/android/gms/internal/x$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/view/View;Lcom/google/android/gms/internal/cx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hl$c",
        "<",
        "Lcom/google/android/gms/internal/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/x$3;->a:Lcom/google/android/gms/internal/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/ad;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/x$3;->a:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/x$3;->a:Lcom/google/android/gms/internal/x;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/ad;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/x$3;->a:Lcom/google/android/gms/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/x;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/x$3;->a:Lcom/google/android/gms/internal/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/x;->b(Z)V

    .line 0
    return-void
.end method
