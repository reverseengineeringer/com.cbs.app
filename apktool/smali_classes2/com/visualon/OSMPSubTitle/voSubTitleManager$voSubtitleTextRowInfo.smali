.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleTextRowInfo"
.end annotation


# instance fields
.field private textInfoEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 3

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;

    .line 1776
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    .line 1779
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1756
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1756
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;

    move v0, v1

    .line 1786
    :goto_0
    new-instance v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v3, v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    .line 1787
    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->parse(Landroid/os/Parcel;)Z
    invoke-static {v3, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$5900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;Landroid/os/Parcel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 1792
    goto :goto_0

    .line 1794
    :cond_0
    if-eqz v0, :cond_1

    .line 1795
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v0, v3, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    .line 1796
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->parse(Landroid/os/Parcel;)Z
    invoke-static {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$6000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1800
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v1, v2

    .line 1798
    goto :goto_1
.end method


# virtual methods
.method public getTextInfoEntry()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTextRowDes()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    return-object v0
.end method
