.class final Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 72
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/b;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
