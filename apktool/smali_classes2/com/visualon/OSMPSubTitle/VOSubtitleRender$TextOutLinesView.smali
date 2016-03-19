.class Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/VOSubtitleRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextOutLinesView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;
    }
.end annotation


# instance fields
.field private enableDraw:Z

.field private mBlockWindowRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private maxFontSize:I

.field private nOldBottom:I

.field private oldBottomSet:Z

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

.field private xBegin:I

.field private xBeginBoundBox:I

.field private yBegin:I

.field private yBeginBoundBox:I


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 824
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 825
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw:Z

    .line 808
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    .line 809
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    .line 810
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    .line 811
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    .line 1108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    .line 1213
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    .line 1214
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 1215
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    .line 826
    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 820
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 821
    invoke-direct {p0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw:Z

    .line 808
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    .line 809
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    .line 810
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    .line 811
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    .line 1108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    .line 1213
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    .line 1214
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 1215
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    .line 822
    return-void
.end method

.method private CheckRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1085
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, v2, :cond_4

    .line 1086
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1090
    :cond_0
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v2, :cond_5

    .line 1091
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1095
    :cond_1
    :goto_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v2, :cond_6

    .line 1096
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1100
    :cond_2
    :goto_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_7

    .line 1101
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1106
    :cond_3
    :goto_3
    return-void

    .line 1087
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    .line 1088
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1092
    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1

    .line 1093
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1097
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_2

    .line 1098
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1102
    :cond_7
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_3

    .line 1103
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3
.end method

.method private computeBoundBox(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1058
    iput v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    .line 1059
    iput v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    .line 1060
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    :cond_0
    return v5

    .line 1064
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1067
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1068
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1069
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_2

    .line 1070
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1071
    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_3

    .line 1072
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1073
    :cond_3
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_4

    .line 1074
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1075
    :cond_4
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_5

    .line 1076
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1067
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private doRenderSubtitle(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 1112
    const-string v0, "VOSubtitleRender"

    const-string v1, "+++ doRenderSubtitle +++"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const-string v1, "VOSubtitleRender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onDraw: enableDraw= "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw:Z

    if-eqz v0, :cond_2

    move v0, v10

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mShow=%d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mShow:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1100(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1116
    :cond_0
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mShow:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1100(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1201
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v7

    .line 1114
    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_1

    .line 1119
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    # setter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$702(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1120
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    # setter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$802(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1121
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1122
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    # setter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$702(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1123
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    # setter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$802(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1126
    :cond_5
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1127
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    if-lez v0, :cond_9

    .line 1128
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1302(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;F)F

    .line 1145
    :goto_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1146
    const-string v0, "VOSubtitleRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onDraw: width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xyRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1147
    const-string v1, "VOSubtitleRender"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " onDraw: xBegin="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", yBegin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", canvas.getHeight()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", vwSurface.getHeight()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v7

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    :cond_6
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v2

    .line 1153
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v9, v7

    move v4, v7

    .line 1164
    :goto_5
    const/4 v0, 0x2

    if-ge v9, v0, :cond_e

    .line 1165
    if-ne v9, v10, :cond_8

    .line 1166
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1169
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->computeBoundBox(Ljava/util/ArrayList;)Z

    .line 1171
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    if-nez v0, :cond_7

    .line 1172
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 1173
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v1

    .line 1174
    if-le v0, v1, :cond_7

    .line 1175
    sub-int v4, v1, v0

    .line 1179
    :cond_7
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawBackground(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;Ljava/util/ArrayList;II)V

    :cond_8
    move v8, v4

    .line 1182
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v7

    .line 1184
    :goto_6
    iget-object v1, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1185
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v11, v11, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1187
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->mBlockWindowRectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    iput-boolean v7, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    .line 1189
    iput v11, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 1191
    iget-object v1, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    .line 1193
    const-string v1, "VOSubtitleRender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+++ drawBlockTextInfo ---------------------------------------------------->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, p0

    move-object v4, p1

    .line 1194
    invoke-direct/range {v3 .. v9}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawBlockTextInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;Landroid/graphics/Rect;III)V

    .line 1195
    const-string v1, "VOSubtitleRender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--- drawBlockTextInfo ----------------------------------------------------<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lineSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1130
    :cond_9
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    const/16 v1, 0x258

    # setter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$702(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1131
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    const/16 v1, 0x5a

    # setter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$802(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    .line 1132
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1302(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;F)F

    goto/16 :goto_3

    .line 1135
    :cond_a
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    if-lez v0, :cond_b

    .line 1136
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1302(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;F)F

    .line 1139
    :cond_b
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getWidth()I

    move-result v0

    .line 1140
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getHeight()I

    move-result v1

    .line 1141
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    .line 1142
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    goto/16 :goto_3

    .line 1147
    :cond_c
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto/16 :goto_4

    .line 1164
    :cond_d
    add-int/lit8 v9, v9, 0x1

    move v4, v8

    goto/16 :goto_5

    .line 1200
    :cond_e
    const-string v0, "VOSubtitleRender"

    const-string v1, "--- doRenderSubtitle ---"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private drawBackground(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;Ljava/util/ArrayList;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1625
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 1626
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    .line 1627
    iget-object v7, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    .line 1631
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1632
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1633
    iget-object v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 1634
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1635
    const/4 v2, 0x0

    .line 1636
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eqz v1, :cond_b

    .line 1637
    iget-object v1, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1638
    const/4 v1, 0x0

    move v4, v1

    move v5, v2

    :goto_1
    iget-object v1, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 1639
    iget-object v1, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;

    .line 1640
    if-eqz v1, :cond_e

    .line 1642
    iget-object v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    .line 1644
    const/4 v2, 0x0

    move v6, v2

    :goto_2
    iget-object v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_e

    .line 1645
    iget-object v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1646
    iget-object v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1647
    iget-object v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1648
    const/4 v5, 0x1

    move v2, v5

    .line 1638
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v2

    goto :goto_1

    .line 1644
    :cond_0
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    :cond_1
    move v5, v2

    .line 1656
    :cond_2
    if-eqz v5, :cond_b

    .line 1657
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    .line 1660
    :cond_3
    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getRowRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 1661
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v2

    .line 1662
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v1, v4, Landroid/graphics/Rect;->right:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v0

    .line 1663
    if-ge v0, v2, :cond_d

    move v1, v2

    .line 1668
    :goto_4
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I
    invoke-static {v0, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v5

    .line 1669
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I
    invoke-static {v0, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v4

    .line 1673
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1674
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1675
    iget v0, v6, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_4

    const/4 v0, 0x0

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1676
    :cond_4
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1677
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1678
    iget v0, v6, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1679
    :cond_5
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1680
    iget v0, v6, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_6

    .line 1681
    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 1682
    :cond_6
    iget v0, v6, Landroid/graphics/Rect;->top:I

    if-le v0, v5, :cond_7

    .line 1683
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1684
    :cond_7
    iget v0, v6, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_8

    .line 1685
    iput v1, v6, Landroid/graphics/Rect;->right:I

    .line 1686
    :cond_8
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v4, :cond_9

    .line 1687
    iput v4, v6, Landroid/graphics/Rect;->bottom:I

    .line 1688
    :cond_9
    if-gez p4, :cond_a

    .line 1689
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1690
    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p4

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1692
    :cond_a
    invoke-direct {p0, p1, v6, v8, p5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V

    .line 1625
    :cond_b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 1698
    :cond_c
    return-void

    :cond_d
    move v1, v0

    goto :goto_4

    :cond_e
    move v2, v5

    goto/16 :goto_3
.end method

.method private drawBlockTextInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;Landroid/graphics/Rect;III)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1218
    iget-object v8, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    .line 1220
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    .line 1221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v8, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawPicture(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;Landroid/graphics/Rect;)V

    .line 1228
    :goto_0
    iget-object v0, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1237
    :cond_0
    return-void

    .line 1223
    :cond_1
    invoke-direct {p0, p1, v8, p3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawPicture(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    move v6, v7

    .line 1232
    :goto_1
    iget-object v0, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1233
    iget-object v0, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;

    .line 1234
    const-string v0, "VOSubtitleRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ">> drawLineTextRowInfo -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p5

    move v5, p6

    .line 1235
    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawLineTextRowInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/graphics/Rect;II)V

    .line 1232
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1
.end method

.method private drawLineTextRowInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/graphics/Rect;II)V
    .locals 12

    .prologue
    .line 1241
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    iget-object v1, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v4, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    .line 1246
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I
    invoke-static {v1, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v3

    .line 1247
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I
    invoke-static {v1, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v1

    .line 1248
    if-ge v1, v3, :cond_b

    move v2, v3

    .line 1253
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I
    invoke-static {v1, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v1

    .line 1254
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I
    invoke-static {v5, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v4

    .line 1255
    if-gez p4, :cond_a

    .line 1256
    add-int v1, v1, p4

    .line 1257
    add-int v4, v4, p4

    move v11, v1

    move v1, v4

    move v4, v11

    .line 1273
    :goto_2
    sub-int/2addr v1, v4

    .line 1275
    invoke-direct {p0, p2, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getFontMaxSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;I)I

    move-result v5

    .line 1276
    iget v6, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    if-le v5, v6, :cond_2

    .line 1277
    iput v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    .line 1279
    :cond_2
    if-lez v5, :cond_3

    .line 1280
    int-to-float v1, v5

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 1283
    :cond_3
    add-int v7, v4, v1

    .line 1286
    const/4 v5, 0x0

    .line 1289
    const/4 v1, 0x0

    move v6, v5

    move v5, v1

    :goto_3
    iget-object v1, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 1290
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1291
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1292
    iget-object v1, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    .line 1294
    iget-object v9, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    .line 1295
    const/4 v10, 0x0

    invoke-direct {p0, p2, v1, v8, v10}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->setTextViewByTextInfo(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;Landroid/graphics/Paint;Landroid/graphics/Paint;)I

    .line 1296
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1297
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v6, v1

    .line 1289
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    .line 1300
    :cond_4
    invoke-direct {p0, p2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getHorizontalAlignment(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;)I

    move-result v1

    .line 1303
    sget-object v5, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v5}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v5

    if-eq v1, v5, :cond_5

    sget-object v5, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v5}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v5

    if-ne v1, v5, :cond_9

    .line 1306
    :cond_5
    sget-object v5, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v5}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v5

    if-ne v1, v5, :cond_6

    .line 1307
    sub-int v3, v2, v6

    .line 1309
    :cond_6
    sget-object v5, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v5}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v5

    if-ne v1, v5, :cond_7

    .line 1310
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v3

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    .line 1312
    :cond_7
    const/4 v5, 0x2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    .line 1316
    :goto_4
    new-instance v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;

    invoke-direct {v9, p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;-><init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;)V

    .line 1317
    const/4 v5, -0x1

    iput v5, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nTopOld:I

    .line 1318
    const/4 v5, -0x1

    iput v5, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    .line 1319
    iput v2, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectRight:I

    .line 1320
    iput v3, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    .line 1321
    iput v7, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    .line 1322
    iput v4, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    .line 1323
    iput v1, v9, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->alignmentH:I

    .line 1325
    const/4 v7, 0x0

    :goto_5
    iget-object v1, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_8

    .line 1327
    const-string v1, "VOSubtitleRender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "> drawSegmentTextInfo -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1328
    iget v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->maxFontSize:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawSegmentTextInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/graphics/Rect;IIIILcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;)Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;

    move-result-object v9

    .line 1325
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1332
    :cond_8
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 1333
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    goto/16 :goto_0

    :cond_9
    move v8, v3

    goto :goto_4

    :cond_a
    move v11, v1

    move v1, v4

    move v4, v11

    goto/16 :goto_2

    :cond_b
    move v2, v1

    goto/16 :goto_1
.end method

.method private drawPicture(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 928
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 1001
    :cond_0
    return-void

    .line 931
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 932
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;

    .line 933
    if-eqz v0, :cond_7

    .line 935
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 938
    const/4 v2, -0x1

    .line 939
    const/4 v3, -0x1

    .line 940
    const/4 v4, -0x1

    .line 941
    const/4 v5, -0x1

    .line 942
    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    if-eqz v6, :cond_b

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-lez v6, :cond_b

    .line 945
    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    .line 947
    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getRowRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 948
    iget-object v7, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v7, v7, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v7, v7, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ltz v7, :cond_b

    .line 949
    iget v7, v6, Landroid/graphics/Rect;->left:I

    if-ltz v7, :cond_2

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I
    invoke-static {v2, v7}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v2

    .line 950
    :cond_2
    iget v7, v6, Landroid/graphics/Rect;->right:I

    if-ltz v7, :cond_3

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I
    invoke-static {v3, v7}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v3

    .line 951
    :cond_3
    iget v7, v6, Landroid/graphics/Rect;->top:I

    if-ltz v7, :cond_4

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I
    invoke-static {v4, v7}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v4

    .line 952
    :cond_4
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    if-ltz v7, :cond_b

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I
    invoke-static {v5, v6}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v5

    move v10, v5

    move v5, v2

    move v2, v10

    .line 956
    :goto_1
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 957
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 958
    if-lez v6, :cond_7

    if-lez v7, :cond_7

    .line 961
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 962
    if-gtz v5, :cond_8

    if-gtz v3, :cond_8

    .line 963
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v7, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 964
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 966
    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v4

    if-lt v4, v7, :cond_5

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v4

    if-ge v4, v6, :cond_6

    .line 967
    :cond_5
    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->StretchToMax(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    invoke-static {v2, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$900(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 968
    :cond_6
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v8, Landroid/graphics/Rect;->top:I

    .line 969
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 970
    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    .line 971
    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 985
    :goto_2
    if-nez p3, :cond_a

    .line 986
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 987
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 988
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 989
    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    iget v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 990
    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    iget v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v8, Landroid/graphics/Rect;->right:I

    .line 991
    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    iget v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v8, Landroid/graphics/Rect;->top:I

    .line 992
    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    iget v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    .line 994
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 931
    :cond_7
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 972
    :cond_8
    const/4 v9, -0x1

    if-ne v3, v9, :cond_9

    .line 974
    iput v4, v8, Landroid/graphics/Rect;->top:I

    .line 975
    iput v5, v8, Landroid/graphics/Rect;->left:I

    .line 976
    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v6

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 977
    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v7

    iput v2, v8, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 979
    :cond_9
    iput v4, v8, Landroid/graphics/Rect;->top:I

    .line 980
    iput v5, v8, Landroid/graphics/Rect;->left:I

    .line 981
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 982
    iput v3, v8, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 996
    :cond_a
    invoke-direct {p0, p3, v8}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->CheckRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_b
    move v10, v5

    move v5, v2

    move v2, v10

    goto/16 :goto_1
.end method

.method private drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V
    .locals 4

    .prologue
    .line 1009
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1010
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1011
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1012
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1013
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1014
    const-string v1, "VOSubtitleRender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "drawRect: y1="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",y2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",x1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",x2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1017
    return-void
.end method

.method private drawSegmentTextInfo(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/graphics/Rect;IIIILcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;)Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;
    .locals 29

    .prologue
    .line 1372
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1373
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1374
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 1375
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1376
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    if-nez v5, :cond_25

    .line 1377
    const/4 v4, 0x0

    move-object/from16 v17, v4

    .line 1380
    :goto_0
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1381
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1384
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    .line 1387
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget v0, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->edgeType:I

    move/from16 v24, v0

    .line 1389
    const/4 v4, 0x1

    move/from16 v0, v24

    if-eq v0, v4, :cond_5

    const/4 v4, 0x2

    move/from16 v0, v24

    if-eq v0, v4, :cond_5

    .line 1391
    const/4 v9, 0x0

    .line 1399
    :goto_1
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    .line 1400
    const-string v4, "VOSubtitleRender"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/> Ready to draw segment.text: __"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "__"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->printDirection:I

    const/4 v6, 0x1

    if-le v4, v6, :cond_6

    const/4 v4, 0x1

    .line 1402
    :goto_2
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->printDirection:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->printDirection:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_24

    .line 1403
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->reverseString(Ljava/lang/CharSequence;)Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    .line 1406
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15, v9}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->setTextViewByTextInfo(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;Landroid/graphics/Paint;Landroid/graphics/Paint;)I

    move-result v25

    .line 1407
    if-eqz v9, :cond_1

    .line 1408
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1409
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1410
    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1412
    :cond_1
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1413
    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    .line 1415
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 1416
    if-eqz v4, :cond_9

    .line 1417
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    .line 1425
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    add-int/lit8 v4, v4, -0x3

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1426
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectRight:I

    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    sub-int v20, v4, v5

    .line 1427
    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 1429
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1430
    const-string v5, ""

    .line 1431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1432
    if-eqz v17, :cond_2

    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_2

    .line 1433
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    mul-int v5, v20, v16

    add-int/2addr v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1434
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    add-int/lit8 v5, v16, 0x1

    mul-int v5, v5, v20

    add-int/2addr v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1435
    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1437
    div-int/lit8 v4, p4, 0x2

    add-int/lit8 v4, v4, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V

    .line 1440
    :cond_2
    if-eqz v9, :cond_3

    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_3

    .line 1441
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v7, v4

    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    add-int/lit8 v5, v16, 0x1

    mul-int v5, v5, v20

    add-int/2addr v4, v5

    div-int/lit8 v5, v20, 0x4

    sub-int/2addr v4, v5

    int-to-float v8, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1442
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_4

    .line 1443
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v13, v4

    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    add-int/lit8 v5, v16, 0x1

    mul-int v5, v5, v20

    add-int/2addr v4, v5

    div-int/lit8 v5, v20, 0x4

    sub-int/2addr v4, v5

    int-to-float v14, v4

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v6

    invoke-direct/range {v10 .. v15}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1427
    :cond_4
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1393
    :cond_5
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 1394
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1395
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_1

    .line 1401
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1445
    :cond_7
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    mul-int v5, v20, v19

    add-int/2addr v4, v5

    move-object/from16 v0, p8

    iput v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    .line 1620
    :cond_8
    return-object p8

    .line 1450
    :cond_9
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v4, v6

    move/from16 v0, v25

    if-ge v0, v4, :cond_23

    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v4, v6

    sub-int v4, v4, v25

    if-lez v4, :cond_23

    .line 1452
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v4, v6

    sub-int v4, v4, v25

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    move/from16 v19, v4

    .line 1456
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->reConcatenateWithoutNewLine(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v27

    .line 1458
    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    .line 1462
    const/4 v4, 0x0

    move/from16 v18, v4

    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_8

    .line 1463
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1466
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1f

    .line 1472
    const/4 v6, 0x0

    move v7, v5

    move-object v5, v4

    move v4, v6

    .line 1473
    :goto_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1e

    .line 1475
    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    .line 1477
    add-int v8, v6, v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v10

    if-le v8, v10, :cond_13

    const/4 v8, 0x1

    .line 1478
    :goto_8
    if-eqz v4, :cond_22

    .line 1479
    const/4 v4, 0x0

    .line 1481
    :goto_9
    if-eqz v4, :cond_16

    .line 1482
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v6}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v6

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v8, 0x0

    invoke-virtual {v15, v5, v4, v6, v8}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v10

    .line 1483
    if-ltz v10, :cond_15

    .line 1484
    const/4 v4, 0x0

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1485
    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 1486
    const/4 v8, -0x1

    if-ne v4, v8, :cond_21

    .line 1487
    const-string v4, "\t"

    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move v8, v4

    .line 1489
    :goto_a
    if-lez v8, :cond_14

    sub-int v4, v10, v8

    const/16 v11, 0xa

    if-ge v4, v11, :cond_14

    .line 1490
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1491
    const/4 v5, 0x0

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1494
    :goto_b
    const/4 v6, 0x1

    move/from16 v28, v6

    move-object v6, v5

    move-object v5, v4

    move/from16 v4, v28

    .line 1500
    :goto_c
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    move/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v8

    .line 1508
    :goto_d
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->alignmentH:I

    sget-object v5, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v5}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_17

    .line 1511
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectRight:I

    sub-int v7, v4, v23

    .line 1512
    const/4 v4, 0x2

    if-ge v7, v4, :cond_20

    .line 1513
    const/4 v7, 0x2

    move/from16 v22, v7

    .line 1524
    :goto_e
    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1526
    if-eqz p6, :cond_a

    move/from16 v0, p7

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 1527
    :cond_a
    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, -0x5

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1531
    :cond_b
    const-string v5, "VOSubtitleRender"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "Subtitle = "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v4, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1532
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v7, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v5, v7

    mul-int v5, v5, v18

    add-int/2addr v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1533
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v7, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v5, v7

    add-int/lit8 v7, v18, 0x1

    mul-int/2addr v5, v7

    add-int/2addr v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1534
    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v23

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1535
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nTopOld:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nTopOld:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    .line 1536
    :cond_c
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    if-ltz v4, :cond_d

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    if-ge v4, v5, :cond_d

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    if-lt v4, v5, :cond_d

    .line 1537
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1539
    :cond_d
    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p8

    iput v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    .line 1544
    :goto_f
    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p8

    iput v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nTopOld:I

    .line 1546
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_e

    if-eqz v17, :cond_e

    .line 1547
    div-int/lit8 v4, p4, 0x2

    add-int/lit8 v4, v4, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V

    .line 1551
    :cond_e
    if-eqz v9, :cond_f

    .line 1554
    const/4 v4, 0x3

    move/from16 v0, v24

    if-le v0, v4, :cond_19

    .line 1555
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_f

    .line 1556
    move/from16 v0, v22

    int-to-float v7, v0

    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v8, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v5, v8

    add-int/lit8 v8, v18, 0x1

    mul-int/2addr v5, v8

    add-int/2addr v4, v5

    sub-int v4, v4, v19

    add-int/lit8 v4, v4, 0x0

    int-to-float v8, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1580
    :cond_f
    :goto_10
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_11

    .line 1581
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ne v0, v4, :cond_10

    .line 1582
    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    .line 1583
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1584
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1585
    move/from16 v0, v22

    int-to-float v13, v0

    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    move-object/from16 v0, p8

    iget v7, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v8, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v7, v8

    add-int/lit8 v8, v18, 0x1

    mul-int/2addr v7, v8

    add-int/2addr v5, v7

    sub-int v5, v5, v19

    int-to-float v14, v5

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v6

    invoke-direct/range {v10 .. v15}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1586
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1587
    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1589
    :cond_10
    move/from16 v0, v22

    int-to-float v13, v0

    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v7, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v5, v7

    add-int/lit8 v7, v18, 0x1

    mul-int/2addr v5, v7

    add-int/2addr v4, v5

    sub-int v4, v4, v19

    int-to-float v14, v4

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v6

    invoke-direct/range {v10 .. v15}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1591
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->CheckRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1593
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_12

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 1594
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    add-int v4, v4, v23

    move-object/from16 v0, p8

    iput v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    .line 1597
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isItalic:Z

    if-eqz v4, :cond_12

    .line 1598
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    div-int/lit8 v5, v25, 0x3

    add-int/2addr v4, v5

    move-object/from16 v0, p8

    iput v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    .line 1602
    :cond_12
    if-eqz v20, :cond_1d

    .line 1603
    move/from16 v0, p7

    move-object/from16 v1, p8

    iput v0, v1, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->rWinRectLeft:I

    .line 1605
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v4, v5

    .line 1606
    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p8

    iput v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    .line 1607
    move-object/from16 v0, p8

    iget v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    add-int/2addr v4, v5

    move-object/from16 v0, p8

    iput v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    .line 1608
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 1609
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    move/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v7, p7

    .line 1610
    goto/16 :goto_7

    .line 1477
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 1493
    :cond_14
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v6

    goto/16 :goto_b

    .line 1497
    :cond_15
    const-string v6, ""

    .line 1498
    const/4 v4, 0x0

    move-object/from16 v28, v6

    move-object v6, v5

    move-object/from16 v5, v28

    goto/16 :goto_c

    .line 1504
    :cond_16
    const-string v21, ""

    .line 1505
    const/16 v20, 0x0

    move/from16 v23, v6

    move-object v6, v5

    goto/16 :goto_d

    .line 1515
    :cond_17
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->alignmentH:I

    sget-object v5, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v5}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_20

    .line 1518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I

    move-result v4

    sub-int v4, v4, v23

    div-int/lit8 v7, v4, 0x2

    .line 1519
    const/4 v4, 0x2

    if-ge v7, v4, :cond_20

    .line 1520
    const/4 v7, 0x2

    move/from16 v22, v7

    goto/16 :goto_e

    .line 1541
    :cond_18
    const/4 v4, -0x1

    move-object/from16 v0, p8

    iput v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->nRightOld:I

    goto/16 :goto_f

    .line 1560
    :cond_19
    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 1561
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1563
    move-object/from16 v0, p8

    iget v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v7, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x1e

    .line 1564
    const/4 v7, 0x2

    if-ge v4, v7, :cond_1a

    .line 1565
    const/4 v4, 0x2

    .line 1568
    :cond_1a
    const/4 v7, 0x2

    move/from16 v0, v24

    if-ne v0, v7, :cond_1c

    const/4 v7, 0x1

    move/from16 v0, p5

    if-ne v0, v7, :cond_1c

    .line 1569
    add-int v7, v22, v4

    int-to-float v13, v7

    move-object/from16 v0, p8

    iget v7, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    move-object/from16 v0, p8

    iget v8, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v10, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v8, v10

    add-int/lit8 v10, v18, 0x1

    mul-int/2addr v8, v10

    add-int/2addr v7, v8

    sub-int v7, v7, v19

    add-int/2addr v4, v7

    int-to-float v14, v4

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v6

    invoke-direct/range {v10 .. v15}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1575
    :cond_1b
    :goto_11
    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_10

    .line 1571
    :cond_1c
    const/4 v7, 0x1

    move/from16 v0, v24

    if-ne v0, v7, :cond_1b

    const/4 v7, 0x1

    move/from16 v0, p5

    if-ne v0, v7, :cond_1b

    .line 1572
    sub-int v7, v22, v4

    int-to-float v13, v7

    move-object/from16 v0, p8

    iget v7, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    move-object/from16 v0, p8

    iget v8, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectBottom:I

    move-object/from16 v0, p8

    iget v10, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView$DrawingLineInfo;->winRectTop:I

    sub-int/2addr v8, v10

    add-int/lit8 v10, v18, 0x1

    mul-int/2addr v8, v10

    add-int/2addr v7, v8

    sub-int v7, v7, v19

    sub-int v4, v7, v4

    int-to-float v14, v4

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v6

    invoke-direct/range {v10 .. v15}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_11

    .line 1611
    :cond_1d
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->nOldBottom:I

    .line 1612
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->oldBottomSet:Z

    move/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v7, v22

    .line 1616
    goto/16 :goto_7

    :cond_1e
    move v5, v7

    .line 1462
    :cond_1f
    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    goto/16 :goto_6

    :cond_20
    move/from16 v22, v7

    goto/16 :goto_e

    :cond_21
    move v8, v4

    goto/16 :goto_a

    :cond_22
    move v4, v8

    goto/16 :goto_9

    :cond_23
    move/from16 v19, v5

    goto/16 :goto_5

    :cond_24
    move-object/from16 v18, v5

    goto/16 :goto_3

    :cond_25
    move-object/from16 v17, v4

    goto/16 :goto_0
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 4

    .prologue
    .line 1004
    const-string v0, "VOSubtitleRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawText = >["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]< ; x1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    int-to-float v2, v2

    add-float/2addr v2, p3

    iget v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    int-to-float v2, v2

    add-float/2addr v2, p4

    iget v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBegin:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->xBeginBoundBox:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBegin:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    iget v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->yBeginBoundBox:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1006
    return-void
.end method

.method private getFontMaxSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1025
    move v1, v0

    move v2, v0

    .line 1026
    :goto_0
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1027
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    .line 1028
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->getFontSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F
    invoke-static {v3, v0, p2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F

    move-result v0

    int-to-float v3, p2

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 1029
    if-le v0, v2, :cond_0

    move v2, v0

    .line 1026
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1032
    :cond_1
    if-lez v2, :cond_4

    if-ge v2, p2, :cond_4

    .line 1033
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    if-ge v2, v0, :cond_2

    .line 1034
    mul-int/lit8 v0, v2, 0x4

    div-int/lit8 v2, v0, 0x3

    move v0, v2

    .line 1039
    :goto_1
    if-gtz v0, :cond_3

    .line 1042
    :goto_2
    return p2

    :cond_2
    move v0, p2

    .line 1036
    goto :goto_1

    :cond_3
    move p2, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private getHorizontalAlignment(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;)I
    .locals 2

    .prologue
    .line 1046
    const/4 v0, 0x0

    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->horizontalAlignment:I

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    # getter for: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$1000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1053
    :cond_1
    return v0
.end method

.method private getRowRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1020
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1021
    return-object v0
.end method

.method private reConcatenateWithoutNewLine(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1347
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1349
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_4

    .line 1350
    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_1

    .line 1351
    aget-object v0, v3, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1352
    :cond_1
    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1353
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1354
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1355
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-ge v4, v5, :cond_2

    .line 1356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1357
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1359
    :cond_2
    aget-object v0, v3, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1361
    :cond_3
    aget-object v0, v3, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1366
    :cond_4
    return-object v2
.end method

.method private setTextViewByTextInfo(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;Landroid/graphics/Paint;Landroid/graphics/Paint;)I
    .locals 9

    .prologue
    const/high16 v6, -0x41000000    # -0.5f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 830
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontColor:I

    .line 831
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 833
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isItalic:Z

    if-eqz v0, :cond_11

    move v0, v1

    .line 836
    :goto_0
    iget-object v3, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isBold:Z

    if-eqz v3, :cond_0

    .line 837
    or-int/lit8 v0, v0, 0x1

    .line 840
    :cond_0
    iget-object v3, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontStyle:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fromID(I)Landroid/graphics/Typeface;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$200(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 842
    if-eq v0, v4, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 843
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_2

    .line 844
    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 847
    :cond_2
    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 849
    if-eqz p4, :cond_3

    .line 850
    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 851
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 852
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 853
    invoke-virtual {p4, v6}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 857
    :cond_3
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->printDirection:I

    if-le v0, v4, :cond_8

    move v0, v4

    .line 861
    :goto_3
    iget-object v3, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getRowRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    .line 862
    if-eqz v0, :cond_9

    .line 863
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I
    invoke-static {v0, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v0

    .line 864
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I
    invoke-static {v5, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v3

    .line 865
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    sub-int v6, v3, v0

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->getFontSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F
    invoke-static {v5, p2, v6}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F

    move-result v5

    .line 866
    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 867
    const-string v3, "VOSubtitleRender"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setTextSize: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 869
    if-eqz p4, :cond_4

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 882
    :cond_4
    :goto_4
    float-to-int v3, v0

    .line 885
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->hasUnderline:Z

    if-eqz v0, :cond_a

    .line 886
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 891
    :goto_5
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->edgeType:I

    .line 892
    if-eqz v2, :cond_5

    .line 893
    iget-object v0, p2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget v5, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    .line 895
    const/4 v0, 0x3

    if-ne v2, v0, :cond_b

    .line 896
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 897
    div-int/lit8 v0, v3, 0x9

    .line 898
    if-ge v0, v1, :cond_10

    .line 901
    :goto_6
    int-to-float v0, v1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 924
    :cond_5
    :goto_7
    return v3

    :cond_6
    move v3, v2

    .line 842
    goto/16 :goto_1

    :cond_7
    move v3, v2

    .line 851
    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 857
    goto :goto_3

    .line 871
    :cond_9
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I
    invoke-static {v0, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v0

    .line 872
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I
    invoke-static {v5, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I

    move-result v3

    .line 873
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    sub-int v6, v3, v0

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->getFontSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F
    invoke-static {v5, p2, v6}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F

    move-result v5

    .line 874
    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 875
    const-string v3, "VOSubtitleRender"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setTextSize: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 877
    if-eqz p4, :cond_4

    .line 878
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_4

    .line 889
    :cond_a
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    goto :goto_5

    .line 904
    :cond_b
    const v0, 0x3fe66666    # 1.8f

    .line 905
    int-to-float v6, v3

    const/high16 v7, 0x41100000    # 9.0f

    div-float/2addr v6, v7

    const v7, 0x3fe66666    # 1.8f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    .line 906
    int-to-float v0, v3

    const/high16 v6, 0x41100000    # 9.0f

    div-float/2addr v0, v6

    .line 908
    :cond_c
    if-eq v2, v1, :cond_d

    if-ne v2, v4, :cond_e

    .line 910
    :cond_d
    if-eqz p4, :cond_e

    .line 911
    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 916
    :cond_e
    const/4 v1, 0x4

    if-ne v2, v1, :cond_f

    .line 917
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p3, v0, v1, v8, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 919
    :cond_f
    const/4 v1, 0x5

    if-ne v2, v1, :cond_5

    .line 920
    invoke-virtual {p3, v0, v8, v8, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_7

    :cond_10
    move v1, v0

    goto :goto_6

    :cond_11
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public enableDraw(Z)V
    .locals 1

    .prologue
    .line 814
    iput-boolean p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw:Z

    .line 816
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->setVisibility(I)V

    .line 817
    return-void

    .line 816
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 1206
    if-nez p1, :cond_0

    .line 1207
    const-string v0, "VOSubtitleRender"

    const-string v1, "canvas can not be null onDraw!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1210
    :cond_0
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->doRenderSubtitle(Landroid/graphics/Canvas;)V

    .line 1211
    return-void
.end method
