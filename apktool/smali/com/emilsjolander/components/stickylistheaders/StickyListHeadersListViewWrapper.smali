.class public Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$a;
    }
.end annotation


# static fields
.field private static final a:Z

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Field;


# instance fields
.field private d:Landroid/view/View;

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/view/ViewConfiguration;

.field private h:Z

.field private i:Z

.field private j:Landroid/graphics/Rect;

.field private final k:Landroid/view/GestureDetector;

.field private l:Landroid/view/View$OnTouchListener;

.field private m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    .line 28
    const/4 v1, -0x1

    iput v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    .line 32
    iput-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->i:Z

    .line 33
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    .line 37
    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$1;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V

    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->l:Landroid/view/View$OnTouchListener;

    .line 60
    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;

    invoke-direct {v1, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V

    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 90
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$a;

    invoke-direct {v1, p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$a;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;B)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    :cond_0
    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->k:Landroid/view/GestureDetector;

    .line 93
    sget-boolean v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Z

    if-nez v0, :cond_1

    .line 95
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mTop"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->b:Ljava/lang/reflect/Field;

    .line 96
    const-class v0, Landroid/view/View;

    const-string v1, "mBottom"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->c:Ljava/lang/reflect/Field;

    .line 97
    sget-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->b:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    sget-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->g:Landroid/view/ViewConfiguration;

    .line 105
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 106
    return-void

    .line 100
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 229
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 231
    return-void
.end method

.method static synthetic a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/ViewConfiguration;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->g:Landroid/view/ViewConfiguration;

    return-object v0
.end method

.method static synthetic c(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->k:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic d(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->o:Z

    return v0
.end method

.method private e()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 235
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 236
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 237
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 238
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic e(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->o:Z

    return v0
.end method


# virtual methods
.method final a()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->n:Z

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->o:Z

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    .line 156
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    .line 157
    return-object v0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method final a(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 188
    sget-boolean v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 203
    :cond_0
    :goto_0
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    .line 204
    return-void

    .line 193
    :cond_1
    :try_start_0
    sget-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 199
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method final a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must first remove the old header first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 119
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 124
    const/16 v0, 0x30

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->n:Z

    if-eqz v0, :cond_3

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->o:Z

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()I
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 174
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getMeasuredWidth()I

    move-result v2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sub-int v0, v2, v0

    .line 177
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 179
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getHeight()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {p0, v2, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->measureChild(Landroid/view/View;II)V

    .line 182
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    .line 174
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method final d()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->i:Z

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Landroid/graphics/Canvas;)V

    .line 219
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 220
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->i:Z

    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Landroid/graphics/Canvas;)V

    .line 223
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->n:Z

    .line 141
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 142
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(I)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->n:Z

    .line 144
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->i:Z

    .line 243
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    .line 212
    return-void
.end method
