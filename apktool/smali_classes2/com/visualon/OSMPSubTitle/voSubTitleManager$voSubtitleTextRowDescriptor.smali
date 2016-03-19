.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleTextRowDescriptor"
.end annotation


# instance fields
.field private dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

.field private horizontalJustification:I

.field private printDirection:I

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

.field private verticalJustification:I


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1717
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1712
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    .line 1713
    iput v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->horizontalJustification:I

    .line 1714
    iput v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->verticalJustification:I

    .line 1715
    iput v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->printDirection:I

    .line 1718
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1660
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)I
    .locals 1

    .prologue
    .line 1660
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->horizontalJustification:I

    return v0
.end method

.method static synthetic access$1702(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;I)I
    .locals 0

    .prologue
    .line 1660
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->horizontalJustification:I

    return p1
.end method

.method static synthetic access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1660
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)I
    .locals 1

    .prologue
    .line 1660
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->printDirection:I

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1722
    const/16 v2, 0x6d

    if-eq v1, v2, :cond_1

    .line 1723
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1746
    :cond_0
    :goto_0
    return v0

    .line 1726
    :cond_1
    new-instance v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    .line 1727
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->parse(Landroid/os/Parcel;)Z
    invoke-static {v1, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$5700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1730
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    invoke-direct {p0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->setDataBox(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1736
    const/16 v2, 0x16

    if-eq v1, v2, :cond_2

    .line 1737
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 1732
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1740
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->horizontalJustification:I

    .line 1741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->verticalJustification:I

    .line 1743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1744
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->printDirection:I

    .line 1746
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDataBox(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)V
    .locals 2

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    .line 1678
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v0, :cond_0

    .line 1680
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I

    move-result v0

    .line 1681
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->setRectFillColor(I)V
    invoke-static {v1, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$5500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;I)V

    .line 1683
    :cond_0
    return-void
.end method


# virtual methods
.method public getDataBox()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    return-object v0
.end method

.method public getHorizontalJustification()I
    .locals 1

    .prologue
    .line 1691
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->horizontalJustification:I

    return v0
.end method

.method public getPrintDirection()I
    .locals 1

    .prologue
    .line 1709
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->printDirection:I

    return v0
.end method

.method public getVerticalJustification()I
    .locals 1

    .prologue
    .line 1700
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->verticalJustification:I

    return v0
.end method
