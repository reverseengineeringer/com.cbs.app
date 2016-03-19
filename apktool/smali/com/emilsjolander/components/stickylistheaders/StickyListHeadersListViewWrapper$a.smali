.class final Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;


# direct methods
.method private constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$a;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;B)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$a;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V

    return-void
.end method


# virtual methods
.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$a;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;Z)Z

    .line 251
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$a;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper$a;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->invalidate(Landroid/graphics/Rect;)V

    .line 254
    return-void
.end method
