.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public segmentTextInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field public textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    return-void
.end method


# virtual methods
.method public getSegmentTextInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    return-object v0
.end method
