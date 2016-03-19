.class public abstract Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;
.super Lcom/cbs/app/livetv/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$a;,
        Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/cbs/app/livetv/widget/ArrayListAdapter",
        "<TT;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter",
            "<TT;TVH;>.FixedViewInfo;>;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter",
            "<TT;TVH;>.FixedViewInfo;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->d:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->e:Ljava/util/List;

    .line 26
    return-void
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->getHeaderCount()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->getArrayItemCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;-><init>(Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;)V

    .line 91
    iput-object p1, v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;->a:Landroid/view/View;

    .line 92
    const/16 v1, 0x3e8

    iput v1, v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;->b:I

    .line 94
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public getArrayItemCount()I
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFooterCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->getArrayItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->getHeaderCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->getFooterCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    iput p1, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->a:I

    .line 1076
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 41
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 42
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;

    iget v0, v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;->b:I

    .line 46
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1076
    goto :goto_0

    .line 1080
    :cond_1
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 43
    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->getArrayItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->e:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;

    iget v0, v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;->b:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1080
    goto :goto_2

    .line 46
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSelectedItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1122
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->getHeaderCount()I

    move-result v3

    sub-int/2addr v2, v3

    .line 154
    if-ltz v2, :cond_0

    .line 155
    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    return-object v1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 112
    instance-of v0, p1, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$a;

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;

    .line 59
    iget v0, v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;->b:I

    if-ne v0, p2, :cond_0

    .line 60
    new-instance v1, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$a;

    iget-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->d:Ljava/util/List;

    iget v2, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;

    iget-object v0, v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;->a:Landroid/view/View;

    invoke-direct {v1, v0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$a;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 70
    :goto_0
    return-object v0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;

    .line 65
    iget v0, v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;->b:I

    if-ne v0, p2, :cond_2

    .line 66
    new-instance v1, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$a;

    iget-object v0, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->e:Ljava/util/List;

    iget v2, p0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->a:I

    invoke-direct {p0, v2}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->b(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;

    iget-object v0, v0, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$FixedViewInfo;->a:Landroid/view/View;

    invoke-direct {v1, v0}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter$a;-><init>(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/cbs/app/livetv/widget/HeaderFooterArrayListAdapter;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method
