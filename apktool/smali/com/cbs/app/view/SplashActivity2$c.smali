.class final Lcom/cbs/app/view/SplashActivity2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SplashActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SplashActivity2;


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/SplashActivity2;)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$c;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/SplashActivity2;B)V
    .locals 0

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Lcom/cbs/app/view/SplashActivity2$c;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 1099
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$c;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1101
    :try_start_0
    iget-object v3, p0, Lcom/cbs/app/view/SplashActivity2$c;->a:Lcom/cbs/app/view/SplashActivity2;

    .line 1581
    const v0, 0x7f020227

    .line 1582
    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1583
    :cond_0
    const v0, 0x7f0201e3

    .line 1589
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1590
    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1591
    invoke-virtual {v3}, Lcom/cbs/app/view/SplashActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1593
    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v0

    .line 1594
    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->c(Landroid/content/Context;)I

    move-result v1

    .line 1597
    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1598
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    .line 1601
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1602
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1605
    int-to-double v6, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    .line 1606
    if-le v0, v5, :cond_2

    .line 1607
    int-to-double v0, v2

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1608
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v6, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v8, v1

    div-double/2addr v6, v8

    .line 1609
    int-to-double v8, v0

    mul-double/2addr v6, v8

    .line 1610
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    .line 1612
    :cond_2
    invoke-static {v4, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1613
    new-instance v4, Lcom/cbs/app/view/SplashActivity2$d;

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/cbs/app/view/SplashActivity2$d;-><init>(Lcom/cbs/app/view/SplashActivity2;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :cond_3
    :goto_1
    return-void

    .line 1103
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$c;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->o(Lcom/cbs/app/view/SplashActivity2;)Z

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_0
.end method
