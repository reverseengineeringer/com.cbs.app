.class final Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;
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
    .line 33
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    .line 79
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 38
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    if-eqz v0, :cond_3

    .line 40
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 41
    check-cast p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    .line 43
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->isSuccess()Z

    move-result v0

    .line 44
    sget-object v1, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 45
    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->getFavshowlist()Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;Lcom/cbs/app/view/model/FavoriteShowList;)Lcom/cbs/app/view/model/FavoriteShowList;

    .line 47
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a(Lcom/cbs/app/view/model/FavoriteShowList;)V

    .line 51
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a(Lcom/cbs/app/view/model/FavoriteShowList;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    goto :goto_0
.end method
