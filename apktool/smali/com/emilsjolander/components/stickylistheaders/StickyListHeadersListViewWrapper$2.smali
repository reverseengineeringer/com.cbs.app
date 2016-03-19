.class final Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;


# direct methods
.method constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 63
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->removeViewAt(I)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->addView(Landroid/view/View;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Z

    .line 72
    return-void
.end method
