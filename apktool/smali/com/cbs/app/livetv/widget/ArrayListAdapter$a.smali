.class final Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/widget/ArrayListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;


# direct methods
.method private constructor <init>(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/livetv/widget/ArrayListAdapter;B)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;-><init>(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .prologue
    .line 290
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 292
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-static {v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->a(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-static {v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->a(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-static {v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->b(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-static {v4}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->c(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v3}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->a(Lcom/cbs/app/livetv/widget/ArrayListAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 295
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-static {v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->b(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 301
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-static {v3}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->a(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 302
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 304
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 330
    :goto_0
    return-object v1

    .line 295
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 302
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 306
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 309
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-static {v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->b(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 310
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-static {v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->a(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 313
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 314
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 316
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    .line 317
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 319
    iget-object v7, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-virtual {v7, v2, v6}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 320
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-virtual {v0, v5, v2}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 326
    iput-object v5, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 327
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->getItemCount()I

    move-result v1

    .line 338
    iget-object v2, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v2, v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->a(Lcom/cbs/app/livetv/widget/ArrayListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "items = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-static {v2}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->c(Lcom/cbs/app/livetv/widget/ArrayListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->notifyDataSetChanged()V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ArrayListAdapter$a;->a:Lcom/cbs/app/livetv/widget/ArrayListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_0
.end method
