.class final Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


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
    .line 118
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 134
    :cond_0
    return-void
.end method

.method public final onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7

    .prologue
    .line 157
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v3

    .line 159
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 162
    :cond_0
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
