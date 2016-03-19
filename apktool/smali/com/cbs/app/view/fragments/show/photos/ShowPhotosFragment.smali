.class public Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/String;

.field private static m:Landroid/net/Uri;

.field private static n:Landroid/net/Uri;


# instance fields
.field final h:Lcom/cbs/app/view/AbstractAsyncFragment;

.field public i:Z

.field public j:Z

.field k:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;

.field private o:Lcom/cbs/app/view/BackButtonListener;

.field private p:Lcom/google/android/gms/common/api/b;

.field private q:Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field private r:Lcom/cbs/app/view/model/Show;

.field private s:J

.field private t:[Lcom/cbs/app/view/model/ShowAlbum;

.field private u:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const-class v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->l:Ljava/lang/String;

    .line 57
    sput-object v1, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->m:Landroid/net/Uri;

    .line 58
    sput-object v1, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->n:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 59
    iput-object p0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->h:Lcom/cbs/app/view/AbstractAsyncFragment;

    .line 60
    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->i:Z

    .line 61
    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->j:Z

    .line 62
    new-instance v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->o:Lcom/cbs/app/view/BackButtonListener;

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->s:J

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->t:[Lcom/cbs/app/view/model/ShowAlbum;

    .line 88
    new-instance v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$2;-><init>(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->k:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->setRetainInstance(Z)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)Lcom/cbs/app/view/fragments/show/model/ShowItem;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->q:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;[Lcom/cbs/app/view/model/ShowAlbum;)[Lcom/cbs/app/view/model/ShowAlbum;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->t:[Lcom/cbs/app/view/model/ShowAlbum;

    return-object p1
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)Lcom/cbs/app/view/model/Show;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->r:Lcom/cbs/app/view/model/Show;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->e()V

    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const v6, 0x7f0f0127

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 228
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->u:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->u:Landroid/view/View;

    const v2, 0x7f0f01e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 230
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->t:[Lcom/cbs/app/view/model/ShowAlbum;

    if-eqz v2, :cond_4

    .line 232
    new-instance v2, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->t:[Lcom/cbs/app/view/model/ShowAlbum;

    invoke-direct {v2, v1, v3}, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;-><init>(Landroid/content/Context;[Lcom/cbs/app/view/model/ShowAlbum;)V

    .line 234
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->setNumColumns(I)V

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->k:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    invoke-virtual {v2, v1}, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->setOnGridClickListener(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->u:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030064

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 247
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 250
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 253
    :cond_1
    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 269
    :cond_2
    :goto_1
    return-void

    .line 237
    :cond_3
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Lcom/cbs/app/adapter/ShowAlbumsAdapter2;->setNumColumns(I)V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->u:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_5

    .line 262
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_5
    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .prologue
    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->j:Z

    .line 274
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->t:[Lcom/cbs/app/view/model/ShowAlbum;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->t:[Lcom/cbs/app/view/model/ShowAlbum;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->t:[Lcom/cbs/app/view/model/ShowAlbum;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->t:[Lcom/cbs/app/view/model/ShowAlbum;

    aget-object v0, v0, p1

    .line 276
    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;-><init>(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;Lcom/cbs/app/view/model/ShowAlbum;)V

    .line 331
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->h:Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-virtual {v2}, Lcom/cbs/app/view/AbstractAsyncFragment;->b()V

    .line 332
    new-instance v2, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v2}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 333
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowAlbum;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lcom/cbs/app/service/ShowService;->f(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->e()V

    .line 207
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->c:Z

    .line 111
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    :cond_0
    const v0, 0x7f030072

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->u:Landroid/view/View;

    .line 1211
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 1213
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->o:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->r:Lcom/cbs/app/view/model/Show;

    .line 124
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->r:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->r:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->s:J

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->q:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->q:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->s:J

    .line 130
    :cond_3
    iget-wide v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->s:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 1340
    new-instance v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$4;-><init>(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)V

    .line 1367
    new-instance v1, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 1368
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->s:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/cbs/app/service/ShowService;->e(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 135
    :cond_4
    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/appindexing/b;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->b()Lcom/google/android/gms/common/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->p:Lcom/google/android/gms/common/api/b;

    .line 137
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->u:Landroid/view/View;

    return-object v0

    .line 116
    :cond_5
    const v0, 0x7f030073

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->u:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 2219
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 2221
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->o:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/BackButtonListener;)V

    .line 201
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 143
    sget-object v0, Lcom/cbs/app/analytics/Action;->k:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 144
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->r:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->r:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->e:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->r:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->f:Ljava/lang/String;

    .line 159
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStart()V

    .line 166
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->p:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    .line 167
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->r:Lcom/cbs/app/view/model/Show;

    const-string v1, "photos"

    invoke-static {v0, v3, v1}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->r:Lcom/cbs/app/view/model/Show;

    const-string v2, "photos"

    invoke-static {v1, v3, v2}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->b(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 171
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->m:Landroid/net/Uri;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "APP_URI : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->m:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->n:Landroid/net/Uri;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WEB_URL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->n:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->r:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " photos - CBS.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    sget-object v1, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->p:Lcom/google/android/gms/common/api/b;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    sget-object v3, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->m:Landroid/net/Uri;

    sget-object v4, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->n:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;

    .line 186
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStop()V

    .line 192
    sget-object v0, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->p:Lcom/google/android/gms/common/api/b;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->m:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;

    .line 193
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->p:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->d()V

    .line 194
    return-void
.end method

.method public setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->q:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 104
    return-void
.end method
