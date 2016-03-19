.class public Lcom/visualon/OSMPSubTitle/DataObject/VORect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public color:I

.field public edgeColor:I

.field public edgeType:I

.field public rect:Landroid/graphics/Rect;

.field public rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

.field public zorder:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    .line 10
    iput v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeType:I

    .line 11
    iput v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeColor:I

    .line 12
    iput v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 13
    iput v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->zorder:I

    .line 14
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    .line 17
    return-void
.end method

.method private setColor(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 27
    return-void
.end method
