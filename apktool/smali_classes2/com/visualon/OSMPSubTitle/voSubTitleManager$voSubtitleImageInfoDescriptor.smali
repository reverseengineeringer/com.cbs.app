.class Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "voSubtitleImageInfoDescriptor"
.end annotation


# instance fields
.field private imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 1

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    .line 1984
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1971
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1971
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private getImageRectInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    return-object v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1988
    const/16 v2, 0x6f

    if-eq v1, v2, :cond_1

    .line 1989
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1995
    :cond_0
    :goto_0
    return v0

    .line 1992
    :cond_1
    new-instance v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    .line 1993
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->parse(Landroid/os/Parcel;)Z
    invoke-static {v1, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$5700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1995
    const/4 v0, 0x1

    goto :goto_0
.end method
