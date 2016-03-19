.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dispDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;

.field public imageInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public lineTextRowInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->dispDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDispDescriptor()Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->dispDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;

    return-object v0
.end method

.method public getImageInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLineTextRowInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    return-object v0
.end method
