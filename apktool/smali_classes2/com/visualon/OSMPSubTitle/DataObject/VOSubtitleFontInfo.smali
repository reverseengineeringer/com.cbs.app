.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fontColor:I

.field public fontSize:F

.field public fontSizeStr:Ljava/lang/String;

.field public fontStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSizeStr:Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontStyle:I

    .line 11
    iput v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontColor:I

    return-void
.end method


# virtual methods
.method public getFontColor()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontColor:I

    return v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    return v0
.end method

.method public getFontStyle()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontStyle:I

    return v0
.end method
