.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;,
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
    }
.end annotation


# static fields
.field private static final KEY_DISPLAY_EFFECTTYPE:I = 0x8

.field private static final KEY_DISPLAY_INFO:I = 0x66

.field private static final KEY_DURATION:I = 0x2

.field private static final KEY_FONT_EFFECT:I = 0x6c

.field private static final KEY_FONT_INFO:I = 0x6b

.field private static final KEY_FONT_INFO_SIZE:I = 0xd

.field private static final KEY_IMAGE_DISPLAY_DESCRIPTOR:I = 0x6f

.field private static final KEY_IMAGE_INFO:I = 0x69

.field private static final KEY_IMAGE_TYPE:I = 0x1f

.field private static final KEY_RECT_INFO:I = 0x65

.field private static final KEY_START_TIME:I = 0x1

.field private static final KEY_STRING_INFO:I = 0x6a

.field private static final KEY_STRUCT_RECT:I = 0x3

.field private static final KEY_SUBTITLE_INFO:I = 0x64

.field private static final KEY_TEXT_DISPLAY_DESCRIPTOR:I = 0x6e

.field private static final KEY_TEXT_ROW_DESCRIPTOR:I = 0x6d

.field private static final KEY_TEXT_ROW_DESCRIPTOR_HORI:I = 0x16

.field private static final KEY_TEXT_ROW_INFO:I = 0x67

.field private static final KEY_TEXT_SIZE:I = 0xb

.field private static final SCALE_FOR_FONT_C_SIZE:I = 0x4e20

.field private static final SCALE_FOR_FONT_EM_SIZE:I = 0x7530

.field private static final SCALE_FOR_FONT_PIXEL_SIZE:I = 0x2710

.field private static final SCALE_FOR_FONT_SIZE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "@@@ClosedCaptionManager.java"

.field private static final mEnable15Seconds:Z


# instance fields
.field private final WM_CLEAR_WIDGET:I

.field private final WM_INVALIDATEVIEW:I

.field private fontSizeDefault:F

.field private height:I

.field private heightOld:I

.field private llWindow1:Landroid/widget/RelativeLayout;

.field private mIsPreview:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mParcel:Landroid/os/Parcel;

.field private mShow:Z

.field private mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

.field private mSubtitleInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitleText:Ljava/lang/String;

.field private final m_handlerEvent:Landroid/os/Handler;

.field private mainActivity:Landroid/content/Context;

.field private metadata_Arrive:Z

.field private rlMain:Landroid/view/ViewGroup;

.field protected settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

.field private textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

.field private timestampCurrent:I

.field private vwSurface:Landroid/view/View;

.field private width:I

.field private widthOld:I

.field private xyRate:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mParcel:Landroid/os/Parcel;

    .line 111
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    .line 113
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;

    .line 114
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;

    .line 115
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    .line 116
    iput v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I

    .line 117
    iput v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I

    .line 118
    const v0, 0x3faa3d71    # 1.33f

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->xyRate:F

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mShow:Z

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->fontSizeDefault:F

    .line 121
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    .line 122
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    .line 126
    iput v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->heightOld:I

    .line 127
    iput v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->widthOld:I

    .line 128
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    .line 129
    iput-boolean v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z

    .line 130
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 133
    iput-boolean v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->metadata_Arrive:Z

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleText:Ljava/lang/String;

    .line 136
    iput v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->timestampCurrent:I

    .line 139
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->WM_CLEAR_WIDGET:I

    .line 140
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->WM_INVALIDATEVIEW:I

    .line 141
    new-instance v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->m_handlerEvent:Landroid/os/Handler;

    .line 193
    return-void

    .line 141
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method private static StretchToMax(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2300
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 2301
    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2302
    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2303
    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 2304
    iget v2, p1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 2305
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2311
    :goto_0
    return-object v0

    .line 2307
    :cond_0
    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 2308
    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z

    return v0
.end method

.method static synthetic access$10000(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;I)F
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->getFontSize(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;I)F

    move-result v0

    return v0
.end method

.method static synthetic access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$10400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->metadata_Arrive:Z

    return v0
.end method

.method static synthetic access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I

    return v0
.end method

.method static synthetic access$10502(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I

    return p1
.end method

.method static synthetic access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I

    return v0
.end method

.method static synthetic access$10602(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I

    return p1
.end method

.method static synthetic access$10800(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->scaleRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10900(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->StretchToMax(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mShow:Z

    return v0
.end method

.method static synthetic access$11400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->xyRate:F

    return v0
.end method

.method static synthetic access$11502(Lcom/visualon/OSMPSubTitle/voSubTitleManager;F)F
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->xyRate:F

    return p1
.end method

.method static synthetic access$11600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->reverseString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$502(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V

    return-void
.end method

.method static synthetic access$700(Lcom/visualon/OSMPSubTitle/voSubTitleManager;ZLcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->createImageView(ZLcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)V

    return-void
.end method

.method static synthetic access$9500(I)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 82
    invoke-static {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->fromID(I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I

    move-result v0

    return v0
.end method

.method private checkxyRate()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 775
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 776
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 779
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    const-string v2, "@@@ClosedCaptionManager.java"

    const-string v3, "CloseCaption textViewOfRows.getWidth()=%d,textViewOfRows.getHeight()=%d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    invoke-virtual {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    invoke-virtual {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    :cond_1
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 789
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 790
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 791
    iget v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->widthOld:I

    if-ne v4, v2, :cond_2

    iget v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->heightOld:I

    if-eq v4, v3, :cond_3

    .line 792
    :cond_2
    const-string v4, "@@@ClosedCaptionManager.java"

    const-string v5, "CloseCaption width_new=%d,width_old=%d;height_new=%d,height_old=%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    const/4 v1, 0x3

    iget v7, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    iput v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I

    .line 794
    iput v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I

    .line 795
    iput v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->heightOld:I

    .line 796
    iput v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->widthOld:I

    .line 801
    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private createAndShowChildViews()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 961
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    if-nez v0, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 964
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption enter createAndShowChildViews "

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 968
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 969
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    .line 970
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 971
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    .line 974
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 975
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption createAndShowChildViews llWindow1.addView(textViewOfRows,rlp)"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_4

    .line 1001
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_4
    move v3, v2

    .line 984
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 985
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    .line 986
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v4

    .line 987
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    move v1, v2

    .line 988
    :goto_2
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 989
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;

    .line 990
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->startAnimation(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;Landroid/widget/RelativeLayout;)V

    .line 988
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 984
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 997
    :cond_6
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V

    .line 999
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->createImageView(ZLcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1001
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private createImageView(ZLcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)V
    .locals 22

    .prologue
    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-object/from16 v17, v0

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 818
    if-eqz p2, :cond_15

    .line 820
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-object/from16 v9, p2

    .line 823
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 824
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->createAndShowChildViews()V

    .line 825
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->metadata_Arrive:Z

    if-nez v2, :cond_3

    .line 826
    :cond_1
    if-eqz p2, :cond_2

    .line 827
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 958
    :cond_2
    :goto_1
    return-void

    .line 835
    :cond_3
    const/4 v2, 0x0

    move v10, v2

    :goto_2
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_14

    .line 836
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    .line 837
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v18

    .line 838
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$3300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 839
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$3300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 840
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->removeImageViews()V

    .line 841
    :cond_4
    const/4 v3, 0x0

    .line 842
    const/4 v2, 0x0

    move v11, v2

    :goto_3
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$3300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_12

    .line 843
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$3300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;

    .line 844
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 846
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    move-result-object v4

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getPicData()[B
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$3500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v4

    if-eqz v4, :cond_c

    .line 851
    new-instance v19, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Landroid/content/Context;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->setTag(Ljava/lang/Object;)V

    .line 853
    const/4 v12, 0x1

    .line 855
    const/4 v6, -0x1

    .line 856
    const/4 v5, -0x1

    .line 857
    const/4 v4, -0x1

    .line 858
    const/4 v3, -0x1

    .line 859
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 860
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I

    move-result v6

    .line 861
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I

    move-result v5

    .line 862
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I

    move-result v4

    .line 863
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I

    move-result v3

    .line 864
    const-string v7, "@@@ClosedCaptionManager.java"

    const-string v8, "CloseCaption Rect left is %d, top is %d, right is %d, bottom is %d. \nReal rect left is %d, top is %d, right is %d, bottom is %d."

    const/16 v13, 0x8

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v15

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v15}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v15

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v15

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v15}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v15

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v15

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v15}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v15

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v15

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v15}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v15

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v7, v8, v13}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    .line 870
    if-gtz v16, :cond_6

    if-lez v15, :cond_d

    .line 872
    :cond_6
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int v4, v15, v16

    sub-int v5, v13, v14

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 873
    move/from16 v0, v16

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 874
    iput v14, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    const/16 v3, 0x10

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->setVerticalGravity(I)V

    .line 877
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->setHorizontalGravity(I)V

    .line 885
    :goto_4
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 886
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->setBackgroundColor(I)V

    .line 887
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectBorderType:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$3800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I

    move-result v3

    if-lez v3, :cond_7

    .line 888
    const/4 v3, 0x2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v4

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v4

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectBorderColor:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$3900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->setBorder(II)V

    .line 892
    :cond_7
    const/4 v3, 0x0

    .line 894
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->metadata_Arrive:Z

    if-eqz v4, :cond_10

    .line 895
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 896
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 898
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v20

    .line 899
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v21

    .line 900
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    move-result-object v5

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$4000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v5

    const/4 v6, 0x0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$4000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v5, v6, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 902
    if-eqz v2, :cond_f

    .line 903
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v3, v3, v20

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v4, v4, v21

    if-le v3, v4, :cond_e

    .line 904
    move/from16 v0, v21

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 910
    :goto_5
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 911
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 913
    const-string v4, "@@@ClosedCaptionManager.java"

    const-string v5, "CloseCaption subtitle decodeByteArray %d  %d   "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I

    if-eqz v4, :cond_8

    .line 915
    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v5, v0

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->setXYRate(F)V

    .line 917
    :cond_8
    const-string v4, "@@@ClosedCaptionManager.java"

    const-string v5, "CloseCaption subtitle decodeByteArray %d  %d   %d  %d "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    const-string v4, "@@@ClosedCaptionManager.java"

    const-string v5, "CloseCaption subtitle decodeByteArray %d  %d   %d  %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 931
    :cond_9
    :goto_6
    if-eqz v2, :cond_b

    .line 932
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 935
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 936
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->addView(Landroid/view/View;)V

    .line 937
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->metadata_Arrive:Z

    if-eqz v2, :cond_11

    const/high16 v2, -0x1000000

    :goto_7
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->setBackgroundColor(I)V

    .line 938
    const/16 v2, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->setGravity(I)V

    .line 940
    if-gtz v16, :cond_a

    if-lez v15, :cond_b

    .line 941
    :cond_a
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 942
    sub-int v4, v15, v16

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 943
    sub-int v4, v13, v14

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 944
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    move v3, v12

    .line 842
    :cond_c
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_3

    .line 879
    :cond_d
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 880
    const/16 v4, 0x10

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->setVerticalGravity(I)V

    .line 881
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->setHorizontalGravity(I)V

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 907
    :cond_e
    move/from16 v0, v20

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto/16 :goto_5

    .line 920
    :cond_f
    const-string v2, "@@@ClosedCaptionManager.java"

    const-string v4, "CloseCaption subtitle decodeByteArray return null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 923
    goto :goto_6

    .line 924
    :cond_10
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$4000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v3

    const/4 v4, 0x0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$4000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 925
    if-nez v2, :cond_9

    .line 926
    const-string v3, "@@@ClosedCaptionManager.java"

    const-string v4, "CloseCaption subtitle decodeByteArray return null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 937
    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    .line 949
    :cond_12
    if-eqz v3, :cond_13

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    if-eqz v2, :cond_13

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->bringToFront()V

    .line 835
    :cond_13
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_2

    .line 956
    :cond_14
    if-eqz p2, :cond_2

    .line 957
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    goto/16 :goto_1

    :cond_15
    move-object v9, v2

    goto/16 :goto_0
.end method

.method private static fromID(I)Landroid/graphics/Typeface;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    packed-switch p0, :pswitch_data_0

    .line 238
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption Font Style is :%d, ui set to default."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    .line 205
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 208
    :pswitch_1
    const-string v0, "courier"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_2
    const-string v0, "times new roman"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_3
    const-string v0, "helvetica"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 216
    :pswitch_4
    const-string v0, "arial"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_5
    const-string v0, "casual"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_6
    const-string v0, "cursive"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_7
    const-string v0, "sans-serif-smallcaps"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 229
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 232
    :pswitch_9
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 236
    :pswitch_a
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 203
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

.method private getFontSize(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;I)F
    .locals 7

    .prologue
    const/16 v6, 0x2710

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const v0, 0x3f666666    # 0.9f

    .line 1067
    const/high16 v1, 0x3f400000    # 0.75f

    .line 1069
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontSize:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->access$2500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;)I

    move-result v2

    .line 1072
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1073
    const v1, 0x3f333333    # 0.7f

    .line 1075
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1076
    const v1, 0x3f4ccccd    # 0.8f

    .line 1078
    :cond_1
    const/16 v3, 0x3e8

    if-le v2, v3, :cond_2

    if-ge v2, v6, :cond_2

    .line 1079
    add-int/lit16 v1, v2, -0x3e8

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, v4

    .line 1081
    :cond_2
    if-le v2, v6, :cond_9

    .line 1082
    iget v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->fontSizeDefault:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 1083
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    if-eqz v1, :cond_6

    .line 1084
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->fontSizeDefault:F

    .line 1089
    :goto_0
    iget v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->fontSizeDefault:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    .line 1090
    iput v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->fontSizeDefault:F

    .line 1092
    :cond_3
    const/16 v1, 0x7530

    if-le v2, v1, :cond_7

    .line 1093
    add-int/lit16 v1, v2, -0x7530

    .line 1094
    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 1095
    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->fontSizeDefault:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1097
    if-lez p2, :cond_4

    .line 1098
    int-to-float v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 1119
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeEnable:Z
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$4400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1120
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeMedium:F
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$4500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 1125
    :cond_5
    return v0

    .line 1086
    :cond_6
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1087
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->fontSizeDefault:F

    goto :goto_0

    .line 1100
    :cond_7
    const/16 v1, 0x4e20

    if-le v2, v1, :cond_8

    .line 1101
    add-int/lit16 v1, v2, -0x4e20

    .line 1102
    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 1104
    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I

    div-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1105
    if-lez p2, :cond_4

    .line 1106
    int-to-float v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_1

    .line 1110
    :cond_8
    add-int/lit16 v1, v2, -0x2710

    .line 1112
    if-lez p2, :cond_4

    .line 1113
    int-to-float v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method private invalidateView()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->invalidate()V

    .line 613
    :cond_0
    return-void
.end method

.method private isSameAsOld(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 438
    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->getSubtitleEntry()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    move v3, v9

    .line 478
    :goto_0
    return v3

    .line 441
    :cond_0
    const-string v2, ""

    .line 442
    const/4 v0, -0x1

    move v6, v3

    move v1, v0

    move v4, v3

    .line 443
    :goto_1
    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->getSubtitleEntry()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 444
    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->getSubtitleEntry()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    .line 445
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->getSubtitleDispInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v10

    .line 447
    invoke-virtual {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->getImageInfo()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    move v8, v9

    .line 449
    :goto_2
    if-nez v6, :cond_8

    .line 450
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$3200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I

    move-result v7

    .line 452
    :goto_3
    invoke-virtual {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->getTextRowInfo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    move v5, v3

    .line 453
    :goto_4
    invoke-virtual {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->getTextRowInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 454
    invoke-virtual {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->getTextRowInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;

    .line 455
    if-eqz v1, :cond_3

    .line 457
    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->getTextInfoEntry()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v4, v2

    move v2, v3

    .line 461
    :goto_5
    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->getTextInfoEntry()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 462
    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->getTextInfoEntry()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;

    .line 464
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 465
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->getStringText()Ljava/lang/String;

    move-result-object v0

    .line 461
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object v4, v0

    goto :goto_5

    .line 467
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "|"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->getStringText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_2
    move-object v2, v4

    .line 453
    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    .line 443
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v7

    move v4, v8

    goto/16 :goto_1

    .line 472
    :cond_5
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    if-lez v1, :cond_7

    .line 473
    :cond_6
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v4, "CloseCaption subtitle content change, info is %s. subtitle time stamp %d, dur %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->getTimeStamp()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iput-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleText:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    move v3, v9

    .line 476
    goto/16 :goto_0

    :cond_8
    move v7, v1

    goto/16 :goto_3

    :cond_9
    move v8, v4

    goto/16 :goto_2
.end method

.method private parseParcel()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 577
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-nez v0, :cond_0

    .line 578
    const/4 v0, 0x0

    .line 586
    :goto_0
    return-object v0

    .line 581
    :cond_0
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 582
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->parse(Landroid/os/Parcel;)Z

    goto :goto_0
.end method

.method private removeImageViews()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1016
    :cond_0
    return-void

    .line 1008
    :cond_1
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V

    .line 1011
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1012
    if-eqz v0, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private reverseString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
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

    .line 2315
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2316
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2317
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2318
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 2319
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 2321
    int-to-float v5, v1

    mul-float/2addr v5, p1

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    if-lez v1, :cond_0

    .line 2322
    int-to-float v5, v1

    div-float p1, v7, v5

    .line 2324
    :cond_0
    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 2325
    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 2326
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2327
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2328
    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-le v3, v6, :cond_1

    .line 2329
    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 2330
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2332
    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_2

    .line 2333
    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 2334
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2336
    :cond_2
    div-int/lit8 v1, v2, 0x2

    sub-int v1, v4, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2337
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2338
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v6, :cond_3

    .line 2339
    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 2340
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2342
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_4

    .line 2343
    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 2344
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2346
    :cond_4
    return-object v0
.end method

.method private setSubtitleObjectNull()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 197
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V

    .line 200
    return-void
.end method

.method private startAnimation(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;Landroid/widget/RelativeLayout;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1020
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectType:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->access$4100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I

    move-result v0

    if-lez v0, :cond_3

    .line 1021
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectType:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->access$4100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1023
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1024
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectSpeed:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->access$4200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1025
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1027
    :cond_0
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectType:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->access$4100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1033
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectDirection:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->access$4300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I

    move-result v0

    if-nez v0, :cond_5

    .line 1035
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 1037
    :goto_0
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectDirection:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->access$4300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1039
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I

    int-to-float v0, v0

    .line 1041
    :cond_1
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectDirection:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->access$4300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 1043
    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I

    neg-int v2, v2

    int-to-float v2, v2

    .line 1045
    :goto_1
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectDirection:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->access$4300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1047
    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I

    int-to-float v2, v2

    .line 1049
    :cond_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v0, v1, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1050
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectSpeed:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->access$4200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1051
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1056
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
    .line 1059
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private toRealY(I)I
    .locals 1

    .prologue
    .line 1063
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method


# virtual methods
.method public checkLayoutChanged()V
    .locals 3

    .prologue
    .line 668
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 671
    const/4 v1, 0x0

    .line 672
    if-eqz v0, :cond_3

    .line 673
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 674
    check-cast v0, Landroid/view/ViewGroup;

    .line 675
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_2

    .line 676
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->setMainLayout(Landroid/view/ViewGroup;)V

    .line 680
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->checkxyRate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption checkxyRate "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->xyRate:F

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->setXYRate(F)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public checkViewShowStatus(I)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 694
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 695
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->timestampCurrent:I

    .line 697
    :try_start_0
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 770
    :goto_0
    return-void

    .line 699
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 700
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->checkLayoutChanged()V

    .line 702
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    if-eqz v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->maxDuration:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I

    move-result v0

    if-eq v0, v10, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->maxDuration:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_f

    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I

    move-result v0

    if-gt v0, p1, :cond_f

    move v0, v3

    .line 707
    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 721
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    move v5, v2

    .line 724
    :goto_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_d

    .line 726
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 727
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I

    move-result v1

    if-gt v1, p1, :cond_c

    move v4, v2

    .line 729
    :goto_3
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_c

    .line 730
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    .line 731
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$3200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I

    move-result v6

    if-eq v6, v10, :cond_4

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$3200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I

    move-result v6

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I

    move-result v7

    add-int/2addr v6, v7

    if-le v6, p1, :cond_a

    .line 733
    :cond_4
    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez v6, :cond_b

    .line 734
    :cond_5
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 735
    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 736
    const-string v4, "@@@ClosedCaptionManager.java"

    const-string v5, "CloseCaption mSubtitleInfo is set: %d, duration: %d, timeStamp:%d, curTime: %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    if-nez v8, :cond_8

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$3200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_6

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$3300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$3300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 742
    :cond_7
    const-string v0, "@@@ClosedCaptionManager.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClosedCaption overtime null point. subtitleDispInfo.textRowInfo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v1

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 736
    goto :goto_4

    .line 749
    :cond_9
    :try_start_3
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->createAndShowChildViews()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 769
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 753
    :cond_a
    :try_start_4
    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_b

    .line 754
    const-string v6, "@@@ClosedCaptionManager.java"

    const-string v7, "ClosedCaption overtime, Duration is %d, subtitle timestamp is %d, current timestamp is %d "

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$3200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x1

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    :cond_b
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_3

    .line 724
    :cond_c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_2

    .line 764
    :cond_d
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    if-nez v0, :cond_e

    .line 765
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption mSubtitleInfo is null, call invalidateView"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 769
    :cond_e
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_f
    move v0, v2

    goto/16 :goto_1
.end method

.method public clearData(Z)V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->metadata_Arrive:Z

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleText:Ljava/lang/String;

    .line 304
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption clearData "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 308
    if-nez p1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->clearWidget()V

    .line 313
    :goto_0
    return-void

    .line 306
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->m_handlerEvent:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public clearWidget()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->m_handlerEvent:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    return-void
.end method

.method public getSettings()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    return-object v0
.end method

.method public handleRawData(Landroid/os/Parcel;ZZ)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 490
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 493
    if-nez p1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 496
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mParcel:Landroid/os/Parcel;

    if-eqz v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 498
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 499
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mParcel:Landroid/os/Parcel;

    .line 500
    if-nez p2, :cond_2

    .line 501
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->metadata_Arrive:Z

    .line 503
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->parseParcel()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-result-object v2

    .line 533
    if-nez v2, :cond_3

    .line 534
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->clearWidget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 536
    :cond_3
    if-eqz p3, :cond_4

    .line 537
    :try_start_1
    invoke-direct {p0, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->isSameAsOld(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 556
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 540
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 541
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 544
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->m_handlerEvent:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 545
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->m_handlerEvent:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move v0, v1

    .line 552
    goto :goto_1

    .line 556
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isEmptySubtitleInfo()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 591
    if-nez v0, :cond_5

    .line 592
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 593
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-object v2, v0

    .line 595
    :goto_0
    if-nez v2, :cond_0

    move v0, v1

    .line 603
    :goto_1
    return v0

    .line 596
    :cond_0
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 597
    :cond_1
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->getTextRowInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 598
    goto :goto_1

    .line 599
    :cond_2
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->getTextRowInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;

    .line 600
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1

    .line 601
    :cond_3
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$3100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_1

    .line 603
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    move-object v2, v0

    goto :goto_0
.end method

.method public parcelToSubtitleInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 422
    iget-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z

    if-eqz v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-object v0

    .line 424
    :cond_1
    if-eqz p1, :cond_0

    .line 426
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 432
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->parse(Landroid/os/Parcel;)Z

    goto :goto_0
.end method

.method public previewSubtitle(Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;)V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 249
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption begin previewSubtitle"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iput-boolean v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z

    .line 251
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->clearWidget()V

    .line 252
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->setSurfaceView(Landroid/view/View;)V

    .line 253
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->getSampleText()Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 255
    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->maxDuration:I
    invoke-static {v1, v7}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$802(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;I)I

    .line 256
    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I
    invoke-static {v1, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$902(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;I)I

    .line 257
    new-instance v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    invoke-direct {v2, p0, v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    .line 258
    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v3

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 259
    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v3

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 260
    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v3

    const/16 v4, 0x62

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 261
    invoke-virtual {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v3

    const/16 v4, 0x62

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 262
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;

    invoke-direct {v3, p0, v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    .line 265
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v2

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->horizontalJustification:I
    invoke-static {v2, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1702(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;I)I

    .line 267
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v2

    const/16 v4, 0xa

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 268
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v2

    const/16 v4, 0x5a

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 269
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v2

    const/16 v4, 0x1e

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 270
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v2

    const/16 v4, 0x3c

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 271
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    const/high16 v4, -0x1000000

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I
    invoke-static {v2, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1902(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;I)I

    .line 273
    new-instance v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;

    invoke-direct {v2, p0, v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    .line 274
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    move-result-object v3

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontColor:I
    invoke-static {v3, v7}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->access$2402(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;I)I

    .line 276
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    move-result-object v3

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontSize:I
    invoke-static {v3, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->access$2502(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;I)I

    .line 277
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v3

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeColor:I
    invoke-static {v3, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$2702(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;I)I

    .line 278
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v3

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeType:I
    invoke-static {v3, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$2802(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;I)I

    .line 279
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v3

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Italic:I
    invoke-static {v3, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$2902(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;I)I

    .line 280
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v3

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Underline:I
    invoke-static {v3, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$3002(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;I)I

    .line 281
    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$3102(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 286
    iput-boolean v8, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z

    .line 287
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->setXYRate(F)V

    .line 288
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->createAndShowChildViews()V

    .line 289
    invoke-virtual {p0, v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->show(Z)V

    .line 290
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption previewSubtitle"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public setActivity(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 399
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption setActivity "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;

    .line 401
    return-void
.end method

.method public setData(Landroid/os/Parcel;Z)Z
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->handleRawData(Landroid/os/Parcel;ZZ)Z

    move-result v0

    return v0
.end method

.method public setMainLayout(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 357
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption setMainLayout ,shoud call clearWidget()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->clearWidget()V

    .line 359
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public setSurfaceView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption enter setSurfaceView "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    .line 374
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->clearWidget()V

    .line 375
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_2

    .line 378
    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 380
    if-eqz v0, :cond_2

    .line 381
    const-string v1, "@@@ClosedCaptionManager.java"

    const-string v2, "CloseCaption enter setSurfaceView setMainLayout "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->setMainLayout(Landroid/view/ViewGroup;)V

    .line 388
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;

    goto :goto_0

    .line 385
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->setMainLayout(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method public setThumbnailPlayListURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public setXYRate(F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption setXYRate+ "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V

    .line 412
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption setXYRate- "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method public show(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 621
    iput-boolean p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mShow:Z

    .line 622
    if-nez p1, :cond_3

    .line 623
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z

    if-eqz v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->enableDraw(Z)V

    .line 645
    :cond_2
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption hide "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    :goto_1
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V

    goto :goto_0

    .line 647
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    if-eqz v0, :cond_4

    .line 648
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->enableDraw(Z)V

    .line 650
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 651
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 652
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 656
    :cond_5
    :goto_2
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption show "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 654
    :cond_6
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->createAndShowChildViews()V

    goto :goto_2
.end method
