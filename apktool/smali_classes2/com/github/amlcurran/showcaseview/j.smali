.class final Lcom/github/amlcurran/showcaseview/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private final b:Landroid/text/TextPaint;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/github/amlcurran/showcaseview/g;

.field private final e:F

.field private final f:F

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:[F

.field private j:Landroid/text/DynamicLayout;

.field private k:Landroid/text/DynamicLayout;

.field private l:Landroid/text/style/TextAppearanceSpan;

.field private m:Landroid/text/style/TextAppearanceSpan;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/github/amlcurran/showcaseview/g;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    .line 51
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    .line 52
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->action_bar_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/j;->f:F

    .line 54
    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/j;->d:Lcom/github/amlcurran/showcaseview/g;

    .line 55
    iput-object p3, p0, Lcom/github/amlcurran/showcaseview/j;->c:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->a:Landroid/text/TextPaint;

    .line 58
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 60
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->b:Landroid/text/TextPaint;

    .line 61
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/j;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->l:Landroid/text/style/TextAppearanceSpan;

    .line 194
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->g:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/j;->b(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public final a(IILcom/github/amlcurran/showcaseview/ShowcaseView;Z)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 127
    invoke-virtual {p3}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->d:Lcom/github/amlcurran/showcaseview/g;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/g;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 131
    :goto_0
    new-array v5, v10, [I

    .line 132
    iget v1, v0, Landroid/graphics/Rect;->left:I

    mul-int/2addr v1, p2

    aput v1, v5, v4

    .line 133
    iget v1, v0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v1, p1

    aput v1, v5, v3

    .line 134
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, v1

    mul-int/2addr v1, p2

    aput v1, v5, v8

    .line 135
    const/4 v1, 0x3

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    mul-int/2addr v2, p1

    aput v2, v5, v1

    move v2, v3

    move v1, v4

    .line 138
    :goto_1
    if-ge v2, v10, :cond_2

    .line 139
    aget v6, v5, v2

    aget v7, v5, v1

    if-le v6, v7, :cond_0

    move v1, v2

    .line 138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    .line 144
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 166
    :goto_2
    if-eqz p4, :cond_3

    .line 168
    packed-switch v1, :pswitch_data_1

    .line 189
    :goto_3
    iput-boolean v3, p0, Lcom/github/amlcurran/showcaseview/j;->n:Z

    .line 190
    return-void

    .line 146
    :pswitch_0
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    aput v5, v2, v4

    .line 147
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    aput v5, v2, v3

    .line 148
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v5, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    mul-float/2addr v5, v9

    sub-float/2addr v0, v5

    aput v0, v2, v8

    goto :goto_2

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    iget v2, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    aput v2, v0, v4

    .line 152
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    iget v2, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/j;->f:F

    add-float/2addr v2, v5

    aput v2, v0, v3

    .line 153
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    int-to-float v2, p1

    iget v5, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    mul-float/2addr v5, v9

    sub-float/2addr v2, v5

    aput v2, v0, v8

    goto :goto_2

    .line 156
    :pswitch_2
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    add-float/2addr v5, v6

    aput v5, v2, v4

    .line 157
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    aput v5, v2, v3

    .line 158
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v5, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    mul-float/2addr v5, v9

    sub-float/2addr v0, v5

    aput v0, v2, v8

    goto :goto_2

    .line 161
    :pswitch_3
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    aput v5, v2, v4

    .line 162
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v5, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    add-float/2addr v0, v5

    aput v0, v2, v3

    .line 163
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    int-to-float v2, p1

    iget v5, p0, Lcom/github/amlcurran/showcaseview/j;->e:F

    mul-float/2addr v5, v9

    sub-float/2addr v2, v5

    aput v2, v0, v8

    goto :goto_2

    .line 171
    :pswitch_4
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    aget v1, v0, v3

    div-int/lit8 v2, p2, 0x4

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    goto :goto_3

    .line 175
    :pswitch_5
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    aget v1, v0, v8

    div-float/2addr v1, v9

    aput v1, v0, v8

    .line 176
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    aget v1, v0, v4

    div-int/lit8 v2, p1, 0x4

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    goto/16 :goto_3

    .line 181
    :cond_3
    packed-switch v1, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_3

    .line 184
    :pswitch_7
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    aget v1, v0, v3

    iget v2, p0, Lcom/github/amlcurran/showcaseview/j;->f:F

    add-float/2addr v1, v2

    aput v1, v0, v3

    goto/16 :goto_3

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 181
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 65
    .line 1215
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->g:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 65
    :goto_0
    if-eqz v0, :cond_4

    .line 2211
    iget-object v8, p0, Lcom/github/amlcurran/showcaseview/j;->i:[F

    .line 68
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->g:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/j;->n:Z

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/j;->g:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/j;->a:Landroid/text/TextPaint;

    const/4 v3, 0x2

    aget v3, v8, v3

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->j:Landroid/text/DynamicLayout;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->j:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_2

    .line 76
    const/4 v0, 0x0

    aget v0, v8, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->j:Landroid/text/DynamicLayout;

    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/j;->n:Z

    if-eqz v0, :cond_3

    .line 85
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/j;->h:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/j;->b:Landroid/text/TextPaint;

    const/4 v3, 0x2

    aget v3, v8, v3

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v5, 0x3f99999a    # 1.2f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->k:Landroid/text/DynamicLayout;

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->j:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->j:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 92
    :goto_1
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/j;->k:Landroid/text/DynamicLayout;

    if-eqz v1, :cond_4

    .line 93
    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->k:Landroid/text/DynamicLayout;

    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 100
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/j;->n:Z

    .line 101
    return-void

    .line 1215
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 90
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    if-eqz p1, :cond_0

    .line 105
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/j;->m:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 107
    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->h:Ljava/lang/CharSequence;

    .line 109
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/j;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->m:Landroid/text/style/TextAppearanceSpan;

    .line 199
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->h:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/j;->a(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    if-eqz p1, :cond_0

    .line 113
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/j;->l:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 115
    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/j;->g:Ljava/lang/CharSequence;

    .line 117
    :cond_0
    return-void
.end method
