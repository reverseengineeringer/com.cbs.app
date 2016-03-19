.class final Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$1;->a:Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$1;->a:Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;

    invoke-static {v0}, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->b(Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;)Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$1;->a:Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;

    invoke-static {v1}, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;->a(Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;->a(I)V

    .line 25
    const/4 v0, 0x1

    return v0
.end method
