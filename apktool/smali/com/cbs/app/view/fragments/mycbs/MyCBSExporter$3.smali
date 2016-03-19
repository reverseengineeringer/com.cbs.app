.class final Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    .line 194
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 154
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 155
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    if-eqz v0, :cond_3

    .line 157
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 158
    check-cast p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    .line 160
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->isSuccess()Z

    move-result v0

    .line 161
    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->getFavshowlist()Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;Lcom/cbs/app/view/model/FavoriteShowList;)Lcom/cbs/app/view/model/FavoriteShowList;

    .line 163
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 164
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    const-string v2, "favorite-shows"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->g:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->f:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_0

    .line 176
    :cond_2
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$3;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    goto :goto_0
.end method
