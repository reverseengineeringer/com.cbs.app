.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public effectDirection:I

.field public effectSpeed:I

.field public effectType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectType:I

    .line 9
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    .line 10
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectSpeed:I

    .line 40
    return-void
.end method


# virtual methods
.method public getEffectDirection()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    return v0
.end method

.method public getEffectSpeed()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectSpeed:I

    return v0
.end method

.method public getEffectType()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectType:I

    return v0
.end method
