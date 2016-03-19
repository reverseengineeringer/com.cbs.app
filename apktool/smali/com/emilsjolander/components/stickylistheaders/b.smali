.class Lcom/emilsjolander/components/stickylistheaders/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/a;


# instance fields
.field final a:Lcom/emilsjolander/components/stickylistheaders/a;

.field b:I

.field c:I

.field private final d:Landroid/content/Context;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseIntArray;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/database/DataSetObservable;

.field private m:Landroid/database/DataSetObservable;

.field private n:Landroid/database/DataSetObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/a;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->g:Ljava/util/WeakHashMap;

    .line 40
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->k:I

    .line 47
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->l:Landroid/database/DataSetObservable;

    .line 48
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->m:Landroid/database/DataSetObservable;

    .line 50
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/b$1;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/b$1;-><init>(Lcom/emilsjolander/components/stickylistheaders/b;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->n:Landroid/database/DataSetObserver;

    .line 66
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->d:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    .line 68
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->n:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/emilsjolander/components/stickylistheaders/b;)I
    .locals 1

    .prologue
    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->k:I

    return v0
.end method

.method static synthetic b(Lcom/emilsjolander/components/stickylistheaders/b;)Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->l:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method static synthetic c(Lcom/emilsjolander/components/stickylistheaders/b;)Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->m:Landroid/database/DataSetObservable;

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->i:I

    return v0
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/a;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/emilsjolander/components/stickylistheaders/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->l:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->e:Landroid/graphics/drawable/Drawable;

    .line 73
    return-void
.end method

.method final a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method final b(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->f:I

    .line 77
    return-void
.end method

.method final b(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->l:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method final c(I)I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    return v0
.end method

.method final d(I)I
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->getItemViewType(I)I

    move-result v0

    .line 192
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->c:I

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 194
    :cond_0
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->b:I

    if-ne v0, v1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 12

    .prologue
    const/4 v9, -0x1

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 121
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->k:I

    if-gez v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 1132
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v1}, Lcom/emilsjolander/components/stickylistheaders/a;->getCount()I

    move-result v7

    .line 1133
    if-lez v7, :cond_1

    .line 1135
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v1, v4}, Lcom/emilsjolander/components/stickylistheaders/a;->a(I)J

    move-result-wide v2

    .line 1136
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1137
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    move v6, v0

    move v5, v0

    .line 1138
    :goto_0
    if-ge v6, v7, :cond_2

    .line 1139
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/a;->a(I)J

    move-result-wide v0

    .line 1140
    cmp-long v8, v2, v0

    if-eqz v8, :cond_0

    .line 1142
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    add-int v3, v6, v5

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1144
    add-int/lit8 v2, v5, 0x1

    move v3, v2

    move v2, v4

    .line 1150
    :goto_1
    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    add-int v5, v6, v3

    add-int/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1138
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    add-int v1, v6, v5

    add-int/2addr v1, v4

    const/4 v8, -0x2

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1148
    add-int/lit8 v0, v4, 0x1

    move-wide v10, v2

    move v2, v0

    move v3, v5

    move-wide v0, v10

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1153
    :cond_2
    iput v4, p0, Lcom/emilsjolander/components/stickylistheaders/b;->j:I

    .line 1154
    iput v5, p0, Lcom/emilsjolander/components/stickylistheaders/b;->i:I

    .line 124
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/a;->getCount()I

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->i:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->k:I

    .line 126
    :cond_3
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->k:I

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->c:I

    if-ne v0, v1, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 271
    :cond_0
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v1

    .line 272
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->getItemViewType(I)I

    move-result v0

    .line 164
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->c:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->b:I

    if-ne v0, v1, :cond_1

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    .line 167
    :cond_1
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->c:I

    if-ne v0, v1, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/a;->a(I)J

    move-result-wide v0

    .line 178
    :goto_0
    return-wide v0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/a;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 206
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 207
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->c:I

    .line 214
    :goto_0
    return v0

    .line 210
    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 211
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->b:I

    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/a;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->getItemViewType(I)I

    move-result v0

    .line 234
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->c:I

    if-ne v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/emilsjolander/components/stickylistheaders/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->g:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object p2, v0

    .line 248
    :cond_0
    :goto_1
    return-object p2

    .line 239
    :cond_1
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/b;->b:I

    if-ne v0, v1, :cond_2

    .line 240
    if-nez p2, :cond_0

    .line 1253
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1254
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1255
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/b;->f:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1257
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/emilsjolander/components/stickylistheaders/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->c:I

    .line 220
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->b:I

    .line 222
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/a;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/a;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->getItemViewType(I)I

    move-result v2

    .line 91
    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/b;->c:I

    if-ne v2, v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/b;->b:I

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->d(I)I

    move-result v2

    .line 97
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v3}, Lcom/emilsjolander/components/stickylistheaders/a;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-interface {v3, v2}, Lcom/emilsjolander/components/stickylistheaders/a;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 284
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 289
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->m:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->a:Lcom/emilsjolander/components/stickylistheaders/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/b;->m:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
