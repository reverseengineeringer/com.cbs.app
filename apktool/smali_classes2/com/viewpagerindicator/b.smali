.class final Lcom/viewpagerindicator/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viewpagerindicator/b;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010129
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    sget-object v1, Lcom/viewpagerindicator/b;->a:[I

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/b;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/b;->f:I

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/b;->e:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/viewpagerindicator/b;->f:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/viewpagerindicator/b;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/viewpagerindicator/b;->d:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    iget-object v0, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    return-void
.end method

.method private a(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 167
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    iget v1, p0, Lcom/viewpagerindicator/b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 172
    add-int/lit8 v1, p1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 173
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 174
    const/4 v0, 0x1

    .line 175
    goto :goto_0

    .line 172
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/viewpagerindicator/b;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/viewpagerindicator/b;->c:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/viewpagerindicator/b;->f:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    iget-object v0, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/b;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 63
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getOrientation()I

    move-result v2

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    invoke-direct {p0, v1}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    if-ne v2, v5, :cond_2

    .line 68
    iget v3, p0, Lcom/viewpagerindicator/b;->d:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v3

    .line 76
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_1

    .line 77
    invoke-direct {p0, v3}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    if-ne v2, v5, :cond_3

    .line 79
    iget v1, p0, Lcom/viewpagerindicator/b;->d:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 85
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 86
    return-void

    .line 71
    :cond_2
    iget v3, p0, Lcom/viewpagerindicator/b;->c:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 81
    :cond_3
    iget v1, p0, Lcom/viewpagerindicator/b;->c:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1101
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1102
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1103
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1105
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 1106
    invoke-direct {p0, v1}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1108
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v0, v3, v0

    .line 1109
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/b;->a(Landroid/graphics/Canvas;I)V

    .line 1102
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1114
    :cond_1
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1115
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1117
    if-nez v0, :cond_3

    .line 1118
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/viewpagerindicator/b;->d:I

    sub-int/2addr v0, v1

    .line 1123
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/b;->a(Landroid/graphics/Canvas;I)V

    .line 97
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    return-void

    .line 1121
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_1

    .line 1128
    :cond_4
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1129
    :goto_3
    if-ge v1, v2, :cond_6

    .line 1130
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1132
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 1133
    invoke-direct {p0, v1}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1134
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1135
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v0, v3, v0

    .line 1136
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/b;->b(Landroid/graphics/Canvas;I)V

    .line 1129
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1141
    :cond_6
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1142
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1144
    if-nez v0, :cond_7

    .line 1145
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/viewpagerindicator/b;->c:I

    sub-int/2addr v0, v1

    .line 1150
    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/b;->b(Landroid/graphics/Canvas;I)V

    goto :goto_2

    .line 1148
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_4
.end method

.method public final setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    .line 49
    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/b;->c:I

    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/b;->d:I

    .line 56
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/b;->setWillNotDraw(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->requestLayout()V

    goto :goto_0

    .line 53
    :cond_2
    iput v0, p0, Lcom/viewpagerindicator/b;->c:I

    .line 54
    iput v0, p0, Lcom/viewpagerindicator/b;->d:I

    goto :goto_1
.end method
