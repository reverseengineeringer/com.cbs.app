.class Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo$SortByZOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;
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
        "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)V
    .locals 0

    .prologue
    .line 2202
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo$SortByZOrder;->this$1:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 2202
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo$SortByZOrder;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I
    .locals 2

    .prologue
    .line 2205
    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectZOrder:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$7600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v1

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectZOrder:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$7600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 2202
    check-cast p1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    check-cast p2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo$SortByZOrder;->compare(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I

    move-result v0

    return v0
.end method
