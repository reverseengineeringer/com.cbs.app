.class final Lcom/google/android/gms/internal/fu$2;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic c:Lcom/google/android/gms/internal/fw;

.field final synthetic d:Lcom/google/android/gms/internal/bg;

.field final synthetic e:Lcom/google/android/gms/internal/be;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/google/android/gms/internal/aq;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/fw;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;Ljava/lang/String;Lcom/google/android/gms/internal/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$2;->b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/fu$2;->c:Lcom/google/android/gms/internal/fw;

    iput-object p4, p0, Lcom/google/android/gms/internal/fu$2;->d:Lcom/google/android/gms/internal/bg;

    iput-object p5, p0, Lcom/google/android/gms/internal/fu$2;->e:Lcom/google/android/gms/internal/be;

    iput-object p6, p0, Lcom/google/android/gms/internal/fu$2;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/fu$2;->g:Lcom/google/android/gms/internal/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->f()Lcom/google/android/gms/internal/hv;

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$2;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/fu$2;->b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/hv;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gm;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/hs;->clearCache(Z)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fu$2;->c:Lcom/google/android/gms/internal/fw;

    .line 1000
    iput-object v0, v1, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/hs;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/fu$2;->d:Lcom/google/android/gms/internal/bg;

    iget-object v3, p0, Lcom/google/android/gms/internal/fu$2;->e:Lcom/google/android/gms/internal/be;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "rwc"

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fu$2;->d:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bg;->a()Lcom/google/android/gms/internal/be;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fu$2;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fu$2;->d:Lcom/google/android/gms/internal/bg;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/fu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/hu$a;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    const-string v3, "/invalidRequest"

    iget-object v4, p0, Lcom/google/android/gms/internal/fu$2;->c:Lcom/google/android/gms/internal/fw;

    iget-object v4, v4, Lcom/google/android/gms/internal/fw;->c:Lcom/google/android/gms/internal/ci;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v3, "/loadAdURL"

    iget-object v4, p0, Lcom/google/android/gms/internal/fu$2;->c:Lcom/google/android/gms/internal/fw;

    iget-object v4, v4, Lcom/google/android/gms/internal/fw;->d:Lcom/google/android/gms/internal/ci;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v3, "/log"

    sget-object v4, Lcom/google/android/gms/internal/ch;->h:Lcom/google/android/gms/internal/ci;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/internal/hu$a;)V

    .line 2000
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/fu$2;->g:Lcom/google/android/gms/internal/aq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hs;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
