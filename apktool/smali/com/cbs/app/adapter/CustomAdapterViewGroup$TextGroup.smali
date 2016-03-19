.class public Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/adapter/CustomAdapterViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextGroup"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field final synthetic e:Lcom/cbs/app/adapter/CustomAdapterViewGroup;


# direct methods
.method public constructor <init>(Lcom/cbs/app/adapter/CustomAdapterViewGroup;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const v3, 0x7f0b00da

    const v2, 0x7f0b00d9

    .line 153
    iput-object p1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->e:Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    .line 154
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    .line 156
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    .line 157
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    .line 158
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    .line 159
    invoke-static {p1}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    const v1, 0x7f0b00d8

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 161
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 162
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 163
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 172
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 174
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 175
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 177
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->addView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->addView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->addView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->addView(Landroid/view/View;)V

    .line 181
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    const v1, 0x7f0b00d6

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 166
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 167
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 168
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 169
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 200
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 202
    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 204
    iget-object v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 205
    iget-object v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->e:Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    invoke-static {v4}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I

    move-result v4

    iget-object v5, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->e:Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    invoke-static {v5}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->d(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int v5, v0, v1

    invoke-virtual {v3, v6, v0, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 206
    iget-object v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->e:Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    invoke-static {v3}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    add-int v4, v0, v1

    add-int v5, v0, v1

    add-int/2addr v5, v2

    invoke-virtual {v3, v6, v4, p4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 208
    iget-object v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->e:Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    invoke-static {v1}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I

    move-result v1

    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->e:Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    invoke-static {v2}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I

    move-result v2

    invoke-virtual {v3, v6, v0, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    add-int v3, v0, v1

    iget-object v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->e:Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    invoke-static {v5}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I

    move-result v5

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 211
    const/high16 v2, 0x40600000    # 3.5f

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 212
    iget-object v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->e:Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    invoke-static {v4}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->e:Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    invoke-static {v1}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v0, v1, p5}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 187
    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0, p2}, Landroid/widget/TextView;->measure(II)V

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->setMeasuredDimension(II)V

    .line 195
    return-void
.end method
