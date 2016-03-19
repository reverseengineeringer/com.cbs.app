.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

.field public fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    .line 9
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    return-void
.end method


# virtual methods
.method public getCharEffect()Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    return-object v0
.end method

.method public getFontInfo()Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    return-object v0
.end method
