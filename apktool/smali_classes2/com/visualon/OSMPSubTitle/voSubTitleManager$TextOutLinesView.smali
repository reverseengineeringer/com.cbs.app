.class Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextOutLinesView"
.end annotation


# instance fields
.field private enableDraw:Z

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

.field private xBegin:I

.field private xBeginBoundBox:I

.field private yBegin:I

.field private yBeginBoundBox:I


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2368
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    .line 2369
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->enableDraw:Z

    .line 2352
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBegin:I

    .line 2353
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBegin:I

    .line 2354
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBeginBoundBox:I

    .line 2355
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    .line 2370
    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2364
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    .line 2365
    invoke-direct {p0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->enableDraw:Z

    .line 2352
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBegin:I

    .line 2353
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBegin:I

    .line 2354
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBeginBoundBox:I

    .line 2355
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    .line 2366
    return-void
.end method

.method private CheckRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2820
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, v2, :cond_4

    .line 2821
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2825
    :cond_0
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v2, :cond_5

    .line 2826
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2830
    :cond_1
    :goto_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v2, :cond_6

    .line 2831
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2835
    :cond_2
    :goto_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_7

    .line 2836
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2841
    :cond_3
    :goto_3
    return-void

    .line 2822
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    .line 2823
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 2827
    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1

    .line 2828
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 2832
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_2

    .line 2833
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 2837
    :cond_7
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_3

    .line 2838
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3
.end method

.method private computeBoundBox(Ljava/util/ArrayList;)Z
    .locals 8
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
    const/16 v5, 0x64

    const/4 v7, 0x0

    .line 2746
    iput v7, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBeginBoundBox:I

    .line 2747
    iput v7, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    .line 2748
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2815
    :cond_0
    :goto_0
    return v7

    .line 2752
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v0, :cond_0

    .line 2753
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->horizontal:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->vertical:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2756
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2757
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 2758
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 2759
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_3

    .line 2760
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2761
    :cond_3
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_4

    .line 2762
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2763
    :cond_4
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_5

    .line 2764
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2765
    :cond_5
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_6

    .line 2766
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 2757
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2768
    :cond_7
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 2769
    :goto_2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I
    invoke-static {v3, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v3

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v6, v0, Landroid/graphics/Rect;->right:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I
    invoke-static {v5, v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v5

    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I
    invoke-static {v6, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v0

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2770
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 2793
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->vertical:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 2795
    :pswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2799
    :pswitch_1
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    goto/16 :goto_0

    .line 2768
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v7, v7, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    .line 2804
    :pswitch_2
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    goto/16 :goto_0

    .line 2809
    :pswitch_3
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    goto/16 :goto_0

    .line 2793
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawBackground(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;Ljava/util/ArrayList;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3303
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    .line 3304
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    .line 3305
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v7

    .line 3309
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 3310
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3311
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$12300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v1

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I

    move-result v1

    .line 3312
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v2, :cond_0

    .line 3313
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColor:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$12400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorEnable:Z
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$12500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v5

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->converColor(IIZ)I
    invoke-static {v2, v1, v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;IIZ)I

    move-result v1

    .line 3314
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorOpacityRate:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$12600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->windowBackgroundColorOpacityRateEnable:Z
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$12700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v5

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->converColorOpacityRate(IIZ)I
    invoke-static {v2, v1, v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;IIZ)I

    move-result v1

    .line 3316
    :cond_0
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3317
    const/4 v2, 0x0

    .line 3318
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eqz v1, :cond_c

    .line 3319
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3320
    const/4 v1, 0x0

    move v4, v1

    move v5, v2

    :goto_1
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 3321
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;

    .line 3322
    if-eqz v1, :cond_f

    .line 3324
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 3326
    const/4 v2, 0x0

    move v6, v2

    :goto_2
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_f

    .line 3327
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3328
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$3100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3329
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$3100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 3330
    const/4 v5, 0x1

    move v2, v5

    .line 3320
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v2

    goto :goto_1

    .line 3326
    :cond_1
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    :cond_2
    move v5, v2

    .line 3338
    :cond_3
    if-eqz v5, :cond_c

    .line 3339
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    .line 3342
    :cond_4
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$12300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getRowRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 3343
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v2

    .line 3344
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v1, v4, Landroid/graphics/Rect;->right:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v0

    .line 3345
    if-ge v0, v2, :cond_e

    move v1, v2

    .line 3350
    :goto_4
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I
    invoke-static {v0, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v5

    .line 3351
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I
    invoke-static {v0, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v4

    .line 3355
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3356
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3357
    iget v0, v6, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3358
    :cond_5
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3359
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3360
    iget v0, v6, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3361
    :cond_6
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3362
    iget v0, v6, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_7

    .line 3363
    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 3364
    :cond_7
    iget v0, v6, Landroid/graphics/Rect;->top:I

    if-le v0, v5, :cond_8

    .line 3365
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 3366
    :cond_8
    iget v0, v6, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_9

    .line 3367
    iput v1, v6, Landroid/graphics/Rect;->right:I

    .line 3368
    :cond_9
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v4, :cond_a

    .line 3369
    iput v4, v6, Landroid/graphics/Rect;->bottom:I

    .line 3370
    :cond_a
    if-gez p4, :cond_b

    .line 3371
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3372
    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p4

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3374
    :cond_b
    invoke-direct {p0, p1, v6, v8, p5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V

    .line 3303
    :cond_c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 3380
    :cond_d
    return-void

    :cond_e
    move v1, v0

    goto :goto_4

    :cond_f
    move v2, v5

    goto/16 :goto_3
.end method

.method private drawPicture(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 2523
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$3300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->metadata_Arrive:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 2611
    :cond_0
    return-void

    .line 2526
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$3300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2527
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$3300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;

    .line 2528
    if-eqz v0, :cond_6

    .line 2530
    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$10700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2533
    const/4 v3, -0x1

    .line 2534
    const/4 v4, -0x1

    .line 2535
    const/4 v5, -0x1

    .line 2536
    const/4 v6, -0x1

    .line 2537
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v2

    if-eqz v2, :cond_e

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_e

    .line 2539
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 2543
    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-ltz v7, :cond_2

    .line 2544
    iget-object v7, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v7, v7, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v7, v7, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeEnable:Z
    invoke-static {v7}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$4400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2545
    iget-object v7, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v7, v7, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeMedium:F
    invoke-static {v7}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$4500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)F

    move-result v7

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->scaleRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    invoke-static {v2, v7}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10800(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    .line 2549
    :cond_2
    const/4 v7, 0x1

    invoke-direct {p0, v2, v7}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getRowRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 2550
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$3700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v2

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ltz v2, :cond_e

    .line 2551
    iget v2, v7, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_d

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v3, v7, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I
    invoke-static {v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v2

    .line 2552
    :goto_1
    iget v3, v7, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_c

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v4, v7, Landroid/graphics/Rect;->right:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I
    invoke-static {v3, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v3

    .line 2553
    :goto_2
    iget v4, v7, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_b

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v5, v7, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v4

    .line 2554
    :goto_3
    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    if-ltz v5, :cond_a

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I
    invoke-static {v5, v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v5

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v10

    .line 2562
    :goto_4
    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$10700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 2563
    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$10700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2564
    if-lez v7, :cond_6

    if-lez v6, :cond_6

    .line 2566
    iget-object v8, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeEnable:Z
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$4400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2567
    int-to-float v7, v7

    iget-object v8, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeMedium:F
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$4500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 2568
    int-to-float v6, v6

    iget-object v8, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontSizeMedium:F
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$4500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    .line 2571
    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2572
    if-gtz v3, :cond_7

    if-gtz v4, :cond_7

    .line 2573
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 2574
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 2576
    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v4

    if-lt v4, v6, :cond_4

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v4

    if-ge v4, v7, :cond_5

    .line 2577
    :cond_4
    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->StretchToMax(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    invoke-static {v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10900(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 2578
    :cond_5
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v8, Landroid/graphics/Rect;->top:I

    .line 2579
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 2580
    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    .line 2581
    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 2595
    :goto_5
    if-nez p3, :cond_9

    .line 2596
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2597
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2598
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2599
    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBegin:I

    iget v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 2600
    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBegin:I

    iget v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v8, Landroid/graphics/Rect;->right:I

    .line 2601
    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBegin:I

    iget v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v8, Landroid/graphics/Rect;->top:I

    .line 2602
    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBegin:I

    iget v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    .line 2604
    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->access$10700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2526
    :cond_6
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 2582
    :cond_7
    const/4 v9, -0x1

    if-ne v4, v9, :cond_8

    .line 2584
    iput v5, v8, Landroid/graphics/Rect;->top:I

    .line 2585
    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 2586
    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v7

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 2587
    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v8, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 2589
    :cond_8
    iput v5, v8, Landroid/graphics/Rect;->top:I

    .line 2590
    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 2591
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 2592
    iput v4, v8, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 2606
    :cond_9
    invoke-direct {p0, p3, v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->CheckRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_a
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v6

    goto/16 :goto_4

    :cond_b
    move v4, v5

    goto/16 :goto_3

    :cond_c
    move v3, v4

    goto/16 :goto_2

    :cond_d
    move v2, v3

    goto/16 :goto_1

    :cond_e
    move v2, v6

    goto/16 :goto_4
.end method

.method private drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V
    .locals 3

    .prologue
    .line 2618
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2619
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBegin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2620
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBegin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBeginBoundBox:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2621
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBegin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2622
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBegin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2623
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2624
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 2614
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBegin:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBeginBoundBox:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBegin:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    iget v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2615
    return-void
.end method

.method private getAlignment(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2727
    .line 2728
    if-eqz p1, :cond_3

    .line 2729
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->horizontalJustification:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)I

    move-result v0

    .line 2731
    :goto_0
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2741
    :cond_0
    :goto_1
    return v0

    .line 2734
    :cond_1
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->horizontal:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2735
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->horizontal:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v0

    .line 2736
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->horizontal:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    move v0, v2

    .line 2738
    :cond_2
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->horizontal:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v0, v1

    .line 2739
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private getEdgeColor(I)I
    .locals 4

    .prologue
    .line 2389
    .line 2390
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v0, :cond_0

    .line 2391
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColor:I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorEnable:Z
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v2

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->converColor(IIZ)I
    invoke-static {v0, p1, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;IIZ)I

    move-result v0

    .line 2393
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorOpacityRate:I
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v2

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeColorOpacityRateEnable:Z
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v3

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->converColorOpacityRate(IIZ)I
    invoke-static {v1, v0, v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;IIZ)I

    move-result p1

    .line 2396
    :cond_0
    return p1
.end method

.method private getEdgeType(I)I
    .locals 1

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeTypeEnable:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->edgeType:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result p1

    .line 2385
    :cond_0
    return p1
.end method

.method private getFontMaxSize(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2707
    move v1, v0

    move v2, v0

    .line 2708
    :goto_0
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2709
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;

    .line 2710
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->getFontSize(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;I)F
    invoke-static {v3, v0, p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10000(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;I)F

    move-result v0

    int-to-float v3, p2

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 2711
    if-le v0, v2, :cond_0

    move v2, v0

    .line 2708
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2714
    :cond_1
    if-lez v2, :cond_4

    if-ge v2, p2, :cond_4

    .line 2715
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    if-ge v2, v0, :cond_2

    .line 2716
    mul-int/lit8 v0, v2, 0x4

    div-int/lit8 v2, v0, 0x3

    move v0, v2

    .line 2720
    :goto_1
    if-gtz v0, :cond_3

    .line 2722
    :goto_2
    return p2

    :cond_2
    move v0, p2

    .line 2718
    goto :goto_1

    :cond_3
    move p2, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private getItalic(I)I
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontItalicEnable:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$7800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontItalic:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$7900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result p1

    .line 2377
    :cond_0
    return p1
.end method

.method private getRowRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 2627
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2628
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 2702
    :goto_0
    return-object v0

    .line 2631
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->horizontal:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->vertical:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 2632
    goto :goto_0

    .line 2634
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2635
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2636
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2637
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2638
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2639
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2640
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 2642
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2643
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 2644
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->horizontal:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_1
    move-object v0, v1

    .line 2702
    goto :goto_0

    .line 2646
    :pswitch_0
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->rectList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2650
    :pswitch_1
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2651
    if-eqz p2, :cond_4

    .line 2652
    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 2658
    :pswitch_2
    if-eqz p2, :cond_4

    .line 2659
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2660
    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 2666
    :pswitch_3
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2667
    if-eqz p2, :cond_4

    .line 2668
    iget v0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 2644
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setTextViewTextInfo(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;Landroid/graphics/Paint;Landroid/graphics/Paint;)I
    .locals 9

    .prologue
    const/high16 v7, -0x41000000    # -0.5f

    const/4 v4, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2401
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontColor:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->access$2400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;)I

    move-result v0

    .line 2402
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v3, :cond_0

    .line 2403
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColor:I
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v5

    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorEnable:Z
    invoke-static {v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v6

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->converColor(IIZ)I
    invoke-static {v3, v0, v5, v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;IIZ)I

    move-result v0

    .line 2404
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorOpacityRate:I
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v5

    iget-object v6, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontColorOpacityRateEnable:Z
    invoke-static {v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v6

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->converColorOpacityRate(IIZ)I
    invoke-static {v3, v0, v5, v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;IIZ)I

    move-result v0

    .line 2406
    :cond_0
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2408
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontSize:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->access$2500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;)I

    move-result v0

    const/16 v3, 0x67

    if-ne v0, v3, :cond_1

    .line 2410
    :cond_1
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontSize:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->access$2500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;)I

    move-result v0

    const/16 v3, 0x66

    if-ne v0, v3, :cond_18

    move v0, v1

    .line 2412
    :goto_0
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontBoldEnable:Z
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2413
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontBold:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v0

    .line 2416
    :cond_2
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Italic:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$2900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getItalic(I)I

    move-result v3

    .line 2417
    if-eqz v3, :cond_3

    .line 2418
    or-int/lit8 v0, v0, 0x2

    .line 2421
    :cond_3
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontStyle:I
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->access$9400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;)I

    move-result v3

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->fromID(I)Landroid/graphics/Typeface;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9500(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 2423
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v5, :cond_17

    .line 2425
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontTypeface:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 2426
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_b

    .line 2427
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontTypeface:Landroid/graphics/Typeface;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object v5, v3

    .line 2438
    :goto_1
    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    :cond_4
    move v3, v1

    :goto_2
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2439
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_5

    .line 2440
    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 2443
    :cond_5
    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2445
    if-eqz p4, :cond_6

    .line 2446
    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2447
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_e

    move v3, v1

    :goto_3
    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2448
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 2449
    invoke-virtual {p4, v7}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 2452
    :cond_6
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->printDirection:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$9800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)I

    move-result v0

    if-le v0, v1, :cond_f

    move v0, v1

    .line 2456
    :goto_4
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v3

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getRowRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    .line 2457
    if-eqz v0, :cond_10

    .line 2458
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I
    invoke-static {v0, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v0

    .line 2459
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I
    invoke-static {v5, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v3

    .line 2460
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    sub-int v6, v3, v0

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->getFontSize(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;I)F
    invoke-static {v5, p2, v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10000(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;I)F

    move-result v5

    .line 2461
    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 2462
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2463
    if-eqz p4, :cond_7

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2475
    :cond_7
    :goto_5
    float-to-int v3, v0

    .line 2478
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Underline:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$3000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I

    move-result v0

    .line 2479
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontUnderlineEnable:Z
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$10200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2480
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontUnderline:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$10300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v0

    .line 2482
    :cond_8
    if-eqz v0, :cond_11

    .line 2483
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2487
    :goto_6
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeType:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$2800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getEdgeType(I)I

    move-result v2

    .line 2488
    if-eqz v2, :cond_a

    .line 2489
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {p2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v0

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeColor:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$2700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getEdgeColor(I)I

    move-result v5

    .line 2491
    const/4 v0, 0x3

    if-ne v2, v0, :cond_12

    .line 2492
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2493
    div-int/lit8 v0, v3, 0x9

    .line 2494
    if-ge v0, v4, :cond_9

    move v0, v4

    .line 2496
    :cond_9
    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2519
    :cond_a
    :goto_7
    return v3

    .line 2429
    :cond_b
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontTypeface:Landroid/graphics/Typeface;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_1

    .line 2430
    :cond_c
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 2431
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_17

    .line 2432
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->fontName:Ljava/lang/String;
    invoke-static {v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$9700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_1

    :cond_d
    move v3, v2

    .line 2438
    goto/16 :goto_2

    :cond_e
    move v3, v2

    .line 2447
    goto/16 :goto_3

    :cond_f
    move v0, v2

    .line 2452
    goto/16 :goto_4

    .line 2465
    :cond_10
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I
    invoke-static {v0, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v0

    .line 2466
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I
    invoke-static {v5, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v3

    .line 2467
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    sub-int v6, v3, v0

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->getFontSize(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;I)F
    invoke-static {v5, p2, v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10000(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;I)F

    move-result v5

    .line 2468
    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 2469
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2470
    if-eqz p4, :cond_7

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_5

    .line 2486
    :cond_11
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    goto/16 :goto_6

    .line 2499
    :cond_12
    const v0, 0x3fe66666    # 1.8f

    .line 2500
    int-to-float v6, v3

    const/high16 v7, 0x41100000    # 9.0f

    div-float/2addr v6, v7

    const v7, 0x3fe66666    # 1.8f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_13

    .line 2501
    int-to-float v0, v3

    const/high16 v6, 0x41100000    # 9.0f

    div-float/2addr v0, v6

    .line 2502
    :cond_13
    if-eq v2, v4, :cond_14

    if-ne v2, v1, :cond_15

    .line 2503
    :cond_14
    if-eqz p4, :cond_15

    .line 2504
    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2509
    :cond_15
    const/4 v1, 0x4

    if-ne v2, v1, :cond_16

    .line 2510
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p3, v0, v1, v8, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2512
    :cond_16
    const/4 v1, 0x5

    if-ne v2, v1, :cond_a

    .line 2513
    invoke-virtual {p3, v0, v8, v8, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_7

    :cond_17
    move-object v5, v3

    goto/16 :goto_1

    :cond_18
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public enableDraw(Z)V
    .locals 1

    .prologue
    .line 2358
    iput-boolean p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->enableDraw:Z

    .line 2360
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->setVisibility(I)V

    .line 2361
    return-void

    .line 2360
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 50

    .prologue
    .line 2846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2847
    const-string v5, "@@@ClosedCaptionManager.java"

    const-string v6, "CloseCaption onDraw: enableDraw=%d, mShow=%d"

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->enableDraw:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mShow:Z
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11300(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2849
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->enableDraw:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mShow:Z
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11300(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    .line 3299
    :cond_1
    return-void

    .line 2847
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 2852
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10502(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    .line 2853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10602(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    .line 2854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10502(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    .line 2856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10602(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    .line 2858
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2859
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v4

    if-lez v4, :cond_b

    .line 2860
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->xyRate:F
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11502(Lcom/visualon/OSMPSubTitle/voSubTitleManager;F)F

    .line 2878
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2879
    const-string v4, "@@@ClosedCaptionManager.java"

    const-string v5, "CloseCaption onDraw: width=%d, height=%d, xyRate=%f"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->xyRate:F
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2880
    const-string v5, "@@@ClosedCaptionManager.java"

    const-string v6, "CloseCaption onDraw: xBegin=%d, yBegin=%d, canvas.getHeight()=%d, vwSurface.getHeight()=%d"

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBegin:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBegin:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2883
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-result-object v6

    .line 2885
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mainActivity:Landroid/content/Context;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11700(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-result-object v4

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2890
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2892
    const/4 v8, 0x0

    .line 2893
    const/4 v10, 0x0

    .line 2895
    const/4 v4, 0x0

    move/from16 v40, v4

    :goto_4
    const/4 v4, 0x2

    move/from16 v0, v40

    if-ge v0, v4, :cond_1

    .line 2896
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_8

    .line 2897
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2898
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->computeBoundBox(Ljava/util/ArrayList;)Z

    .line 2900
    move-object/from16 v0, p0

    iget v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBeginBoundBox:I

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBeginBoundBox:I

    if-nez v4, :cond_7

    .line 2901
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 2902
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v5

    .line 2912
    if-le v4, v5, :cond_7

    .line 2913
    sub-int v8, v5, v4

    .line 2917
    :cond_7
    div-int/lit8 v4, v10, 0x2

    add-int/lit8 v9, v4, 0x6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawBackground(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;Ljava/util/ArrayList;II)V

    :cond_8
    move/from16 v20, v8

    .line 2919
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2922
    const/4 v4, 0x0

    move/from16 v21, v4

    move v5, v10

    :goto_5
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_3e

    .line 2923
    new-instance v22, Landroid/graphics/Rect;

    const/4 v4, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2924
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2926
    const/4 v9, 0x0

    .line 2927
    const/4 v8, -0x1

    .line 2930
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    .line 2932
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v41

    .line 2934
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_f

    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawPicture(Landroid/graphics/Canvas;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;Landroid/graphics/Rect;)V

    .line 2936
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static/range {v41 .. v41}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 2942
    const/4 v4, 0x0

    move/from16 v23, v4

    move/from16 v49, v8

    move v8, v9

    move v9, v5

    move/from16 v5, v49

    :goto_7
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static/range {v41 .. v41}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_3c

    .line 2943
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->textRowInfo:Ljava/util/ArrayList;
    invoke-static/range {v41 .. v41}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$1500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;

    .line 2944
    if-eqz v4, :cond_3b

    .line 2946
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_3b

    .line 2949
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v10

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v10

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getRowRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v12

    .line 2950
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v11, v12, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I
    invoke-static {v10, v11}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v10

    .line 2951
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v13, v12, Landroid/graphics/Rect;->right:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealX(I)I
    invoke-static {v11, v13}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$9900(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v11

    .line 2952
    if-ge v11, v10, :cond_4b

    move/from16 v24, v10

    .line 2957
    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v13, v12, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I
    invoke-static {v11, v13}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v11

    .line 2958
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->toRealY(I)I
    invoke-static {v13, v12}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    move-result v12

    .line 2959
    if-gez v20, :cond_9

    .line 2960
    add-int v11, v11, v20

    .line 2961
    add-int v12, v12, v20

    .line 2964
    :cond_9
    if-eqz v8, :cond_4a

    .line 2965
    sub-int v8, v12, v11

    .line 2969
    add-int/2addr v8, v5

    move/from16 v49, v5

    move v5, v8

    move/from16 v8, v49

    .line 2973
    :goto_9
    sub-int/2addr v5, v8

    .line 2976
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getFontMaxSize(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;I)I

    move-result v11

    .line 2977
    if-le v11, v9, :cond_49

    move/from16 v39, v11

    .line 2980
    :goto_a
    if-lez v11, :cond_a

    .line 2981
    int-to-float v5, v11

    const v9, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v9

    float-to-int v5, v5

    .line 2984
    :cond_a
    add-int v34, v8, v5

    .line 2987
    const/4 v9, 0x0

    .line 2988
    const/4 v5, 0x0

    move v11, v9

    move v9, v5

    :goto_b
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v9, v5, :cond_10

    .line 2989
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 2990
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2991
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;

    .line 2993
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$3100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Ljava/lang/String;

    move-result-object v13

    .line 2994
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v12, v14}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->setTextViewTextInfo(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;Landroid/graphics/Paint;Landroid/graphics/Paint;)I

    .line 2995
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2996
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v11, v5

    .line 2988
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_b

    .line 2862
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/16 v5, 0x258

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10502(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    .line 2863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/16 v5, 0x5a

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10602(Lcom/visualon/OSMPSubTitle/voSubTitleManager;I)I

    .line 2864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->xyRate:F
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11502(Lcom/visualon/OSMPSubTitle/voSubTitleManager;F)F

    goto/16 :goto_2

    .line 2867
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v4

    if-lez v4, :cond_d

    .line 2868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->xyRate:F
    invoke-static {v4, v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11502(Lcom/visualon/OSMPSubTitle/voSubTitleManager;F)F

    .line 2870
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getWidth()I

    move-result v4

    .line 2871
    invoke-virtual/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getHeight()I

    move-result v5

    .line 2872
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v6}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->xBegin:I

    .line 2873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->height:I
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v4

    sub-int v4, v5, v4

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->yBegin:I

    goto/16 :goto_2

    .line 2880
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->vwSurface:Landroid/view/View;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$11400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    goto/16 :goto_3

    :cond_f
    move-object/from16 v4, v22

    .line 2934
    goto/16 :goto_6

    .line 2999
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getAlignment(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)I

    move-result v42

    .line 3001
    const/4 v5, 0x1

    move/from16 v0, v42

    if-eq v0, v5, :cond_11

    const/4 v5, 0x2

    move/from16 v0, v42

    if-ne v0, v5, :cond_48

    .line 3002
    :cond_11
    const/4 v5, 0x1

    move/from16 v0, v42

    if-ne v0, v5, :cond_47

    .line 3003
    sub-int v5, v24, v11

    .line 3005
    :goto_c
    const/4 v9, 0x2

    move/from16 v0, v42

    if-ne v0, v9, :cond_12

    .line 3006
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v5

    sub-int/2addr v5, v11

    div-int/lit8 v5, v5, 0x2

    .line 3008
    :cond_12
    const/4 v9, 0x2

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v25, v10

    .line 3012
    :goto_d
    const/16 v30, -0x1

    .line 3013
    const/16 v32, -0x1

    .line 3016
    const/4 v5, 0x0

    move/from16 v38, v5

    move/from16 v33, v8

    move/from16 v29, v10

    :goto_e
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v38

    if-ge v0, v5, :cond_3a

    .line 3017
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 3018
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3019
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v5

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$1800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    move-result-object v5

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$1900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I

    move-result v5

    .line 3020
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v9, v9, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v9, :cond_13

    .line 3021
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v9, v9, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v10, v10, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColor:I
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorEnable:Z
    invoke-static {v11}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$11900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v11

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->converColor(IIZ)I
    invoke-static {v9, v5, v10, v11}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;IIZ)I

    move-result v5

    .line 3022
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v9, v9, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v10, v10, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorOpacityRate:I
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$12000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->backgroundColorOpacityRateEnable:Z
    invoke-static {v11}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$12100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Z

    move-result v11

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->converColorOpacityRate(IIZ)I
    invoke-static {v9, v5, v10, v11}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$8700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;IIZ)I

    move-result v5

    .line 3024
    :cond_13
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3025
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    if-nez v5, :cond_46

    .line 3026
    const/4 v5, 0x0

    move-object/from16 v26, v5

    .line 3027
    :goto_f
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 3028
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3031
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;

    .line 3034
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v8

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v8

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeType:I
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$2800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getEdgeType(I)I

    move-result v43

    .line 3036
    const/4 v8, 0x1

    move/from16 v0, v43

    if-eq v0, v8, :cond_19

    const/4 v8, 0x2

    move/from16 v0, v43

    if-eq v0, v8, :cond_19

    .line 3037
    const/4 v13, 0x0

    .line 3045
    :goto_10
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$3100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Ljava/lang/String;

    move-result-object v9

    .line 3046
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v8

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->printDirection:I
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$9800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)I

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_1a

    const/4 v8, 0x1

    .line 3047
    :goto_11
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v10

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->printDirection:I
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$9800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_14

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$1600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;

    move-result-object v10

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->printDirection:I
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;->access$9800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowDescriptor;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_45

    .line 3048
    :cond_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->reverseString(Ljava/lang/CharSequence;)Ljava/lang/String;
    invoke-static {v10, v9}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$12200(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v27, v9

    .line 3050
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v5, v1, v13}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->setTextViewTextInfo(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;Landroid/graphics/Paint;Landroid/graphics/Paint;)I

    move-result v44

    .line 3051
    if-eqz v13, :cond_15

    .line 3052
    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3053
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3054
    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3056
    :cond_15
    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3057
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->descent()F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v9, v9, 0x2

    .line 3060
    new-instance v45, Landroid/graphics/Rect;

    invoke-direct/range {v45 .. v45}, Landroid/graphics/Rect;-><init>()V

    .line 3061
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v10

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v10

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Italic:I
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$2900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getItalic(I)I

    move-result v46

    .line 3062
    if-eqz v8, :cond_1c

    .line 3063
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    .line 3070
    add-int/lit8 v5, v29, -0x3

    move-object/from16 v0, v45

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 3071
    sub-int v31, v24, v29

    .line 3072
    const/4 v5, 0x0

    :goto_13
    move/from16 v0, v28

    if-ge v5, v0, :cond_1b

    .line 3073
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 3074
    const-string v9, ""

    .line 3075
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3077
    if-eqz v26, :cond_16

    .line 3078
    mul-int v8, v31, v5

    add-int v8, v8, v33

    move-object/from16 v0, v45

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 3079
    add-int/lit8 v8, v5, 0x1

    mul-int v8, v8, v31

    add-int v8, v8, v33

    move-object/from16 v0, v45

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 3080
    move-object/from16 v0, v45

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v8, v9

    move-object/from16 v0, v45

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 3081
    const/4 v8, 0x1

    move/from16 v0, v40

    if-ne v0, v8, :cond_16

    .line 3082
    div-int/lit8 v8, v39, 0x2

    add-int/lit8 v8, v8, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V

    .line 3084
    :cond_16
    if-eqz v13, :cond_17

    const/4 v8, 0x1

    move/from16 v0, v40

    if-ne v0, v8, :cond_17

    .line 3085
    add-int/lit8 v8, v29, 0x2

    int-to-float v11, v8

    add-int/lit8 v8, v5, 0x1

    mul-int v8, v8, v31

    add-int v8, v8, v33

    div-int/lit8 v9, v31, 0x4

    sub-int/2addr v8, v9

    int-to-float v12, v8

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3086
    :cond_17
    const/4 v8, 0x1

    move/from16 v0, v40

    if-ne v0, v8, :cond_18

    .line 3087
    add-int/lit8 v8, v29, 0x2

    int-to-float v0, v8

    move/from16 v17, v0

    add-int/lit8 v8, v5, 0x1

    mul-int v8, v8, v31

    add-int v8, v8, v33

    div-int/lit8 v9, v31, 0x4

    sub-int/2addr v8, v9

    int-to-float v0, v8

    move/from16 v18, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v19}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3072
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_13

    .line 3039
    :cond_19
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 3040
    const/4 v8, 0x1

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3041
    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_10

    .line 3046
    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_11

    .line 3089
    :cond_1b
    mul-int v5, v31, v28

    add-int v33, v33, v5

    .line 3016
    :goto_14
    add-int/lit8 v5, v38, 0x1

    move/from16 v38, v5

    goto/16 :goto_e

    .line 3091
    :cond_1c
    sub-int v8, v34, v33

    move/from16 v0, v44

    if-ge v0, v8, :cond_44

    .line 3092
    sub-int v8, v34, v33

    sub-int v8, v8, v44

    if-lez v8, :cond_44

    .line 3093
    sub-int v8, v34, v33

    sub-int v8, v8, v44

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v9

    move/from16 v28, v8

    .line 3095
    :goto_15
    const-string v8, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    .line 3096
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 3097
    const/4 v8, 0x0

    move v9, v8

    :goto_16
    move-object/from16 v0, v47

    array-length v8, v0

    if-ge v9, v8, :cond_21

    .line 3098
    aget-object v8, v47, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_1e

    .line 3099
    aget-object v8, v47, v9

    move-object/from16 v0, v48

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3097
    :cond_1d
    :goto_17
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_16

    .line 3100
    :cond_1e
    aget-object v8, v47, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1d

    .line 3101
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_20

    .line 3102
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3103
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x20

    if-ge v10, v11, :cond_1f

    .line 3104
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v10, v47, v9

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3105
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v10, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 3107
    :cond_1f
    aget-object v8, v47, v9

    move-object/from16 v0, v48

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 3109
    :cond_20
    aget-object v8, v47, v9

    move-object/from16 v0, v48

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 3117
    :cond_21
    const/4 v8, 0x0

    move/from16 v37, v8

    move/from16 v12, v29

    move/from16 v9, v30

    move/from16 v10, v29

    :goto_18
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v0, v37

    if-ge v0, v8, :cond_3f

    .line 3118
    move-object/from16 v0, v48

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3120
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_38

    .line 3124
    const/16 v27, 0x0

    move v14, v9

    move/from16 v36, v10

    move-object v9, v8

    .line 3125
    :goto_19
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_39

    .line 3127
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v11, v8

    .line 3128
    add-int v8, v11, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v10

    if-le v8, v10, :cond_2e

    const/4 v8, 0x1

    .line 3129
    :goto_1a
    if-eqz v27, :cond_22

    .line 3130
    const/4 v8, 0x0

    .line 3131
    :cond_22
    if-eqz v8, :cond_31

    .line 3132
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v10}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v10

    sub-int/2addr v10, v12

    int-to-float v10, v10

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v8, v10, v11}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v11

    .line 3133
    if-ltz v11, :cond_30

    .line 3134
    const/4 v8, 0x0

    invoke-virtual {v9, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 3135
    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 3136
    const/4 v15, -0x1

    if-ne v10, v15, :cond_23

    .line 3137
    const-string v10, "\t"

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 3139
    :cond_23
    if-lez v10, :cond_2f

    sub-int v15, v11, v10

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v15, v0, :cond_2f

    .line 3140
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3141
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 3144
    :goto_1b
    const/4 v10, 0x1

    move/from16 v49, v10

    move-object v10, v9

    move-object v9, v8

    move/from16 v8, v49

    .line 3151
    :goto_1c
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    move/from16 v27, v8

    move-object/from16 v29, v10

    move/from16 v30, v11

    move-object v10, v9

    .line 3158
    :goto_1d
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_43

    .line 3159
    const/4 v8, 0x1

    move/from16 v0, v42

    if-eq v0, v8, :cond_24

    const/4 v8, 0x2

    move/from16 v0, v42

    if-ne v0, v8, :cond_43

    .line 3160
    :cond_24
    const/4 v8, 0x1

    move/from16 v0, v42

    if-ne v0, v8, :cond_42

    .line 3161
    sub-int v8, v24, v30

    .line 3162
    const/4 v9, 0x2

    if-ge v8, v9, :cond_25

    .line 3163
    const/4 v8, 0x2

    .line 3165
    :cond_25
    :goto_1e
    const/4 v9, 0x2

    move/from16 v0, v42

    if-ne v0, v9, :cond_41

    .line 3166
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->width:I
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$10500(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)I

    move-result v8

    sub-int v8, v8, v30

    div-int/lit8 v8, v8, 0x2

    .line 3167
    const/4 v9, 0x2

    if-ge v8, v9, :cond_41

    .line 3168
    const/4 v8, 0x2

    move/from16 v31, v8

    .line 3173
    :goto_1f
    move/from16 v0, v31

    move-object/from16 v1, v45

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3175
    if-eqz v38, :cond_26

    move/from16 v0, v25

    move/from16 v1, v31

    if-ne v0, v1, :cond_27

    .line 3176
    :cond_26
    move-object/from16 v0, v45

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, -0x5

    move-object/from16 v0, v45

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 3182
    :cond_27
    sub-int v8, v34, v33

    mul-int v8, v8, v37

    add-int v8, v8, v33

    move-object/from16 v0, v45

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 3183
    sub-int v8, v34, v33

    add-int/lit8 v9, v37, 0x1

    mul-int/2addr v8, v9

    add-int v8, v8, v33

    move-object/from16 v0, v45

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 3184
    move-object/from16 v0, v45

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int v8, v8, v30

    move-object/from16 v0, v45

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 3188
    move-object/from16 v0, v45

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-eq v14, v8, :cond_28

    const/4 v8, -0x1

    if-ne v14, v8, :cond_32

    .line 3189
    :cond_28
    if-ltz v32, :cond_29

    move-object/from16 v0, v45

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v32

    if-ge v8, v0, :cond_29

    move-object/from16 v0, v45

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move/from16 v0, v32

    if-lt v8, v0, :cond_29

    .line 3190
    move/from16 v0, v32

    move-object/from16 v1, v45

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3192
    :cond_29
    move-object/from16 v0, v45

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v8

    .line 3195
    :goto_20
    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    .line 3197
    const/4 v8, 0x1

    move/from16 v0, v40

    if-ne v0, v8, :cond_2a

    if-eqz v26, :cond_2a

    .line 3198
    div-int/lit8 v8, v39, 0x2

    add-int/lit8 v8, v8, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V

    .line 3201
    :cond_2a
    if-eqz v13, :cond_2b

    .line 3204
    const/4 v8, 0x3

    move/from16 v0, v43

    if-le v0, v8, :cond_33

    .line 3205
    const/4 v8, 0x1

    move/from16 v0, v40

    if-ne v0, v8, :cond_2b

    .line 3206
    move/from16 v0, v31

    int-to-float v11, v0

    sub-int v8, v34, v33

    add-int/lit8 v9, v37, 0x1

    mul-int/2addr v8, v9

    add-int v8, v8, v33

    sub-int v8, v8, v28

    add-int/lit8 v8, v8, 0x0

    int-to-float v12, v8

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3227
    :cond_2b
    :goto_21
    const/4 v8, 0x1

    move/from16 v0, v40

    if-ne v0, v8, :cond_2d

    .line 3228
    const/4 v8, 0x3

    move/from16 v0, v43

    if-ne v0, v8, :cond_2c

    .line 3229
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    .line 3230
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v9

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v9}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v9

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeColor:I
    invoke-static {v9}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$2700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getEdgeColor(I)I

    move-result v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 3231
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3232
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v9, v34, v33

    add-int/lit8 v11, v37, 0x1

    mul-int/2addr v9, v11

    add-int v9, v9, v33

    sub-int v9, v9, v28

    int-to-float v0, v9

    move/from16 v18, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v19}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3233
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3234
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 3236
    :cond_2c
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v8, v34, v33

    add-int/lit8 v9, v37, 0x1

    mul-int/2addr v8, v9

    add-int v8, v8, v33

    sub-int v8, v8, v28

    int-to-float v0, v8

    move/from16 v18, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v19}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3239
    :cond_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->CheckRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3263
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->textInfoEntry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->access$2100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_40

    move-object/from16 v0, v47

    array-length v8, v0

    const/4 v9, 0x1

    if-ne v8, v9, :cond_40

    .line 3264
    add-int v36, v36, v30

    .line 3265
    if-eqz v46, :cond_40

    .line 3266
    div-int/lit8 v8, v44, 0x3

    add-int v36, v36, v8

    move/from16 v8, v36

    .line 3269
    :goto_22
    if-eqz v27, :cond_37

    .line 3272
    sub-int v9, v34, v33

    .line 3273
    move-object/from16 v0, v45

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 3274
    add-int v9, v9, v34

    move/from16 v31, v25

    move v11, v9

    move v12, v9

    move/from16 v9, v25

    .line 3282
    :goto_23
    const-string v14, "@@@ClosedCaptionManager.java"

    const-string v15, "CloseCaption drawText = %s ;top=%d, bottom = %d, nOldBottom=%d"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    const/4 v10, 0x1

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v10

    const/4 v10, 0x2

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v10

    const/4 v10, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v16, v10

    invoke-static/range {v14 .. v16}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v12, v31

    move/from16 v14, v35

    move/from16 v33, v8

    move/from16 v36, v9

    move/from16 v34, v11

    move-object/from16 v9, v29

    .line 3283
    goto/16 :goto_19

    .line 3128
    :cond_2e
    const/4 v8, 0x0

    goto/16 :goto_1a

    .line 3143
    :cond_2f
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1b

    .line 3147
    :cond_30
    const-string v10, ""

    .line 3148
    const/4 v8, 0x0

    goto/16 :goto_1c

    .line 3155
    :cond_31
    const-string v10, ""

    .line 3156
    const/4 v8, 0x0

    move/from16 v27, v8

    move-object/from16 v29, v10

    move/from16 v30, v11

    move-object v10, v9

    goto/16 :goto_1d

    .line 3194
    :cond_32
    const/4 v8, -0x1

    move/from16 v32, v8

    goto/16 :goto_20

    .line 3208
    :cond_33
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    .line 3209
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    invoke-static {v5}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    move-result-object v8

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    move-result-object v8

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeColor:I
    invoke-static {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$2700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->getEdgeColor(I)I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 3211
    sub-int v8, v34, v33

    div-int/lit8 v8, v8, 0x1e

    .line 3212
    const/4 v11, 0x2

    if-ge v8, v11, :cond_34

    .line 3213
    const/4 v8, 0x2

    .line 3215
    :cond_34
    const/4 v11, 0x2

    move/from16 v0, v43

    if-ne v0, v11, :cond_35

    .line 3216
    const/4 v11, 0x1

    move/from16 v0, v40

    if-ne v0, v11, :cond_35

    .line 3217
    add-int v11, v31, v8

    int-to-float v0, v11

    move/from16 v17, v0

    sub-int v11, v34, v33

    add-int/lit8 v12, v37, 0x1

    mul-int/2addr v11, v12

    add-int v11, v11, v33

    sub-int v11, v11, v28

    add-int/2addr v11, v8

    int-to-float v0, v11

    move/from16 v18, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v19}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3219
    :cond_35
    const/4 v11, 0x1

    move/from16 v0, v43

    if-ne v0, v11, :cond_36

    .line 3220
    const/4 v11, 0x1

    move/from16 v0, v40

    if-ne v0, v11, :cond_36

    .line 3221
    sub-int v11, v31, v8

    int-to-float v0, v11

    move/from16 v17, v0

    sub-int v11, v34, v33

    add-int/lit8 v12, v37, 0x1

    mul-int/2addr v11, v12

    add-int v11, v11, v33

    sub-int v11, v11, v28

    sub-int v8, v11, v8

    int-to-float v0, v8

    move/from16 v18, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v19}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3223
    :cond_36
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_21

    .line 3278
    :cond_37
    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v11, v34

    move v12, v9

    move v9, v8

    move/from16 v8, v33

    goto/16 :goto_23

    :cond_38
    move v14, v9

    move/from16 v36, v10

    .line 3117
    :cond_39
    add-int/lit8 v8, v37, 0x1

    move/from16 v37, v8

    move v9, v14

    move/from16 v10, v36

    goto/16 :goto_18

    .line 3289
    :cond_3a
    move-object/from16 v0, v22

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 3290
    const/4 v8, 0x1

    move/from16 v9, v39

    .line 2942
    :cond_3b
    add-int/lit8 v4, v23, 0x1

    move/from16 v23, v4

    goto/16 :goto_7

    :cond_3c
    move v5, v9

    .line 2922
    :cond_3d
    add-int/lit8 v4, v21, 0x1

    move/from16 v21, v4

    goto/16 :goto_5

    .line 2895
    :cond_3e
    add-int/lit8 v4, v40, 0x1

    move/from16 v40, v4

    move v10, v5

    move/from16 v8, v20

    goto/16 :goto_4

    :cond_3f
    move/from16 v30, v9

    move/from16 v29, v10

    goto/16 :goto_14

    :cond_40
    move/from16 v8, v36

    goto/16 :goto_22

    :cond_41
    move/from16 v31, v8

    goto/16 :goto_1f

    :cond_42
    move v8, v12

    goto/16 :goto_1e

    :cond_43
    move/from16 v31, v12

    goto/16 :goto_1f

    :cond_44
    move/from16 v28, v9

    goto/16 :goto_15

    :cond_45
    move-object/from16 v27, v9

    goto/16 :goto_12

    :cond_46
    move-object/from16 v26, v8

    goto/16 :goto_f

    :cond_47
    move v5, v10

    goto/16 :goto_c

    :cond_48
    move/from16 v25, v10

    goto/16 :goto_d

    :cond_49
    move/from16 v39, v9

    goto/16 :goto_a

    :cond_4a
    move v8, v11

    move v5, v12

    goto/16 :goto_9

    :cond_4b
    move/from16 v24, v11

    goto/16 :goto_8
.end method
