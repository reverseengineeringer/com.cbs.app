.class final Lcom/emilsjolander/components/stickylistheaders/b$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emilsjolander/components/stickylistheaders/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/emilsjolander/components/stickylistheaders/b;


# direct methods
.method constructor <init>(Lcom/emilsjolander/components/stickylistheaders/b;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/b$1;->a:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b$1;->a:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/b;->a(Lcom/emilsjolander/components/stickylistheaders/b;)I

    .line 53
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b$1;->a:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/b;->b(Lcom/emilsjolander/components/stickylistheaders/b;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 54
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b$1;->a:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/b;->c(Lcom/emilsjolander/components/stickylistheaders/b;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 55
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b$1;->a:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/b;->a(Lcom/emilsjolander/components/stickylistheaders/b;)I

    .line 59
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b$1;->a:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/b;->b(Lcom/emilsjolander/components/stickylistheaders/b;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 60
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b$1;->a:Lcom/emilsjolander/components/stickylistheaders/b;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/b;->c(Lcom/emilsjolander/components/stickylistheaders/b;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 61
    return-void
.end method
