.class final Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;
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
    .line 81
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    .line 149
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 84
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 85
    if-eqz p1, :cond_5

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    if-eqz v0, :cond_5

    .line 87
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 88
    check-cast p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    .line 91
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->getFavshowlist()Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShowList;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;J)J

    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyShowDataSource;->a()V

    .line 103
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyShowDataSource;->getAllShows()Ljava/util/List;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->d:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->b()V

    .line 106
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 107
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->f:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->setMyCBSExported(Landroid/content/Context;)V

    .line 115
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a(Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;)Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a(Lcom/cbs/app/view/model/FavoriteShowList;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    goto :goto_0

    .line 124
    :cond_3
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    goto :goto_0

    .line 130
    :cond_4
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    goto :goto_0

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$2;->a:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->c:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;->a()V

    goto :goto_0
.end method
