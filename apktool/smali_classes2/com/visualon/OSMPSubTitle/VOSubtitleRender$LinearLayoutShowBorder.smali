.class Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/VOSubtitleRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearLayoutShowBorder"
.end annotation


# instance fields
.field m_nWidth:I

.field paintBorder:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 727
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 728
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 724
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->m_nWidth:I

    .line 725
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    .line 729
    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 731
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 732
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 724
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->m_nWidth:I

    .line 725
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    .line 733
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 744
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 746
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->m_nWidth:I

    if-nez v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 749
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 750
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 751
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setBorder(II)V
    .locals 2

    .prologue
    .line 736
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->m_nWidth:I

    .line 737
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 738
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 739
    return-void
.end method
