.class final Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$4;->a:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$4;->a:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->i:Z

    .line 365
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 343
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    .line 344
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;

    if-eqz v0, :cond_1

    .line 345
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    .line 346
    check-cast p1, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;

    .line 347
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;->getShowAlbums()Ljava/util/List;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 349
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showAlbumsList.size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$4;->a:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/cbs/app/view/model/ShowAlbum;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/ShowAlbum;

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;[Lcom/cbs/app/view/model/ShowAlbum;)[Lcom/cbs/app/view/model/ShowAlbum;

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$4;->a:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->c(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)V

    .line 358
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$4;->a:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->i:Z

    .line 359
    return-void

    .line 352
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    goto :goto_0

    .line 355
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    goto :goto_0
.end method
