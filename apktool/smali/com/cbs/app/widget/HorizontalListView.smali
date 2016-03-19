.class public Lcom/cbs/app/widget/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/widget/HorizontalListView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/ListAdapter;

.field protected b:I

.field protected c:I

.field protected d:Landroid/widget/Scroller;

.field e:Lcom/cbs/app/widget/HorizontalListView$a;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/view/GestureDetector;

.field private k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private m:Landroid/widget/AdapterView$OnItemClickListener;

.field private n:Landroid/view/GestureDetector$OnGestureListener;

.field private o:Z

.field private p:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/cbs/app/widget/HorizontalListView$a;

    invoke-direct {v0, p0}, Lcom/cbs/app/widget/HorizontalListView$a;-><init>(Lcom/cbs/app/widget/HorizontalListView;)V

    iput-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->e:Lcom/cbs/app/widget/HorizontalListView$a;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->f:I

    .line 54
    iput v1, p0, Lcom/cbs/app/widget/HorizontalListView;->g:I

    .line 55
    const v0, 0x7fffffff

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->h:I

    .line 56
    iput v1, p0, Lcom/cbs/app/widget/HorizontalListView;->i:I

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->k:Ljava/util/Queue;

    .line 61
    new-instance v0, Lcom/cbs/app/widget/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/widget/HorizontalListView$1;-><init>(Lcom/cbs/app/widget/HorizontalListView;)V

    iput-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->n:Landroid/view/GestureDetector$OnGestureListener;

    .line 116
    iput-boolean v1, p0, Lcom/cbs/app/widget/HorizontalListView;->o:Z

    .line 117
    new-instance v0, Lcom/cbs/app/widget/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/widget/HorizontalListView$2;-><init>(Lcom/cbs/app/widget/HorizontalListView;)V

    iput-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->p:Landroid/database/DataSetObserver;

    .line 139
    invoke-direct {p0}, Lcom/cbs/app/widget/HorizontalListView;->b()V

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 196
    if-nez v0, :cond_0

    .line 197
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 201
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/cbs/app/widget/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 202
    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 205
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/widget/HorizontalListView;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->f:I

    return v0
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->f:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->g:I

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->i:I

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->b:I

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    .line 148
    const v0, 0x7fffffff

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->h:I

    .line 149
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->d:Landroid/widget/Scroller;

    .line 150
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/widget/HorizontalListView;->n:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->j:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/cbs/app/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cbs/app/widget/HorizontalListView;->b()V

    .line 186
    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 187
    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/cbs/app/widget/HorizontalListView;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/widget/HorizontalListView;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/cbs/app/widget/HorizontalListView;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/cbs/app/widget/HorizontalListView;->c()V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 350
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->d:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 351
    return v1
.end method

.method protected final a(F)Z
    .locals 9

    .prologue
    .line 341
    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->d:Landroid/widget/Scroller;

    iget v1, p0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    const/4 v2, 0x0

    neg-float v3, p1

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/cbs/app/widget/HorizontalListView;->h:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 343
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->requestLayout()V

    .line 346
    const/4 v0, 0x1

    return v0

    .line 343
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->j:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 210
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 212
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 216
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/cbs/app/widget/HorizontalListView;->o:Z

    if-eqz v0, :cond_2

    .line 217
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->b:I

    .line 218
    invoke-direct {p0}, Lcom/cbs/app/widget/HorizontalListView;->b()V

    .line 219
    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 220
    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/widget/HorizontalListView;->o:Z

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->d:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->d:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    .line 228
    :cond_3
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    if-gez v0, :cond_4

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    .line 230
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->d:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 232
    :cond_4
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    iget v2, p0, Lcom/cbs/app/widget/HorizontalListView;->h:I

    if-le v0, v2, :cond_5

    .line 233
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->h:I

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    .line 234
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->d:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 237
    :cond_5
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->b:I

    iget v2, p0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    sub-int v3, v0, v2

    .line 1301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1302
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v3

    if-gtz v2, :cond_6

    .line 1303
    iget v2, p0, Lcom/cbs/app/widget/HorizontalListView;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/cbs/app/widget/HorizontalListView;->i:I

    .line 1304
    iget-object v2, p0, Lcom/cbs/app/widget/HorizontalListView;->k:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1305
    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 1306
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->f:I

    .line 1307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1311
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1312
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getWidth()I

    move-result v4

    if-lt v2, v4, :cond_7

    .line 1313
    iget-object v2, p0, Lcom/cbs/app/widget/HorizontalListView;->k:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1314
    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 1315
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2257
    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2258
    if-eqz v0, :cond_d

    .line 2259
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_3
    move v2, v0

    .line 2274
    :goto_4
    add-int v0, v2, v3

    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getWidth()I

    move-result v4

    if-ge v0, v4, :cond_9

    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->g:I

    iget-object v4, p0, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 2276
    iget-object v4, p0, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    iget v5, p0, Lcom/cbs/app/widget/HorizontalListView;->g:I

    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v4, v5, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2278
    const/4 v4, -0x1

    invoke-direct {p0, v0, v4}, Lcom/cbs/app/widget/HorizontalListView;->a(Landroid/view/View;I)V

    .line 2279
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    .line 2281
    iget v2, p0, Lcom/cbs/app/widget/HorizontalListView;->g:I

    iget-object v4, p0, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_8

    .line 2282
    iget v2, p0, Lcom/cbs/app/widget/HorizontalListView;->b:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/cbs/app/widget/HorizontalListView;->h:I

    .line 2284
    :cond_8
    iget v2, p0, Lcom/cbs/app/widget/HorizontalListView;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/cbs/app/widget/HorizontalListView;->g:I

    move v2, v0

    .line 2285
    goto :goto_4

    .line 2264
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2265
    if-eqz v0, :cond_c

    .line 2266
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_5
    move v2, v0

    .line 2290
    :goto_6
    add-int v0, v2, v3

    if-lez v0, :cond_a

    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->f:I

    if-ltz v0, :cond_a

    .line 2291
    iget-object v4, p0, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    iget v5, p0, Lcom/cbs/app/widget/HorizontalListView;->f:I

    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v4, v5, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2293
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/cbs/app/widget/HorizontalListView;->a(Landroid/view/View;I)V

    .line 2294
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v2, v0

    .line 2295
    iget v2, p0, Lcom/cbs/app/widget/HorizontalListView;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/cbs/app/widget/HorizontalListView;->f:I

    .line 2296
    iget v2, p0, Lcom/cbs/app/widget/HorizontalListView;->i:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/cbs/app/widget/HorizontalListView;->i:I

    move v2, v0

    .line 2297
    goto :goto_6

    .line 2321
    :cond_a
    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 2322
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->i:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->i:I

    .line 2323
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->i:I

    .line 2324
    :goto_7
    invoke-virtual {p0}, Lcom/cbs/app/widget/HorizontalListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 2325
    invoke-virtual {p0, v1}, Lcom/cbs/app/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2326
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2327
    const/4 v4, 0x0

    add-int v5, v0, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 2329
    add-int/2addr v0, v3

    .line 2324
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 243
    :cond_b
    iget v0, p0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    iput v0, p0, Lcom/cbs/app/widget/HorizontalListView;->b:I

    .line 245
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->d:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->e:Lcom/cbs/app/widget/HorizontalListView$a;

    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_5

    :cond_d
    move v0, v1

    goto/16 :goto_3
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/cbs/app/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/cbs/app/widget/HorizontalListView;->p:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    .line 175
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/cbs/app/widget/HorizontalListView;->p:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 176
    invoke-direct {p0}, Lcom/cbs/app/widget/HorizontalListView;->c()V

    .line 177
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/cbs/app/widget/HorizontalListView;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 162
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cbs/app/widget/HorizontalListView;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 157
    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method
