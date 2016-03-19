.class public Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    .line 16
    return-void
.end method

.method private a(Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 32
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 33
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 35
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 36
    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 39
    return-void

    .line 30
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;->a(Landroid/graphics/Paint;)V

    .line 21
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;->a(Landroid/graphics/Paint;)V

    .line 26
    return-void
.end method
