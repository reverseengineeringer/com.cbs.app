.class public final Lcom/google/ads/interactivemedia/v3/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/e;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/aa;

.field private final b:Landroid/view/ViewGroup;

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/aa;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1024
    invoke-virtual {p2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    .line 34
    :goto_0
    if-nez v0, :cond_2

    .line 36
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->d()Lcom/google/ads/interactivemedia/v3/impl/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->d()Lcom/google/ads/interactivemedia/v3/impl/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/c$b;->b:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/c$a;->r:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v3, "Hardware acceleration is required for WebView Ad rendering."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    throw v0

    .line 1026
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_2
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 43
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->b:Landroid/view/ViewGroup;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 48
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b()Landroid/webkit/WebView;

    move-result-object v0

    .line 49
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->b:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/c/c;)V
    .locals 2

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/c/c;->j()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->c:D

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->d:D

    .line 99
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/z$c;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/f$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 90
    :goto_0
    return v0

    .line 82
    :pswitch_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 90
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_1

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/impl/c/l;)Z
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/f$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    .line 69
    :pswitch_0
    iget-wide v0, p2, Lcom/google/ads/interactivemedia/v3/impl/c/l;->q:D

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->c:D

    .line 70
    iget-wide v0, p2, Lcom/google/ads/interactivemedia/v3/impl/c/l;->p:D

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->d:D

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public final getAdProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 56
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->c:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 57
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->a:Lcom/google/ads/interactivemedia/v3/b/a/e;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/a/e;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->d:D

    mul-double/2addr v2, v6

    double-to-long v2, v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->c:D

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/b/a/e;-><init>(JJ)V

    goto :goto_0
.end method

.method public final onAdError(Lcom/google/ads/interactivemedia/v3/b/d;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
