.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubTitleFormatSettingImpl"
.end annotation


# instance fields
.field private backgroundColor:I

.field private backgroundColorEnable:Z

.field private backgroundColorOpacityRate:I

.field private backgroundColorOpacityRateEnable:Z

.field private edgeColor:I

.field private edgeColorEnable:Z

.field private edgeColorOpacityRate:I

.field private edgeColorOpacityRateEnable:Z

.field private edgeType:I

.field private edgeTypeEnable:Z

.field private fontBold:I

.field private fontBoldEnable:Z

.field private fontColor:I

.field private fontColorEnable:Z

.field private fontColorOpacityRate:I

.field private fontColorOpacityRateEnable:Z

.field private fontItalic:I

.field private fontItalicEnable:Z

.field private fontName:Ljava/lang/String;

.field private fontSizeEnable:Z

.field private fontSizeMedium:F

.field private fontTypeface:Landroid/graphics/Typeface;

.field private fontUnderline:I

.field private fontUnderlineEnable:Z

.field private horizontal:I

.field private rectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private removeBlanks:Ljava/lang/String;

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

.field private vertical:I

.field private windowBackgroundColor:I

.field private windowBackgroundColorEnable:Z

.field private windowBackgroundColorOpacityRate:I

.field private windowBackgroundColorOpacityRateEnable:Z


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3389
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3754
    iput-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;

    .line 3755
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeType:I

    .line 3757
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColor:I

    .line 3758
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColor:I

    .line 3759
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColor:I

    .line 3760
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColor:I

    .line 3761
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorOpacityRate:I

    .line 3762
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorOpacityRate:I

    .line 3763
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorOpacityRate:I

    .line 3764
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorOpacityRate:I

    .line 3766
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeMedium:F

    .line 3767
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontItalic:I

    .line 3768
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontUnderline:I

    .line 3769
    const/4 v0, 0x1

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontBold:I

    .line 3770
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeTypeEnable:Z

    .line 3772
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorEnable:Z

    .line 3773
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorEnable:Z

    .line 3774
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorEnable:Z

    .line 3775
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorEnable:Z

    .line 3776
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorOpacityRateEnable:Z

    .line 3777
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorOpacityRateEnable:Z

    .line 3778
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorOpacityRateEnable:Z

    .line 3779
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorOpacityRateEnable:Z

    .line 3781
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeEnable:Z

    .line 3782
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontItalicEnable:Z

    .line 3783
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontUnderlineEnable:Z

    .line 3784
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontBoldEnable:Z

    .line 3785
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    .line 3786
    iput-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontTypeface:Landroid/graphics/Typeface;

    .line 3788
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->horizontal:I

    .line 3789
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->vertical:I

    .line 3791
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->removeBlanks:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontUnderlineEnable:Z

    return v0
.end method

.method static synthetic access$10300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontUnderline:I

    return v0
.end method

.method static synthetic access$11000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->horizontal:I

    return v0
.end method

.method static synthetic access$11100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->vertical:I

    return v0
.end method

.method static synthetic access$11200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColor:I

    return v0
.end method

.method static synthetic access$11900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorEnable:Z

    return v0
.end method

.method static synthetic access$12000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorOpacityRate:I

    return v0
.end method

.method static synthetic access$12100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorOpacityRateEnable:Z

    return v0
.end method

.method static synthetic access$12400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColor:I

    return v0
.end method

.method static synthetic access$12500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorEnable:Z

    return v0
.end method

.method static synthetic access$12600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorOpacityRate:I

    return v0
.end method

.method static synthetic access$12700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorOpacityRateEnable:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeEnable:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)F
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeMedium:F

    return v0
.end method

.method static synthetic access$5300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->removeBlanks:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontItalicEnable:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontItalic:I

    return v0
.end method

.method static synthetic access$8000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeTypeEnable:Z

    return v0
.end method

.method static synthetic access$8100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeType:I

    return v0
.end method

.method static synthetic access$8200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColor:I

    return v0
.end method

.method static synthetic access$8300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorEnable:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;IIZ)I
    .locals 1

    .prologue
    .line 3389
    invoke-direct {p0, p1, p2, p3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->converColor(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorOpacityRate:I

    return v0
.end method

.method static synthetic access$8600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorOpacityRateEnable:Z

    return v0
.end method

.method static synthetic access$8700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;IIZ)I
    .locals 1

    .prologue
    .line 3389
    invoke-direct {p0, p1, p2, p3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->converColorOpacityRate(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColor:I

    return v0
.end method

.method static synthetic access$8900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorEnable:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorOpacityRate:I

    return v0
.end method

.method static synthetic access$9100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorOpacityRateEnable:Z

    return v0
.end method

.method static synthetic access$9200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z
    .locals 1

    .prologue
    .line 3389
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontBoldEnable:Z

    return v0
.end method

.method static synthetic access$9300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontBold:I

    return v0
.end method

.method static synthetic access$9600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method private addRowRect(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 3733
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;

    .line 3736
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3737
    return-void
.end method

.method private checkAlpha(I)I
    .locals 6

    .prologue
    const/16 v0, 0x64

    const/4 v2, 0x0

    .line 3684
    if-gez p1, :cond_1

    move v1, v2

    .line 3686
    :goto_0
    if-le v1, v0, :cond_0

    .line 3688
    :goto_1
    int-to-double v0, v0

    const-wide v4, 0x4004666666666666L    # 2.55

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 3689
    const-string v1, "@@@ClosedCaptionManager.java"

    const-string v3, "CloseCaption alpha = %d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3690
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method private clearRowRectList()V
    .locals 1

    .prologue
    .line 3724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;

    .line 3725
    return-void
.end method

.method private converColor(IIZ)I
    .locals 4

    .prologue
    .line 3740
    if-eqz p3, :cond_0

    .line 3741
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 3743
    :cond_0
    return p1
.end method

.method private converColorOpacityRate(IIZ)I
    .locals 4

    .prologue
    .line 3747
    if-eqz p3, :cond_0

    .line 3748
    and-int/lit16 v0, p2, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 3750
    :cond_0
    return p1
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3697
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeTypeEnable:Z

    .line 3699
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorEnable:Z

    .line 3700
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorEnable:Z

    .line 3701
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorEnable:Z

    .line 3702
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorEnable:Z

    .line 3703
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorOpacityRateEnable:Z

    .line 3704
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorOpacityRateEnable:Z

    .line 3705
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorOpacityRateEnable:Z

    .line 3706
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorOpacityRateEnable:Z

    .line 3708
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeEnable:Z

    .line 3709
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontItalicEnable:Z

    .line 3710
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontUnderlineEnable:Z

    .line 3711
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontBoldEnable:Z

    .line 3712
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    .line 3713
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontTypeface:Landroid/graphics/Typeface;

    .line 3714
    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;

    .line 3715
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->removeBlanks:Ljava/lang/String;

    .line 3717
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3718
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 3452
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColor:I

    .line 3453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorEnable:Z

    .line 3454
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3455
    return-void
.end method

.method public setBackgroundOpacity(I)V
    .locals 1

    .prologue
    .line 3463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorOpacityRateEnable:Z

    .line 3464
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->checkAlpha(I)I

    move-result v0

    .line 3465
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorOpacityRate:I

    .line 3466
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3467
    return-void
.end method

.method public setEdgeColor(I)V
    .locals 1

    .prologue
    .line 3634
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColor:I

    .line 3635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorEnable:Z

    .line 3636
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3637
    return-void
.end method

.method public setEdgeOpacity(I)V
    .locals 1

    .prologue
    .line 3645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorOpacityRateEnable:Z

    .line 3646
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->checkAlpha(I)I

    move-result v0

    .line 3647
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorOpacityRate:I

    .line 3648
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3649
    return-void
.end method

.method public setEdgeType(I)V
    .locals 1

    .prologue
    .line 3622
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeType:I

    .line 3623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeTypeEnable:Z

    .line 3624
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3625
    return-void
.end method

.method public setFontBold(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3510
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontBold:I

    .line 3511
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontBoldEnable:Z

    .line 3512
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3513
    return-void

    .line 3510
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontColor(I)V
    .locals 1

    .prologue
    .line 3397
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColor:I

    .line 3398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorEnable:Z

    .line 3399
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3400
    return-void
.end method

.method public setFontItalic(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3499
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontItalic:I

    .line 3500
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontItalicEnable:Z

    .line 3501
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3502
    return-void

    .line 3499
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3539
    const-string v0, "@@@ClosedCaptionManager.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CloseCaption setFontName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3541
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11700(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".ttf"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3545
    :try_start_0
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11700(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 3546
    if-eqz v0, :cond_1

    .line 3547
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11700(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontTypeface:Landroid/graphics/Typeface;

    .line 3549
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v3, "CloseCaption setFontName from Assets"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 3559
    :goto_0
    if-nez v0, :cond_3

    const-string v3, "Dom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3560
    const-string v3, "Casual"

    iput-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    .line 3567
    :goto_1
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "Default"

    aput-object v4, v3, v2

    const-string v4, "Courier"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "Times New Roman"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "Helvetica"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "Arial"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "Casual"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "Cursive"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "sans-serif-smallcaps"

    aput-object v5, v3, v4

    .line 3568
    if-nez v0, :cond_0

    move v0, v2

    .line 3570
    :goto_2
    if-ge v0, v6, :cond_7

    aget-object v4, v3, v0

    .line 3571
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    .line 3576
    :goto_3
    if-nez v0, :cond_0

    .line 3577
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v3, "CloseCaption Font Style is :%s, ui set to default."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3580
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3581
    return-void

    .line 3552
    :cond_1
    :try_start_1
    const-string v0, "@@@ClosedCaptionManager.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CloseCaption InputStreamis==null setFontName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 3556
    goto :goto_0

    .line 3555
    :catch_0
    move-exception v0

    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v3, "CloseCaption no font in Assets"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 3557
    goto :goto_0

    .line 3558
    :cond_2
    const-string v0, "@@@ClosedCaptionManager.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CloseCaption mainActivity==null setFontName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto/16 :goto_0

    .line 3561
    :cond_3
    if-nez v0, :cond_4

    const-string v3, "Coronet"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3562
    const-string v3, "Cursive"

    iput-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    goto/16 :goto_1

    .line 3563
    :cond_4
    if-nez v0, :cond_5

    const-string v3, "Gothic"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3564
    const-string v3, "sans-serif-smallcaps"

    iput-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    goto/16 :goto_1

    .line 3566
    :cond_5
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    goto/16 :goto_1

    .line 3570
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method public setFontOpacity(I)V
    .locals 1

    .prologue
    .line 3408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorOpacityRateEnable:Z

    .line 3409
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->checkAlpha(I)I

    move-result v0

    .line 3410
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorOpacityRate:I

    .line 3411
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3412
    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    .prologue
    .line 3442
    invoke-virtual {p0, p1, p1, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->setFontSize(FFF)V

    .line 3443
    return-void
.end method

.method public setFontSize(FFF)V
    .locals 1

    .prologue
    .line 3422
    iput p2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeMedium:F

    .line 3423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeEnable:Z

    .line 3424
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3425
    return-void
.end method

.method public setFontSizeScale(I)V
    .locals 2

    .prologue
    .line 3433
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->setFontSize(F)V

    .line 3434
    return-void
.end method

.method public setFontStyle(I)V
    .locals 5

    .prologue
    .line 3610
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption begin setFontStyle: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3611
    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->fromID(I)Landroid/graphics/Typeface;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9500(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontTypeface:Landroid/graphics/Typeface;

    .line 3612
    const-string v0, "Default"

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    .line 3613
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3614
    return-void
.end method

.method public setFontUnderline(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3521
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontUnderline:I

    .line 3522
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontUnderlineEnable:Z

    .line 3523
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3524
    return-void

    .line 3521
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitleBoundingBox(IIIIZ)V
    .locals 2

    .prologue
    .line 3652
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->clearRowRectList()V

    .line 3653
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3654
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 3655
    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 3656
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 3657
    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 3659
    sub-int v1, p4, p2

    if-eqz v1, :cond_0

    sub-int v1, p3, p1

    if-nez v1, :cond_1

    .line 3664
    :cond_0
    :goto_0
    return-void

    .line 3662
    :cond_1
    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->addRowRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setSubtitleGravity(II)V
    .locals 0

    .prologue
    .line 3678
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->horizontal:I

    .line 3679
    iput p2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->vertical:I

    .line 3681
    return-void
.end method

.method public setSubtitleTrim(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3795
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->removeBlanks:Ljava/lang/String;

    .line 3796
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 3527
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontTypeface:Landroid/graphics/Typeface;

    .line 3528
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;

    .line 3529
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3531
    return-void
.end method

.method public setWindowColor(I)V
    .locals 1

    .prologue
    .line 3476
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColor:I

    .line 3477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorEnable:Z

    .line 3478
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3479
    return-void
.end method

.method public setWindowOpacity(I)V
    .locals 1

    .prologue
    .line 3487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorOpacityRateEnable:Z

    .line 3488
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->checkAlpha(I)I

    move-result v0

    .line 3489
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorOpacityRate:I

    .line 3490
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    .line 3491
    return-void
.end method
