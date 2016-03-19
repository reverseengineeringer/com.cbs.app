.class final Lcom/cbs/app/widget/HorizontalListView$2;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/HorizontalListView;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cbs/app/widget/HorizontalListView$2;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/cbs/app/widget/HorizontalListView$2;->a:Lcom/cbs/app/widget/HorizontalListView;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$2;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-static {v0}, Lcom/cbs/app/widget/HorizontalListView;->d(Lcom/cbs/app/widget/HorizontalListView;)Z

    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$2;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/cbs/app/widget/HorizontalListView;->invalidate()V

    .line 125
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$2;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/cbs/app/widget/HorizontalListView;->requestLayout()V

    .line 126
    return-void

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$2;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-static {v0}, Lcom/cbs/app/widget/HorizontalListView;->e(Lcom/cbs/app/widget/HorizontalListView;)V

    .line 131
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$2;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/cbs/app/widget/HorizontalListView;->invalidate()V

    .line 132
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$2;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/cbs/app/widget/HorizontalListView;->requestLayout()V

    .line 133
    return-void
.end method
