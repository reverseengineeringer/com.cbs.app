.class public final Lcom/google/android/gms/ads/internal/overlay/c;
.super Lcom/google/android/gms/internal/ek$a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/k;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/overlay/c$d;,
        Lcom/google/android/gms/ads/internal/overlay/c$b;,
        Lcom/google/android/gms/ads/internal/overlay/c$c;,
        Lcom/google/android/gms/ads/internal/overlay/c$a;
    }
.end annotation


# static fields
.field static final a:I


# instance fields
.field b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field c:Lcom/google/android/gms/internal/hs;

.field d:Lcom/google/android/gms/ads/internal/overlay/c$c;

.field e:Lcom/google/android/gms/ads/internal/overlay/zzm;

.field f:Z

.field g:Landroid/widget/FrameLayout;

.field h:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field i:Z

.field j:Z

.field k:Landroid/widget/RelativeLayout;

.field l:Z

.field m:I

.field private final n:Landroid/app/Activity;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/c;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ek$a;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->q:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/overlay/c;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Z)V
    .locals 4

    const/4 v3, -0x2

    if-eqz p1, :cond_0

    const/16 v0, 0x32

    :goto_0
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;-><init>(Landroid/content/Context;ILcom/google/android/gms/ads/internal/overlay/k;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->e:Lcom/google/android/gms/ads/internal/overlay/zzm;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->e:Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->h:Z

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzm;->a(ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->e:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_1
.end method

.method private b(Z)V
    .locals 14

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c$a;

    const-string v1, "Invalid activity, no window available."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->c:Z

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x400

    const/16 v2, 0x400

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hu;->b()Z

    move-result v3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gx;->a()I

    move-result v2

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Delay onShow to next orientation change: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6000
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gx;->a(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7000
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 8000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->o:Z

    .line 0
    if-eqz p1, :cond_11

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->f()Lcom/google/android/gms/internal/hv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/hv;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Lcom/google/android/gms/internal/ce;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:Lcom/google/android/gms/ads/internal/overlay/j;

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/internal/ck;

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hu;->a()Lcom/google/android/gms/ads/internal/e;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/ads/internal/overlay/j;ZLcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/ei;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/c$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/c$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/internal/hu$a;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hs;->loadUrl(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/hs;->b(Lcom/google/android/gms/ads/internal/overlay/c;)V

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/ads/internal/overlay/c;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    sget v1, Lcom/google/android/gms/ads/internal/overlay/c;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hs;->setBackgroundColor(I)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->b()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_9

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->p()V

    :cond_9
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->l()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a(ZZ)V

    :cond_a
    return-void

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gx;->b()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/gms/ads/internal/overlay/c;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->i:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->i:Ljava/lang/String;

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/internal/hs;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c$a;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/internal/hs;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;)V

    goto/16 :goto_4
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->p:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    .line 9000
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/hs;->a(I)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:Lcom/google/android/gms/ads/internal/overlay/c$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:Lcom/google/android/gms/ads/internal/overlay/c$c;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/c$c;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hs;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:Lcom/google/android/gms/ads/internal/overlay/c$c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/c$c;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->b()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:Lcom/google/android/gms/ads/internal/overlay/c$c;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/c$c;->a:I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:Lcom/google/android/gms/ads/internal/overlay/c$c;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/c$c;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:Lcom/google/android/gms/ads/internal/overlay/c$c;

    :cond_2
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/ads/internal/overlay/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/f;->e_()V

    goto :goto_0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 0
    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c$a;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/c$a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c$a;->getMessage()Ljava/lang/String;

    .line 3000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iput v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->d:I

    const v1, 0x7270e0

    if-le v0, v1, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shouldCallOnOverlayOpened"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->q:Z

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Z

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ax;->ap:Lcom/google/android/gms/internal/at;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/overlay/c$d;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;B)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c$d;->e()Ljava/util/concurrent/Future;

    :cond_5
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/ads/internal/overlay/f;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->q:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/f;->f_()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:I

    if-eq v0, v4, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/a;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/a;->e()V

    :cond_7
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c$b;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/c$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c$a;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Z

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->b(Z)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c$c;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/internal/hs;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c$c;-><init>(Lcom/google/android/gms/internal/hs;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:Lcom/google/android/gms/ads/internal/overlay/c$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->b(Z)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->b(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->b()Lcom/google/android/gms/ads/internal/overlay/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/a;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/overlay/j;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lcom/google/android/gms/ads/internal/overlay/c$a; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 5000
    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->o:Z

    .line 0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Z

    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->e:Lcom/google/android/gms/ads/internal/overlay/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->e:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzm;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->o:Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Z

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    return-void
.end method

.method public final e()Z
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    const-string v2, "onbackblocked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->q()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->b(Landroid/webkit/WebView;)Z

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Z

    goto :goto_0

    .line 4000
    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1
.end method

.method public final i()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->b()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:Lcom/google/android/gms/ads/internal/overlay/c$c;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->a(Landroid/webkit/WebView;)Z

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->o()V

    return-void
.end method

.method public final j()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->o()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->o()V

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->o:Z

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->e:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Z)V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->p()V

    :cond_0
    return-void
.end method
