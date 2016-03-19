.class public abstract Lcom/cbs/app/livetv/widget/ArrayListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;,
        Lcom/cbs/app/livetv/widget/ArrayListAdapter$OnSelectedItemsChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:Lcom/cbs/app/livetv/widget/ArrayListAdapter$OnSelectedItemsChangedListener;

.field private b:Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cbs/app/livetv/widget/ArrayListAdapter",
            "<TT;TVH;>.a;"
        }
    .end annotation
.end field

.field protected c:Landroid/util/SparseBooleanArray;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->c:Landroid/util/SparseBooleanArray;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->d:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->g:Z

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/widget/ArrayListAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->f:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/widget/ArrayListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 79
    .line 1083
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1084
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1085
    :try_start_0
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1086
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1087
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->f:Ljava/util/ArrayList;

    .line 1089
    :cond_0
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1090
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1091
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->notifyItemRangeRemoved(II)V

    .line 80
    return-void

    .line 1091
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 99
    .line 1103
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->notifyItemInserted(I)V

    .line 100
    return-void

    .line 1107
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .line 1067
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1073
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->notifyItemRangeChanged(II)V

    .line 64
    return-void

    .line 1071
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->b:Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;-><init>(Lcom/cbs/app/livetv/widget/ArrayListAdapter;B)V

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->b:Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->b:Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->e:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItemCount()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-object v1
.end method

.method public setMultiSelectEnabled(Z)V
    .locals 0

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->g:Z

    .line 243
    return-void
.end method

.method public setOnSelectedItemsChangedListener(Lcom/cbs/app/livetv/widget/ArrayListAdapter$OnSelectedItemsChangedListener;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter$OnSelectedItemsChangedListener;

    .line 247
    return-void
.end method
