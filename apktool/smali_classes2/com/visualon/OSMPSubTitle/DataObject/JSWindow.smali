.class public Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;
    }
.end annotation


# instance fields
.field public color:Ljava/lang/String;

.field public edgeColor:Ljava/lang/String;

.field public edgeOpacity:D

.field public edgeStyle:Ljava/lang/String;

.field public horizontalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

.field public jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

.field public opacity:D

.field public verticalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private mappingHAligmentType(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->valueOf(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    move-result-object v0

    return-object v0
.end method

.method private mappingVAligmentType(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->valueOf(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setAligment(Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->HORIZONTAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    if-ne p1, v0, :cond_1

    .line 32
    invoke-direct {p0, p2}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->mappingHAligmentType(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->horizontalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    sget-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->VERTICAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    if-ne p1, v0, :cond_0

    .line 34
    invoke-direct {p0, p2}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->mappingVAligmentType(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->verticalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    goto :goto_0
.end method
