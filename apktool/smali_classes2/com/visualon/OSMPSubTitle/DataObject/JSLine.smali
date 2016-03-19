.class public Lcom/visualon/OSMPSubTitle/DataObject/JSLine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public jsSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;",
            ">;"
        }
    .end annotation
.end field

.field public jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsSegments:Ljava/util/List;

    return-void
.end method
