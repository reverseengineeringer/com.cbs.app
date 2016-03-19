.class final Lcom/cbs/app/view/SplashActivity2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SplashActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cbs/app/view/SplashActivity2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$3;->b:Lcom/cbs/app/view/SplashActivity2;

    iput-object p2, p0, Lcom/cbs/app/view/SplashActivity2$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$3;->b:Lcom/cbs/app/view/SplashActivity2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/SplashActivity2;->d:Z

    .line 1047
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$3;->b:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->b()V

    .line 1048
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 1022
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    if-eqz v0, :cond_0

    .line 1023
    check-cast p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    .line 1024
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->isSuccess()Z

    move-result v0

    .line 1025
    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->getFavshowlist()Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v0

    .line 1027
    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1029
    if-eqz v1, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$3;->a:Landroid/content/Context;

    const-string v2, "mycbs_show_count"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1031
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$3;->b:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/cbs/app/view/MainApplication;

    if-eqz v2, :cond_0

    .line 1033
    check-cast v0, Lcom/cbs/app/view/MainApplication;

    .line 1034
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/MainApplication;->setMycbsShows(Ljava/util/List;)V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$3;->b:Lcom/cbs/app/view/SplashActivity2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/SplashActivity2;->d:Z

    .line 1041
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$3;->b:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->b()V

    .line 1042
    return-void
.end method
