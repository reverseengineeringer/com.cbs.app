.class final Lcom/google/android/gms/internal/eq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/eq;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/eq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/eq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/eq$1;->c:Lcom/google/android/gms/internal/eq;

    iput-object p2, p0, Lcom/google/android/gms/internal/eq$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/eq$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/eq$1;->c:Lcom/google/android/gms/internal/eq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eq;->a()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/eq$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/eq$1$1;-><init>(Lcom/google/android/gms/internal/eq$1;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/eq$1;->c:Lcom/google/android/gms/internal/eq;

    iget-object v1, v1, Lcom/google/android/gms/internal/eq;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/eq$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/eq$1;->b:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    return-void
.end method
