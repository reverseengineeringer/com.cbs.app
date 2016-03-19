.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

.field public horizontalAlignment:I

.field public printDirection:I

.field public verticalAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VORect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    .line 9
    iput v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->horizontalAlignment:I

    .line 10
    iput v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->verticalAlignment:I

    .line 11
    iput v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->printDirection:I

    return-void
.end method


# virtual methods
.method public getDataBox()Lcom/visualon/OSMPSubTitle/DataObject/VORect;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    return-object v0
.end method

.method public getHorizontalAlignment()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->horizontalAlignment:I

    return v0
.end method

.method public getPrintDirection()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->printDirection:I

    return v0
.end method

.method public getVerticalAlignment()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->verticalAlignment:I

    return v0
.end method
