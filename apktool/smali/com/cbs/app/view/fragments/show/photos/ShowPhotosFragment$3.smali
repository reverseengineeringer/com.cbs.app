.class final Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/ShowAlbum;

.field final synthetic b:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;Lcom/cbs/app/view/model/ShowAlbum;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->b:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->a:Lcom/cbs/app/view/model/ShowAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->b:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->h:Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/AbstractAsyncFragment;->d()V

    .line 327
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->b:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->j:Z

    .line 328
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 281
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->b:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->h:Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/AbstractAsyncFragment;->d()V

    .line 284
    const/4 v1, 0x0

    .line 285
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;

    if-eqz v0, :cond_3

    .line 286
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    .line 287
    check-cast p1, Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;

    .line 288
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;->getAlbums()Ljava/util/List;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 290
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    .line 291
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/rest/Album;

    .line 292
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/Album;->getAlbumPhotoCollectoin()Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_3

    .line 294
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    .line 295
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;->getResults()Ljava/util/ArrayList;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_2

    .line 297
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    move v1, v2

    .line 305
    :goto_0
    if-eqz v1, :cond_1

    .line 306
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->b:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->h:Lcom/cbs/app/view/AbstractAsyncFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/AbstractAsyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const-string v4, "items"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 311
    const-string v0, "show_title"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->b:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    invoke-static {v4}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v4

    iget-object v4, v4, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v0, "show_id"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->b:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    invoke-static {v4}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v4

    iget-wide v4, v4, Lcom/cbs/app/view/fragments/show/model/ShowItem;->id:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 313
    const-string v0, "show"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->b:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    invoke-static {v4}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->b(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 314
    const-string v0, "showAlbum"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->a:Lcom/cbs/app/view/model/ShowAlbum;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 320
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$3;->b:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    iput-boolean v2, v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->j:Z

    .line 321
    return-void

    .line 318
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move-object v0, v1

    move v1, v3

    goto :goto_0
.end method
