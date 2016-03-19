.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleDisplayInfo"
.end annotation


# instance fields
.field private dispDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;

.field private imageInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private textRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 3

    .prologue
    .line 2037
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2033
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;

    .line 2034
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->dispDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;

    .line 2035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    .line 2038
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 2005
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 2005
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2043
    const/16 v3, 0x66

    if-eq v2, v3, :cond_1

    .line 2044
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2079
    :cond_0
    :goto_0
    return v0

    .line 2047
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2048
    const/16 v3, 0x67

    if-eq v2, v3, :cond_3

    .line 2049
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2061
    :cond_2
    new-instance v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v2, v3, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->dispDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;

    .line 2062
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->dispDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;->parse(Landroid/os/Parcel;)Z
    invoke-static {v2, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;->access$7000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;Landroid/os/Parcel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2064
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2065
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2066
    const/16 v2, 0x69

    if-eq v0, v2, :cond_4

    move v0, v1

    .line 2067
    goto :goto_0

    .line 2051
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;

    .line 2054
    :goto_1
    new-instance v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v2, v3, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    .line 2055
    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->parse(Landroid/os/Parcel;)Z
    invoke-static {v2, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$6900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;Landroid/os/Parcel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2057
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2069
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    .line 2071
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_5

    .line 2073
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v0, v2, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    .line 2074
    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->parse(Landroid/os/Parcel;)Z
    invoke-static {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$7200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;Landroid/os/Parcel;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2076
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move v0, v1

    .line 2079
    goto :goto_0
.end method


# virtual methods
.method public getDispDescriptor()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->dispDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;

    return-object v0
.end method

.method public getImageInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTextRowInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;

    return-object v0
.end method
