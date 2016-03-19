.class final Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Z

    .line 63
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;

    .line 64
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;

    .line 69
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a()Landroid/view/View;

    .line 70
    return-void
.end method
