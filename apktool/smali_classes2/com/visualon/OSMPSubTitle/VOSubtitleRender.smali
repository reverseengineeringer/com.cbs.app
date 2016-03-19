.class public Lcom/visualon/OSMPSubTitle/VOSubtitleRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;,
        Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;,
        Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;
    }
.end annotation


# static fields
.field private static final SCALE_FOR_FONT_C_SIZE:I = 0x4e20

.field private static final SCALE_FOR_FONT_EM_SIZE:I = 0x7530

.field private static final SCALE_FOR_FONT_PIXEL_SIZE:I = 0x2710

.field private static final SCALE_FOR_FONT_SIZE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "VOSubtitleRender"


# instance fields
.field private fontSizeDefault:F

.field private height:I

.field private heightOld:I

.field private llWindow1:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mIsPreview:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mShow:Z

.field private mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

.field private mSubtitleInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitleJsonParser:Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

.field private m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

.field private metadata_Arrive:Z

.field private rlMain:Landroid/view/ViewGroup;

.field private textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

.field private vwSurface:Landroid/view/View;

.field private width:I

.field private widthOld:I

.field private xyRate:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    .line 54
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    .line 56
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    .line 57
    iput v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    .line 58
    iput v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    .line 59
    const v0, 0x3faa3d71    # 1.33f

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mShow:Z

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    .line 62
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    .line 65
    iput v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->heightOld:I

    .line 66
    iput v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->widthOld:I

    .line 67
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    .line 68
    iput-boolean v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    iput-boolean v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    .line 87
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    .line 297
    new-instance v0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleJsonParser:Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

    .line 94
    const-string v0, "VOSubtitleRender"

    const-string v1, " voSubTitleManager Construct"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    if-nez v0, :cond_0

    .line 96
    new-instance v1, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;-><init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    .line 98
    :cond_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method private static StretchToMax(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 756
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 757
    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 758
    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 759
    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 760
    iget v2, p1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 761
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 767
    :goto_0
    return-object v0

    .line 763
    :cond_0
    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 764
    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->clearSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createImageView(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mShow:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F

    return v0
.end method

.method static synthetic access$1302(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;F)F
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F

    return p1
.end method

.method static synthetic access$1400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->reverseString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(I)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fromID(I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->getFontSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    return v0
.end method

.method static synthetic access$702(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    return p1
.end method

.method static synthetic access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    return v0
.end method

.method static synthetic access$802(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    return p1
.end method

.method static synthetic access$900(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->StretchToMax(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private checkxyRate()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 385
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 389
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    const-string v1, "VOSubtitleRender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " textViewOfRows.getWidth()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",textViewOfRows.getHeight()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 399
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 400
    iget v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->widthOld:I

    if-ne v3, v1, :cond_2

    iget v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->heightOld:I

    if-eq v3, v2, :cond_3

    .line 401
    :cond_2
    const-string v3, "VOSubtitleRender"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " width_new="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",width_old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";height_new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height_old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    .line 404
    iput v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    .line 405
    iput v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->heightOld:I

    .line 406
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->widthOld:I

    .line 407
    const/4 v0, 0x1

    .line 411
    :cond_3
    return v0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private clearSubtitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 215
    :try_start_0
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 231
    :goto_0
    return-void

    .line 217
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 220
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 224
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    .line 226
    const-string v0, "VOSubtitleRender"

    const-string v1, " rlMain.removeView(llWindow1)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_2
    const-string v0, "VOSubtitleRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " clean : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private createAndShowChildViews()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    if-nez v0, :cond_2

    .line 558
    :cond_0
    const-string v0, "VOSubtitleRender"

    const-string v1, "mContext ==null or mSubtitleInfo == null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    :cond_1
    :goto_0
    return-void

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 565
    const-string v0, "VOSubtitleRender"

    const-string v1, "+++ createAndShowChildViews +++"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    .line 572
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    .line 573
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 574
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    new-instance v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;-><init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    .line 577
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 578
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    const-string v0, "VOSubtitleRender"

    const-string v1, " createAndShowChildViews llWindow1.addView(textViewOfRows,rlp)"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    .line 602
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_5
    move v3, v2

    .line 586
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 587
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    .line 588
    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    .line 589
    iget-object v0, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    move v1, v2

    .line 590
    :goto_2
    iget-object v0, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 591
    iget-object v0, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;

    .line 592
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->startAnimation(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/widget/RelativeLayout;)V

    .line 590
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 586
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 598
    :cond_7
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createImageView(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 605
    const-string v0, "VOSubtitleRender"

    const-string v1, "--- createAndShowChildViews ---"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 602
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private createImageView(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V
    .locals 21

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    .line 417
    if-eqz p1, :cond_14

    .line 419
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-object/from16 v9, p1

    .line 423
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 424
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createAndShowChildViews()V

    .line 427
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    if-nez v2, :cond_3

    .line 428
    :cond_1
    if-eqz p1, :cond_2

    .line 429
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    .line 554
    :cond_2
    return-void

    .line 434
    :cond_3
    const/4 v2, 0x0

    move v12, v2

    :goto_1
    iget-object v2, v9, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 435
    iget-object v2, v9, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    .line 436
    iget-object v0, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    move-object/from16 v17, v0

    .line 437
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    .line 438
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 439
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->removeImageViews()V

    .line 440
    :cond_4
    const/4 v3, 0x0

    .line 441
    const/4 v2, 0x0

    move v10, v2

    :goto_2
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_12

    .line 442
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;

    .line 443
    iget-object v4, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    if-eqz v4, :cond_c

    .line 445
    iget-object v4, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v4}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getPicData()[B

    move-result-object v4

    if-eqz v4, :cond_c

    .line 448
    new-instance v18, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;-><init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setTag(Ljava/lang/Object;)V

    .line 450
    const/4 v11, 0x1

    .line 452
    const/4 v6, -0x1

    .line 453
    const/4 v5, -0x1

    .line 454
    const/4 v4, -0x1

    .line 455
    const/4 v3, -0x1

    .line 456
    iget-object v7, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    if-eqz v7, :cond_5

    .line 457
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I

    move-result v6

    .line 458
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I

    move-result v5

    .line 459
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I

    move-result v4

    .line 460
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I

    move-result v3

    .line 461
    const-string v7, "VOSubtitleRender"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, " Rect left is "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ", top is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v13, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ", right is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v13, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ", bottom is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v13, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ". \nReal rect left is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ", top is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ", right is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ", bottom is"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v7, v8, v13}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    .line 469
    if-gtz v16, :cond_6

    if-lez v15, :cond_d

    .line 470
    :cond_6
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int v4, v15, v16

    sub-int v5, v13, v14

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 471
    move/from16 v0, v16

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 472
    iput v14, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setVerticalGravity(I)V

    .line 475
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setHorizontalGravity(I)V

    .line 483
    :goto_3
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    if-eqz v3, :cond_7

    .line 484
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setBackgroundColor(I)V

    .line 485
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeType:I

    if-lez v3, :cond_7

    .line 486
    const/4 v3, 0x2

    iget-object v4, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeColor:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setBorder(II)V

    .line 490
    :cond_7
    const/4 v3, 0x0

    .line 492
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    if-eqz v4, :cond_10

    .line 493
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 494
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 496
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v19

    .line 497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v20

    .line 498
    iget-object v5, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    const/4 v6, 0x0

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    array-length v2, v2

    invoke-static {v5, v6, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 500
    if-eqz v2, :cond_f

    .line 501
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v3, v3, v19

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v4, v4, v20

    if-le v3, v4, :cond_e

    .line 502
    move/from16 v0, v20

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 508
    :goto_4
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 509
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 511
    const-string v4, "VOSubtitleRender"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " subtitle decodeByteArray "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    if-eqz v4, :cond_8

    .line 513
    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setXYRate(F)V

    .line 515
    :cond_8
    const-string v4, "VOSubtitleRender"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " subtitle decodeByteArray "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    const-string v4, "VOSubtitleRender"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " subtitle decodeByteArray "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 529
    :cond_9
    :goto_5
    if-eqz v2, :cond_b

    .line 530
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 534
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->addView(Landroid/view/View;)V

    .line 535
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    if-eqz v2, :cond_11

    const/high16 v2, -0x1000000

    :goto_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setBackgroundColor(I)V

    .line 536
    const/16 v2, 0x11

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setGravity(I)V

    .line 538
    if-gtz v16, :cond_a

    if-lez v15, :cond_b

    .line 539
    :cond_a
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 540
    sub-int v4, v15, v16

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 541
    sub-int v4, v13, v14

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 542
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    move v3, v11

    .line 441
    :cond_c
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_2

    .line 477
    :cond_d
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 478
    const/16 v4, 0x10

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setVerticalGravity(I)V

    .line 479
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setHorizontalGravity(I)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 505
    :cond_e
    move/from16 v0, v19

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto/16 :goto_4

    .line 518
    :cond_f
    const-string v2, "VOSubtitleRender"

    const-string v4, " subtitle decodeByteArray return null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 521
    goto :goto_5

    .line 522
    :cond_10
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    const/4 v4, 0x0

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    array-length v2, v2

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 523
    if-nez v2, :cond_9

    .line 524
    const-string v3, "VOSubtitleRender"

    const-string v4, " subtitle decodeByteArray return null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 535
    :cond_11
    const/4 v2, 0x0

    goto :goto_6

    .line 547
    :cond_12
    if-eqz v3, :cond_13

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz v2, :cond_13

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->bringToFront()V

    .line 434
    :cond_13
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_1

    :cond_14
    move-object v9, v2

    goto/16 :goto_0
.end method

.method private static fromID(I)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    packed-switch p0, :pswitch_data_0

    .line 141
    const-string v0, "VOSubtitleRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Font Style is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ui set to default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v0, "courier"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_2
    const-string v0, "times new roman"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_3
    const-string v0, "helvetica"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_4
    const-string v0, "arial"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 122
    :pswitch_5
    const-string v0, "casual"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_6
    const-string v0, "cursive"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 128
    :pswitch_7
    const-string v0, "sans-serif-smallcaps"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 135
    :pswitch_9
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 139
    :pswitch_a
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getFontSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F
    .locals 8

    .prologue
    const/16 v7, 0x2710

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const v0, 0x3f666666    # 0.9f

    .line 670
    const/high16 v1, 0x3f400000    # 0.75f

    .line 672
    iget-object v2, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 673
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 675
    :cond_1
    iget-object v2, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    float-to-int v2, v2

    .line 677
    const/16 v3, 0x3e8

    if-le v2, v3, :cond_2

    if-ge v2, v7, :cond_2

    .line 678
    add-int/lit16 v1, v2, -0x3e8

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, v4

    .line 680
    :cond_2
    if-le v2, v7, :cond_7

    .line 681
    iget v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    .line 682
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz v1, :cond_4

    .line 683
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    .line 688
    :goto_1
    iget v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_3

    .line 689
    iput v6, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    .line 691
    :cond_3
    const/16 v1, 0x7530

    if-le v2, v1, :cond_5

    .line 692
    add-int/lit16 v1, v2, -0x7530

    .line 693
    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 694
    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 696
    if-lez p2, :cond_0

    .line 697
    int-to-float v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0

    .line 685
    :cond_4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 686
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    goto :goto_1

    .line 699
    :cond_5
    const/16 v1, 0x4e20

    if-le v2, v1, :cond_6

    .line 700
    add-int/lit16 v1, v2, -0x4e20

    .line 701
    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 703
    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    div-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 704
    if-lez p2, :cond_0

    .line 705
    int-to-float v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0

    .line 709
    :cond_6
    add-int/lit16 v1, v2, -0x2710

    .line 711
    if-lez p2, :cond_0

    .line 712
    int-to-float v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private invalidateView()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->invalidate()V

    .line 357
    :cond_0
    return-void
.end method

.method private removeImageViews()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 619
    :cond_0
    return-void

    .line 611
    :cond_1
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    .line 614
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_0

    .line 617
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private reverseString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static scaleRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/16 v6, 0x64

    .line 771
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 772
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 773
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 774
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 775
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 777
    int-to-float v5, v1

    mul-float/2addr v5, p1

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    if-lez v1, :cond_0

    .line 778
    int-to-float v5, v1

    div-float p1, v7, v5

    .line 780
    :cond_0
    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 781
    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 782
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 783
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 784
    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-le v3, v6, :cond_1

    .line 785
    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 786
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 788
    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_2

    .line 789
    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 790
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 792
    :cond_2
    div-int/lit8 v1, v2, 0x2

    sub-int v1, v4, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 793
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 794
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v6, :cond_3

    .line 795
    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 796
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 798
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_4

    .line 799
    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 800
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 802
    :cond_4
    return-object v0
.end method

.method private setSubtitleObjectNull()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    .line 102
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    .line 103
    return-void
.end method

.method private startAnimation(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/widget/RelativeLayout;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 623
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectType:I

    if-lez v0, :cond_3

    .line 624
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectType:I

    if-ne v0, v4, :cond_0

    .line 626
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 627
    iget-object v2, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectSpeed:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 628
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 630
    :cond_0
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectType:I

    if-ne v0, v5, :cond_3

    .line 636
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    if-nez v0, :cond_5

    .line 638
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 640
    :goto_0
    iget-object v2, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    if-ne v2, v4, :cond_1

    .line 642
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    int-to-float v0, v0

    .line 644
    :cond_1
    iget-object v2, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    if-ne v2, v5, :cond_4

    .line 646
    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    neg-int v2, v2

    int-to-float v2, v2

    .line 648
    :goto_1
    iget-object v3, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 650
    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    int-to-float v2, v2

    .line 652
    :cond_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v0, v1, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 653
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectSpeed:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 654
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 659
    :cond_3
    return-void

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private toRealX(I)I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private toRealY(I)I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method


# virtual methods
.method public checkLayoutChanged()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 368
    const/4 v1, 0x0

    .line 369
    if-eqz v0, :cond_3

    .line 370
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 371
    check-cast v0, Landroid/view/ViewGroup;

    .line 372
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_2

    .line 373
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setMainLayout(Landroid/view/ViewGroup;)V

    .line 377
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->checkxyRate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "VOSubtitleRender"

    const-string v1, " checkxyRate "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setXYRate(F)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public handleRawData(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 318
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 321
    if-nez p1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 324
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    .line 326
    if-nez p1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 328
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v1, v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 332
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 333
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 336
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 337
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v0, v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v1

    .line 339
    goto :goto_1

    .line 343
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public previewSubtitle(Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;)V
    .locals 9

    .prologue
    const/16 v8, 0x62

    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 152
    const-string v0, "VOSubtitleRender"

    const-string v1, " begin previewSubtitle"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iput-boolean v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    .line 154
    const-string v0, "previewSubtitle"

    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->clearSubtitle(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setSurfaceView(Landroid/view/View;)V

    .line 156
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->getSampleText()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    invoke-direct {v1}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;-><init>()V

    .line 158
    iput v7, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    .line 159
    iput v5, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->timeStamp:I

    .line 160
    new-instance v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    invoke-direct {v2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;-><init>()V

    .line 161
    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    move-result-object v3

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 162
    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    move-result-object v3

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 163
    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    move-result-object v3

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iput v8, v3, Landroid/graphics/Rect;->right:I

    .line 164
    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    move-result-object v3

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 165
    iget-object v3, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;

    invoke-direct {v3}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;-><init>()V

    .line 167
    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iput v5, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->horizontalAlignment:I

    .line 169
    iget-object v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    const/16 v4, 0xa

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 170
    iget-object v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    const/16 v4, 0x5a

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 171
    iget-object v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    const/16 v4, 0x1e

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 172
    iget-object v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    const/16 v4, 0x3c

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 173
    iget-object v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    const/high16 v4, -0x1000000

    iput v4, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 175
    new-instance v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    invoke-direct {v2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;-><init>()V

    .line 176
    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iput v7, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontColor:I

    .line 178
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    const/4 v4, 0x0

    iput v4, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    .line 179
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iput v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    .line 180
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iput v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->edgeType:I

    .line 181
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iput-boolean v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isItalic:Z

    .line 182
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iput-boolean v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isBold:Z

    .line 183
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iput-boolean v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->hasUnderline:Z

    .line 184
    iput-object v0, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    .line 189
    iput-boolean v6, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    .line 190
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setXYRate(F)V

    .line 191
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createAndShowChildViews()V

    .line 193
    iput-boolean v6, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mShow:Z

    .line 194
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v0, v6}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw(Z)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    .line 206
    const-string v0, "VOSubtitleRender"

    const-string v1, " previewSubtitle"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    return-void

    .line 201
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createAndShowChildViews()V

    goto :goto_0
.end method

.method public render(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    const-string v0, "VOSubtitleRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "var inputObject = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleJsonParser:Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->parseObj2SubtitleInfo(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->handleRawData(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)Z

    .line 306
    :cond_0
    return v3
.end method

.method public setActivity(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 281
    const-string v0, "VOSubtitleRender"

    const-string v1, " setActivity "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;

    .line 283
    return-void
.end method

.method public setMainLayout(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 241
    const-string v0, "VOSubtitleRender"

    const-string v1, " setMainLayout ,shoud call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const-string v0, "setMainLayout"

    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->clearSubtitle(Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    .line 244
    return-void
.end method

.method public setSurfaceView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    const-string v0, "VOSubtitleRender"

    const-string v1, " enter setSurfaceView "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    .line 256
    const-string v0, "setSurfaceView"

    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->clearSubtitle(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_2

    .line 260
    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 262
    if-eqz v0, :cond_2

    .line 263
    const-string v1, "VOSubtitleRender"

    const-string v2, " enter setSurfaceView setMainLayout "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setMainLayout(Landroid/view/ViewGroup;)V

    .line 270
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 267
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setMainLayout(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method public setXYRate(F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    const-string v0, "VOSubtitleRender"

    const-string v1, " setXYRate+ "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    .line 294
    const-string v0, "VOSubtitleRender"

    const-string v1, " setXYRate- "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    return-void
.end method
