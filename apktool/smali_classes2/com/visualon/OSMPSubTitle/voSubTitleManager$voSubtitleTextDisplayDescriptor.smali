.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleTextDisplayDescriptor"
.end annotation


# instance fields
.field private scrollDirection:I

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

.field private wrap:I


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1637
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1634
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;->wrap:I

    .line 1635
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;->scrollDirection:I

    .line 1638
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1614
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1614
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 2

    .prologue
    .line 1641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1642
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    .line 1643
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1644
    const/4 v0, 0x0

    .line 1650
    :goto_0
    return v0

    .line 1646
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;->wrap:I

    .line 1648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;->scrollDirection:I

    .line 1650
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getScrollDirection()I
    .locals 1

    .prologue
    .line 1631
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;->scrollDirection:I

    return v0
.end method

.method public getWrap()I
    .locals 1

    .prologue
    .line 1621
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextDisplayDescriptor;->wrap:I

    return v0
.end method
