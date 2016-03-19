.class final Lcom/google/android/gms/internal/aj$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aj$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aj$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aj$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aj$2$1;->a:Lcom/google/android/gms/internal/aj$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 0
    check-cast p1, Ljava/lang/String;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/aj$2$1;->a:Lcom/google/android/gms/internal/aj$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/aj$2;->d:Lcom/google/android/gms/internal/aj;

    iget-object v1, p0, Lcom/google/android/gms/internal/aj$2$1;->a:Lcom/google/android/gms/internal/aj$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/aj$2;->b:Lcom/google/android/gms/internal/ag;

    iget-object v2, p0, Lcom/google/android/gms/internal/aj$2$1;->a:Lcom/google/android/gms/internal/aj$2;

    iget-object v2, v2, Lcom/google/android/gms/internal/aj$2;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/internal/ag;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 0
    return-void
.end method
