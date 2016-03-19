.class Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearLayoutShowBorder"
.end annotation


# instance fields
.field m_nColor:I

.field m_nWidth:I

.field paintBorder:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2270
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    .line 2271
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2266
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->m_nWidth:I

    .line 2267
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->m_nColor:I

    .line 2268
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    .line 2272
    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2274
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    .line 2275
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2266
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->m_nWidth:I

    .line 2267
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->m_nColor:I

    .line 2268
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    .line 2276
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2288
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2290
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->m_nWidth:I

    if-nez v0, :cond_0

    .line 2296
    :goto_0
    return-void

    .line 2292
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2293
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2294
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2295
    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setBorder(II)V
    .locals 2

    .prologue
    .line 2279
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->m_nWidth:I

    .line 2280
    iput p2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->m_nColor:I

    .line 2281
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2282
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$LinearLayoutShowBorder;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2283
    return-void
.end method
