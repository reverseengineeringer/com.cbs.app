.class final Lcom/google/android/gms/internal/hw;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/internal/hs;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/hs;

.field private final b:Lcom/google/android/gms/internal/hr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hs;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    new-instance v0, Lcom/google/android/gms/internal/hr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/internal/hr;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/hs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hw;->b:Lcom/google/android/gms/internal/hr;

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/internal/hs;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hw;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->a(I)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/bg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/bg;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/ads/internal/overlay/c;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/x;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/internal/x;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->a(Z)V

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->b(I)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->b(Lcom/google/android/gms/ads/internal/overlay/c;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/hs;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->b(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->c()V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->c(Z)V

    return-void
.end method

.method public final clearCache(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->clearCache(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->d()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->destroy()V

    return-void
.end method

.method public final e()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->e()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->f()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/ads/internal/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->g()Lcom/google/android/gms/ads/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/internal/overlay/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->h()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/ads/internal/overlay/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->i()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/hu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->l()Z

    move-result v0

    return v0
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/hs;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hs;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final m()Lcom/google/android/gms/internal/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->m()Lcom/google/android/gms/internal/m;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->o()Z

    move-result v0

    return v0
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->p()I

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->q()Z

    move-result v0

    return v0
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->b:Lcom/google/android/gms/internal/hr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hr;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->r()V

    return-void
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->s()Z

    move-result v0

    return v0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->setBackgroundColor(I)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public final stopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->stopLoading()V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/internal/hr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->b:Lcom/google/android/gms/internal/hr;

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/internal/be;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->v()Lcom/google/android/gms/internal/be;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/internal/bf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->w()Lcom/google/android/gms/internal/bf;

    move-result-object v0

    return-object v0
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->x()V

    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->y()V

    return-void
.end method
