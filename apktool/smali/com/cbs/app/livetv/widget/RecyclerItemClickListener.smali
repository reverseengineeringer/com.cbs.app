.class public Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemClickListener;,
        Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;
    }
.end annotation


# instance fields
.field a:Landroid/view/GestureDetector;

.field private b:Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;

.field private c:Landroid/util/SparseBooleanArray;

.field private d:Landroid/view/View;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->c:Landroid/util/SparseBooleanArray;

    .line 20
    iput-object p2, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->b:Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;

    .line 21
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$1;-><init>(Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->a:Landroid/view/GestureDetector;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->e:I

    return v0
.end method

.method static synthetic b(Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;)Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->b:Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->d:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->e:I

    .line 45
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->c:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->e:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->b:Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
