.class abstract Landroid/support/design/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/i$a;
    }
.end annotation


# static fields
.field static final e:[I

.field static final f:[I

.field static final g:[I


# instance fields
.field private a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final h:Landroid/view/View;

.field final i:Landroid/support/design/widget/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/i;->e:[I

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/i;->f:[I

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/design/widget/i;->g:[I

    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/m;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/support/design/widget/i;->h:Landroid/view/View;

    .line 52
    iput-object p2, p0, Landroid/support/design/widget/i;->i:Landroid/support/design/widget/m;

    .line 53
    return-void
.end method

.method static i()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 114
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 115
    return-object v0
.end method


# virtual methods
.method final a(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/b;
    .locals 6

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/design/widget/i;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Landroid/support/design/widget/i;->h()Landroid/support/design/widget/b;

    move-result-object v1

    .line 97
    sget v2, Landroid/support/design/R$color;->design_fab_stroke_top_outer_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Landroid/support/design/R$color;->design_fab_stroke_top_inner_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Landroid/support/design/R$color;->design_fab_stroke_end_inner_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget v5, Landroid/support/design/R$color;->design_fab_stroke_end_outer_color:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/design/widget/b;->a(IIII)V

    .line 102
    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/b;->a(F)V

    .line 103
    invoke-virtual {v1, p2}, Landroid/support/design/widget/b;->a(Landroid/content/res/ColorStateList;)V

    .line 104
    return-object v1
.end method

.method abstract a()V
.end method

.method abstract a(F)V
.end method

.method abstract a(I)V
.end method

.method abstract a(Landroid/content/res/ColorStateList;)V
.end method

.method abstract a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
.end method

.method abstract a(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method abstract a([I)V
.end method

.method abstract b()V
.end method

.method abstract b(F)V
.end method

.method abstract c()V
.end method

.method d()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method e()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method final f()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/support/design/widget/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 1123
    new-instance v0, Landroid/support/design/widget/i$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/i$1;-><init>(Landroid/support/design/widget/i;)V

    iput-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 79
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/i;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/i;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 81
    :cond_1
    return-void
.end method

.method final g()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/support/design/widget/i;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/i;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 88
    :cond_0
    return-void
.end method

.method h()Landroid/support/design/widget/b;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Landroid/support/design/widget/b;

    invoke-direct {v0}, Landroid/support/design/widget/b;-><init>()V

    return-object v0
.end method
