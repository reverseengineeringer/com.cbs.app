.class public Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field private b:Z

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Long;

.field private h:Lcom/emilsjolander/components/stickylistheaders/b;

.field private i:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$a;

.field private j:I

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private q:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private r:Landroid/database/DataSetObserver;

.field private s:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private t:Landroid/widget/AbsListView$MultiChoiceModeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 92
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    .line 46
    iput-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Ljava/lang/Long;

    .line 52
    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    .line 53
    iput-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Z

    .line 58
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->r:Landroid/database/DataSetObserver;

    .line 72
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->s:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 98
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 101
    invoke-super {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-super {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 105
    new-array v0, v1, [I

    const v1, 0x10100fc

    aput v1, v0, v2

    .line 107
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->o:Z

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1118
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->t:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 115
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 504
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    if-nez v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/b;->getCount()I

    move-result v3

    .line 509
    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    if-nez v0, :cond_3

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a()Landroid/view/View;

    goto :goto_0

    .line 514
    :cond_3
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v10

    .line 1656
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v0, v4, :cond_5

    move v0, v1

    .line 1660
    :goto_1
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1661
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ltz v4, :cond_8

    .line 1662
    add-int/2addr p1, v0

    .line 1669
    :cond_4
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_5

    .line 1670
    invoke-super {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_5

    .line 1671
    if-lez p1, :cond_5

    .line 1672
    add-int/lit8 p1, p1, -0x1

    .line 515
    :cond_5
    sub-int v11, p1, v10

    .line 518
    if-ltz v11, :cond_6

    add-int/lit8 v0, v3, -0x1

    if-le v11, v0, :cond_9

    .line 519
    :cond_6
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Ljava/lang/Long;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Z

    if-eqz v0, :cond_0

    .line 520
    :cond_7
    iput-object v7, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Ljava/lang/Long;

    .line 521
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a()Landroid/view/View;

    .line 522
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b()V

    .line 523
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 524
    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Z

    goto :goto_0

    .line 1660
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 530
    :cond_9
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v0, v11}, Lcom/emilsjolander/components/stickylistheaders/b;->a(I)J

    move-result-wide v4

    .line 531
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Ljava/lang/Long;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-eqz v0, :cond_1a

    .line 532
    :cond_a
    iput v11, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:I

    .line 533
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:I

    iget-object v6, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a()Landroid/view/View;

    move-result-object v6

    iget-object v8, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, v3, v6, v8}, Lcom/emilsjolander/components/stickylistheaders/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 535
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v3, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Landroid/view/View;)V

    move v0, v2

    .line 539
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Ljava/lang/Long;

    .line 541
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v12

    .line 543
    if-lez v12, :cond_0

    .line 545
    const v5, 0x7fffffff

    move v9, v1

    move v3, v1

    .line 548
    :goto_3
    if-ge v9, v12, :cond_10

    .line 549
    invoke-virtual {p0, v9}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 550
    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    .line 554
    :goto_4
    iget-boolean v6, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    if-eqz v6, :cond_f

    .line 555
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v13

    sub-int/2addr v6, v13

    .line 560
    :goto_5
    if-ltz v6, :cond_19

    .line 564
    if-eqz v7, :cond_d

    if-nez v3, :cond_b

    iget-object v13, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v13, v7}, Lcom/emilsjolander/components/stickylistheaders/b;->a(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_d

    :cond_b
    if-nez v4, :cond_c

    iget-object v13, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v13, v8}, Lcom/emilsjolander/components/stickylistheaders/b;->a(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_19

    :cond_c
    if-ge v6, v5, :cond_19

    :cond_d
    move v3, v4

    move-object v5, v8

    move v4, v6

    .line 548
    :goto_6
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move-object v7, v5

    move v5, v4

    goto :goto_3

    :cond_e
    move v4, v1

    .line 550
    goto :goto_4

    .line 557
    :cond_f
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_5

    .line 574
    :cond_10
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->c()I

    move-result v2

    .line 576
    if-eqz v7, :cond_17

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v3, v7}, Lcom/emilsjolander/components/stickylistheaders/b;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 579
    :cond_11
    if-ne v11, v10, :cond_15

    invoke-virtual {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v3, :cond_15

    iget-boolean v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    if-nez v3, :cond_15

    .line 602
    :cond_12
    :goto_7
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d()I

    move-result v2

    if-ne v2, v1, :cond_13

    if-eqz v0, :cond_14

    .line 604
    :cond_13
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(I)V

    .line 606
    :cond_14
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b()V

    goto/16 :goto_0

    .line 583
    :cond_15
    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    if-eqz v1, :cond_16

    .line 584
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 586
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v3

    if-ge v1, v3, :cond_12

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_7

    .line 590
    :cond_16
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 592
    if-gez v1, :cond_12

    move v1, v2

    goto :goto_7

    .line 598
    :cond_17
    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    if-eqz v1, :cond_18

    .line 599
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_7

    :cond_18
    move v1, v2

    goto :goto_7

    :cond_19
    move v4, v5

    move-object v5, v7

    goto :goto_6

    :cond_1a
    move v0, v1

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a(I)V

    return-void
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 297
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.widget.AbsListView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Ljava/lang/Long;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 637
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    .line 638
    :goto_0
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v3

    move v2, v1

    .line 639
    :goto_1
    if-ge v2, v3, :cond_3

    .line 640
    invoke-virtual {p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 641
    iget-object v5, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v5, v4}, Lcom/emilsjolander/components/stickylistheaders/b;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 642
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v5, v0, :cond_2

    .line 643
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 644
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 639
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 637
    goto :goto_0

    .line 647
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 653
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    return-object v0
.end method

.method static synthetic d(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->p:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    return-object v0
.end method

.method static synthetic f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->q:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-object v0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 620
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 621
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Ljava/util/ArrayList;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 468
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 469
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$4;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$4;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->post(Ljava/lang/Runnable;)Z

    .line 477
    :cond_0
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d()I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 481
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 482
    return-void
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 325
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/b;->c(I)I

    move-result v0

    .line 328
    :cond_0
    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 5

    .prologue
    .line 333
    invoke-super {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 334
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 335
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 336
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v3

    .line 338
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 339
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 343
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 4

    .prologue
    .line 287
    invoke-super {p0}, Landroid/widget/ListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 288
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 289
    return-object v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-super {p0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    if-eqz v0, :cond_1

    if-gez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-super {p0, p1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 280
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    if-eqz v0, :cond_1

    if-gez p1, :cond_2

    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/a;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->c(I)I

    move-result p1

    .line 319
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 169
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 170
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 172
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 173
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getVisibility()I

    move-result v1

    .line 176
    invoke-virtual {p0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 178
    new-instance v3, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    .line 179
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-boolean v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->o:Z

    invoke-virtual {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setDrawSelectorOnTop(Z)V

    .line 181
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v3, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setVisibility(I)V

    .line 183
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 184
    iget-boolean v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setPadding(IIII)V

    .line 186
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0, v3, v6, v4, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setPadding(IIII)V

    .line 189
    :cond_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 192
    invoke-virtual {p0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v3, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->addView(Landroid/view/View;)V

    .line 195
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    const/4 v3, 0x0

    invoke-super {p0, v3}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v3, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 201
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$a;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 709
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 498
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 499
    invoke-direct {p0, p2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a(I)V

    .line 501
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 684
    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v2

    .line 226
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    sub-int v4, p2, v2

    invoke-virtual {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/b;->getItemViewType(I)I

    move-result v3

    .line 228
    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget v4, v4, Lcom/emilsjolander/components/stickylistheaders/b;->c:I

    if-ne v3, v4, :cond_1

    .line 229
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$a;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    sub-int v1, p2, v2

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move v0, v6

    .line 251
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 236
    goto :goto_0

    .line 237
    :cond_1
    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget v4, v4, Lcom/emilsjolander/components/stickylistheaders/b;->b:I

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :cond_2
    if-eqz v0, :cond_4

    .line 241
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/b;->getCount()I

    move-result v1

    if-lt p2, v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/b;->a()I

    move-result v1

    sub-int v3, p2, v1

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    .line 248
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 249
    goto :goto_0

    .line 243
    :cond_3
    if-lt p2, v2, :cond_5

    .line 244
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    sub-int v3, p2, v2

    invoke-virtual {v1, v3}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v1

    add-int v3, v1, v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 251
    goto :goto_0

    :cond_5
    move v3, p2

    goto :goto_1
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 629
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    .line 630
    if-eqz v0, :cond_0

    .line 631
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 633
    :cond_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Z

    if-nez v0, :cond_1

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    .line 424
    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/emilsjolander/components/stickylistheaders/a;

    if-nez v0, :cond_2

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter must implement StickyListHeadersAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    if-eqz v0, :cond_3

    .line 430
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->r:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/b;->b(Landroid/database/DataSetObserver;)V

    .line 431
    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    .line 434
    :cond_3
    if-eqz p1, :cond_4

    .line 435
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_5

    .line 436
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/c;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-direct {v0, v1, p1}, Lcom/emilsjolander/components/stickylistheaders/c;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/a;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    .line 442
    :goto_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/b;->b(I)V

    .line 444
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->r:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/b;->a(Landroid/database/DataSetObserver;)V

    .line 447
    :cond_4
    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Ljava/lang/Long;

    .line 448
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 439
    :cond_5
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-direct {v0, v1, p1}, Lcom/emilsjolander/components/stickylistheaders/b;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/a;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    goto :goto_1
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    if-eq v0, p1, :cond_1

    .line 402
    if-eqz p1, :cond_0

    .line 403
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 406
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    .line 408
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 487
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Z

    .line 489
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 371
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/graphics/drawable/Drawable;

    .line 372
    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 374
    if-ltz v0, :cond_0

    .line 375
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setDividerHeight(I)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 380
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 381
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 383
    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .prologue
    .line 387
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    .line 388
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->b(I)V

    .line 390
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 391
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 393
    :cond_0
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 216
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->o:Z

    .line 217
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->o:Z

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setDrawSelectorOnTop(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 0

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    .line 718
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->c(I)I

    move-result p1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->getItemViewType(I)I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget v1, v1, Lcom/emilsjolander/components/stickylistheaders/b;->b:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Lcom/emilsjolander/components/stickylistheaders/b;

    iget v1, v1, Lcom/emilsjolander/components/stickylistheaders/b;->c:I

    if-eq v0, v1, :cond_1

    .line 310
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 312
    :cond_1
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1

    .prologue
    .line 348
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->q:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 349
    if-nez p1, :cond_0

    .line 350
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->t:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto :goto_0
.end method

.method public setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$a;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$a;

    .line 699
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .prologue
    .line 257
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->p:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 258
    if-nez p1, :cond_0

    .line 259
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->s:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 398
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->c()I

    move-result v0

    add-int/2addr p2, v0

    .line 693
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 694
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 612
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 613
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 616
    :cond_0
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setVisibility(I)V

    .line 456
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 457
    return-void
.end method
