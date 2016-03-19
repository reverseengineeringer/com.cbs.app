.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public duration:I

.field public subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

.field public subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->duration:I

    .line 10
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VORect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    .line 11
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->duration:I

    return v0
.end method

.method public getSubtitleDispInfo()Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    return-object v0
.end method

.method public getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    return-object v0
.end method
