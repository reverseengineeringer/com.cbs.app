.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Offset:I

.field public eddgeColor:I

.field public edgeType:I

.field public hasUnderline:Z

.field public isBold:Z

.field public isItalic:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isItalic:Z

    .line 8
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isBold:Z

    .line 9
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->hasUnderline:Z

    .line 10
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->edgeType:I

    .line 11
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->Offset:I

    .line 12
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    return-void
.end method


# virtual methods
.method public getEddgeColor()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    return v0
.end method

.method public getEdgeType()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->edgeType:I

    return v0
.end method

.method public getHasUnderline()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->hasUnderline:Z

    return v0
.end method

.method public getIsItalic()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isItalic:Z

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->Offset:I

    return v0
.end method
