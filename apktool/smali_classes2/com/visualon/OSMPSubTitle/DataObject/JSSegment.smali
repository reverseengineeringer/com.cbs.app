.class public Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public color:Ljava/lang/String;

.field public edgeColor:Ljava/lang/String;

.field public edgeOpacity:D

.field public edgeStyle:Ljava/lang/String;

.field public fontFamily:Ljava/lang/String;

.field public fontSize:F

.field public fontSizeStr:Ljava/lang/String;

.field public hasTextUnderline:Z

.field public isBold:Z

.field public isItalic:Z

.field public opacity:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->hasTextUnderline:Z

    return-void
.end method
