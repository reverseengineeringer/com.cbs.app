.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$21;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1780
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1781
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 1751
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1752
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    if-eqz v0, :cond_2

    .line 1753
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1754
    check-cast p1, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;

    .line 1755
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->isSuccess()Z

    move-result v0

    .line 1756
    if-eqz v0, :cond_1

    .line 1757
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1758
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->getFavshowlist()Lcom/cbs/app/view/model/FavoriteShowList;

    move-result-object v0

    .line 1759
    if-eqz v0, :cond_0

    .line 1760
    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1761
    if-eqz v1, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$21;->a:Landroid/content/Context;

    const-string v2, "mycbs_show_count"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1763
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$21;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1764
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/cbs/app/view/MainApplication;

    if-eqz v2, :cond_0

    .line 1765
    check-cast v0, Lcom/cbs/app/view/MainApplication;

    .line 1766
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/MainApplication;->setMycbsShows(Ljava/util/List;)V

    .line 1776
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    goto :goto_0

    .line 1774
    :cond_2
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    goto :goto_0
.end method
