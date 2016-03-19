.class public Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final LOGO_1XSIZE_DATA:[B

.field private static final LOGO_2XSIZE_DATA:[B

.field private static final SHOW_DURATION_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "voLicenseDisplayRender"


# instance fields
.field private mCleanViewHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    const-string v0, "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"

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->LOGO_2XSIZE_DATA:[B

    .line 351
    const-string v0, "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"

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->LOGO_1XSIZE_DATA:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 115
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mImageView:Landroid/widget/ImageView;

    .line 116
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mTextView:Landroid/widget/TextView;

    .line 46
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mCleanViewHandler:Landroid/os/Handler;

    .line 49
    const-string v0, "voLicenseDisplayRender"

    const-string v1, "Created voLicenseDisplayRender"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method private registerCleaner()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mCleanViewHandler:Landroid/os/Handler;

    .line 54
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mCleanViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/visualon/OSMPUtils/voLicenseDisplayRender$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender$1;-><init>(Lcom/visualon/OSMPUtils/voLicenseDisplayRender;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    const-string v0, "voLicenseDisplayRender"

    const-string v1, "Register license display cleaner"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method private static resizeText(Landroid/widget/TextView;II)V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 64
    div-int/lit8 v3, p1, 0x4

    .line 65
    div-int/lit8 v9, p2, 0x2

    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    .line 71
    const/high16 v0, 0x42900000    # 72.0f

    move v8, v0

    :goto_0
    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v0, v8, v0

    if-lez v0, :cond_0

    .line 72
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v10}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 73
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 74
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 77
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    if-le v0, v9, :cond_0

    .line 71
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v0, v8, v0

    move v8, v0

    goto :goto_0

    .line 80
    :cond_0
    const-string v0, "voLicenseDisplayRender"

    const-string v1, "Computed text size = %f for video %d x %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    return-void
.end method

.method private setPaddingForIcon(IIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    sub-int v0, p1, p3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5

    .line 129
    sub-int v1, p2, p4

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x5

    .line 130
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->setPadding(IIII)V

    .line 131
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mCleanViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mCleanViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    :cond_0
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mCleanViewHandler:Landroid/os/Handler;

    .line 122
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->removeAllViews()V

    .line 123
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->setPadding(IIII)V

    .line 124
    const-string v0, "voLicenseDisplayRender"

    const-string v1, "Clear license display"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public drawIcon(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->clean()V

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->setPaddingForIcon(IIII)V

    .line 100
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 103
    const/16 v1, 0xa0

    if-le v0, v1, :cond_0

    .line 104
    sget-object v0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->LOGO_2XSIZE_DATA:[B

    sget-object v1, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->LOGO_2XSIZE_DATA:[B

    array-length v1, v1

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    const-string v1, "voLicenseDisplayRender"

    const-string v2, "/> Ready to Show license logo as 2x size"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mImageView:Landroid/widget/ImageView;

    .line 111
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->addView(Landroid/view/View;)V

    .line 113
    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->LOGO_1XSIZE_DATA:[B

    sget-object v1, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->LOGO_1XSIZE_DATA:[B

    array-length v1, v1

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v1, -0x2

    .line 85
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->clean()V

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 88
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mTextView:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, p2, p3}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->resizeText(Landroid/widget/TextView;II)V

    .line 92
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->addView(Landroid/view/View;)V

    .line 93
    const-string v0, "voLicenseDisplayRender"

    const-string v1, "Show string %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->registerCleaner()V

    .line 95
    return-void
.end method

.method public onScreenOrVideoSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->setPaddingForIcon(IIII)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, p3, p4}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->resizeText(Landroid/widget/TextView;II)V

    goto :goto_0
.end method
