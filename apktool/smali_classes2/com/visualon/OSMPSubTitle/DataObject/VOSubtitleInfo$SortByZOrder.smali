.class Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortByZOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;->this$0:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$1;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;-><init>(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;)I
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    move-result-object v0

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->zorder:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    move-result-object v1

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->zorder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 76
    check-cast p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    check-cast p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;->compare(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;)I

    move-result v0

    return v0
.end method
