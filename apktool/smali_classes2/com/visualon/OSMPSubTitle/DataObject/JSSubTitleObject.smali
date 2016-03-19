.class public Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;,
        Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;
    }
.end annotation


# instance fields
.field public jsBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/JSBlock;",
            ">;"
        }
    .end annotation
.end field

.field public mainJsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject;->jsBlocks:Ljava/util/List;

    return-void
.end method
