.class final Lcom/cbs/app/widget/ScheduleGridLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/widget/ScheduleGridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/cbs/app/widget/ScheduleGridLayout;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/ScheduleGridLayout;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-object p2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/widget/ScheduleGridLayout$1;Lcom/cbs/app/view/model/Show;Landroid/app/Dialog;)V
    .locals 4

    .prologue
    .line 153
    .line 1308
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 1310
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 1311
    if-eqz p2, :cond_0

    .line 1312
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 1314
    :cond_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v1

    .line 1316
    if-eqz v1, :cond_3

    .line 1317
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    .line 1318
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1319
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1320
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setArguments(Landroid/os/Bundle;)V

    .line 1322
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 1323
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1324
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1325
    const-string v3, "fragment_schedule"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1326
    if-eqz v3, :cond_1

    .line 1327
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1331
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/NavigationActivity;

    .line 1332
    const-string v3, "fragment_show_home"

    invoke-virtual {v1, v0, v3}, Lcom/cbs/app/view/NavigationActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 1334
    const-string v0, "fragment_show_home"

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1335
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    if-eqz v1, :cond_2

    .line 1336
    check-cast v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    .line 1337
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e()V

    .line 1339
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 1340
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 153
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 348
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 349
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 13

    .prologue
    .line 156
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 158
    if-eqz p1, :cond_5

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;

    if-eqz v0, :cond_5

    .line 159
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 160
    check-cast p1, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;

    .line 161
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->getShowEpisodeResponse()Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;->getEpisodes()Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShowEpisodeResponse List size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Episode;

    .line 166
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EpisodeTitle in ShowEpisodeResponse: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->getShowAssetsResponse()Lcom/cbs/app/view/model/rest/ShowAssetsResponse;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowAssetsResponse;->getAssets()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShowAssetResponse List size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Asset;

    .line 174
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filePath in ShowAssetResponse: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->getShowSeasonResponse()Lcom/cbs/app/view/model/rest/ShowSeasonResponse;

    move-result-object v9

    .line 179
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->getShowShowResponse()Lcom/cbs/app/view/model/rest/ShowResponse;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_a

    .line 182
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->b:Z

    .line 186
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowResponse;->getShows()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;Ljava/util/List;)Ljava/util/List;

    .line 188
    iget-object v10, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a:Landroid/app/Dialog;

    .line 1222
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->d(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->d(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1223
    const v0, 0x7f0f032d

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    const v0, 0x7f0f032a

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1226
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showList not null: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->d(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1230
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->d(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    invoke-static {v1, v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;Lcom/cbs/app/view/model/Show;)Lcom/cbs/app/view/model/Show;

    .line 1231
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Show;->getAbout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 1233
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getLink()Ljava/lang/String;

    .line 1234
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 1235
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/Episode;)Ljava/lang/String;

    move-result-object v12

    .line 1236
    const v0, 0x7f0f032f

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    const-string v6, "Schedule Home"

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/cbs/app/view/model/Show;)Z

    .line 1238
    const v0, 0x7f0f0331

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    const-string v6, "Schedule Home"

    move-object v2, v12

    invoke-static/range {v0 .. v6}, Lcom/cbs/app/service/ButtonServiceHelper;->b(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    .line 1240
    const v0, 0x7f0f0333

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v6

    const-string v8, "Schedule Home"

    move-object v3, v11

    move-object v4, v12

    invoke-static/range {v1 .. v8}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    .line 1243
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Movies & Specials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1244
    const v0, 0x7f0f032c

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1245
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    :cond_2
    :goto_2
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add button for time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Episode;->getAirDate_sec()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Episode;->getAirDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    const v0, 0x7f0f032b

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->g:Landroid/widget/Button;

    .line 1266
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->h:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_3

    .line 1267
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->g:Landroid/widget/Button;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 1269
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->g:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 1270
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->g:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;

    invoke-direct {v1, p0, v10}, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;-><init>(Lcom/cbs/app/widget/ScheduleGridLayout$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/cbs/app/view/model/rest/ShowSeasonResponse;->getNumFound()I

    move-result v0

    if-nez v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a:Landroid/app/Dialog;

    const v1, 0x7f0f032b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a:Landroid/app/Dialog;

    const v1, 0x7f0f032c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_5
    return-void

    .line 1247
    :cond_6
    const v0, 0x7f0f032c

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1248
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget v1, v1, Lcom/cbs/app/widget/ScheduleGridLayout;->h:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_7

    .line 1249
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1251
    :cond_7
    const v0, 0x7f0f032c

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1253
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->b()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1254
    if-eqz v0, :cond_2

    .line 1255
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 1258
    :cond_8
    const v0, 0x7f0f032c

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v2

    const-string v3, "Schedule"

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Lcom/cbs/app/view/model/Show;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 1297
    :cond_9
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1298
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 1301
    const v0, 0x7f0f032d

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    const v0, 0x7f0f032a

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 190
    :cond_a
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getStartTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getEndTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 192
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a:Landroid/app/Dialog;

    const v1, 0x7f0f032d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/Episode;)Ljava/lang/String;

    move-result-object v10

    .line 196
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a:Landroid/app/Dialog;

    const v1, 0x7f0f032f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "Schedule Home"

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/cbs/app/view/model/Show;)Z

    .line 200
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a:Landroid/app/Dialog;

    const v1, 0x7f0f0331

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "Schedule Home"

    move-object v2, v10

    invoke-static/range {v0 .. v6}, Lcom/cbs/app/service/ButtonServiceHelper;->b(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    .line 203
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a:Landroid/app/Dialog;

    const v1, 0x7f0f0333

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "Schedule Home"

    move-object v4, v10

    invoke-static/range {v1 .. v8}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    .line 206
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a:Landroid/app/Dialog;

    const v1, 0x7f0f032b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a:Landroid/app/Dialog;

    const v1, 0x7f0f032c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method
