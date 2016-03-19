.class final Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->dispatchDraw(Landroid/graphics/Canvas;)V
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
    .line 469
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$4;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$4;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$4;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;I)V

    .line 474
    return-void
.end method
