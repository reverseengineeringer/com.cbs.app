.class public Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;
    }
.end annotation


# static fields
.field protected static final h:Ljava/lang/String;


# instance fields
.field protected i:[Lcom/cbs/app/view/model/VideoData;

.field j:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;

.field k:Landroid/widget/AdapterView$OnItemClickListener;

.field private l:Lcom/cbs/app/db/MyRecentVideoDataSource;

.field private m:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    .line 52
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$1;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->j:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    .line 60
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$2;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->k:Landroid/widget/AdapterView$OnItemClickListener;

    .line 72
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->m:Landroid/view/View;

    .line 75
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 151
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/cbs/app/view/model/VideoData;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    .line 152
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->l:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->a()V

    .line 153
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->l:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->c()I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->l:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v1}, Lcom/cbs/app/db/MyRecentVideoDataSource;->b()V

    .line 156
    if-lez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->e()V

    .line 158
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const v3, 0x7f0b00e9

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    const-string v1, "Your \'Recently Watched\' history has been cleared."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "History Cleared"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$4;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$4;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 170
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 171
    new-instance v1, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$5;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 181
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 6

    .prologue
    .line 299
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    array-length v0, v0

    if-le v0, p1, :cond_5

    .line 300
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    aget-object v1, v0, p1

    .line 301
    if-eqz v1, :cond_5

    .line 302
    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v2

    .line 303
    if-eqz v2, :cond_5

    .line 304
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1314
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1315
    const-string v0, "appState"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cbscom:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/cbs/app/analytics/Action;->x:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v5}, Lcom/cbs/app/analytics/Action;->getAppState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    const-string v0, "ShowTitle"

    iget-object v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    const-string v0, "showId"

    iget-wide v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    const-string v0, "EpisodeTitle"

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1320
    const-string v0, "VideoID"

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    :cond_0
    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1323
    const-string v0, "ContentID"

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    const-string v4, "evar_31"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    const-string v4, "prop_31"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "isSubscriber: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->a()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " isPaid: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1331
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1332
    const-string v0, "Regular"

    .line 1333
    iget-object v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->category:Ljava/lang/String;

    const-string v5, "CLASSICS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1334
    const-string v0, "Classics"

    .line 1336
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";Season "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";episode button"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1338
    const-string v4, "evar_18"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    const-string v4, "prop_18"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1343
    const-string v2, "evar_63"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    const-string v2, "prop_63"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1347
    const-string v2, "evar_64"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    const-string v2, "prop_64"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1350
    const-string v0, "evar_6"

    const-string v1, "CBS svod"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    const-string v0, "prop_6"

    const-string v1, "CBS svod"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    :cond_4
    const-string v0, "events"

    const-string v1, "event19"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v1, Lcom/cbs/app/analytics/Action;->aB:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v1, v3}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 310
    :cond_5
    return-void
.end method

.method protected final e()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f030064

    const/4 v5, 0x0

    .line 255
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->m:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    :cond_0
    new-instance v1, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    invoke-direct {v1, v0, v2}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;-><init>(Landroid/content/Context;[Lcom/cbs/app/view/model/VideoData;)V

    .line 259
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->setNumColumns(I)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->m:Landroid/view/View;

    const v2, 0x7f0f01b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 266
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "list view footer count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 270
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 271
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 273
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->k:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->j:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    invoke-virtual {v1, v0}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->setOnGridClickListener(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V

    .line 296
    :cond_2
    :goto_1
    return-void

    .line 262
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->setNumColumns(I)V

    goto :goto_0

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->m:Landroid/view/View;

    const v1, 0x7f0f01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 279
    if-eqz v0, :cond_2

    .line 280
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->k:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videos.length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list view footer count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 288
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 291
    :cond_6
    new-instance v1, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->i:[Lcom/cbs/app/view/model/VideoData;

    invoke-direct {v1, v2, v3}, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;-><init>(Landroid/content/Context;[Lcom/cbs/app/view/model/VideoData;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->d()V

    .line 82
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->e()V

    .line 208
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    new-instance v0, Lcom/cbs/app/db/MyRecentVideoDataSource;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/cbs/app/db/MyRecentVideoDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->l:Lcom/cbs/app/db/MyRecentVideoDataSource;

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->c:Z

    .line 108
    const v0, 0x7f030088

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->m:Landroid/view/View;

    .line 1129
    new-instance v1, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$3;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;)V

    .line 1135
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const v2, 0x7f0f0010

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1137
    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const v2, 0x7f0f02de

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1143
    if-eqz v0, :cond_1

    .line 1144
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->f()V

    .line 111
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->m:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->m:Landroid/view/View;

    .line 215
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->d()V

    .line 216
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 191
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 193
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->l:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->a()V

    .line 1221
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->l:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->getAllMyRecentVideos()Ljava/util/List;

    move-result-object v1

    .line 1222
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->l:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->b()V

    .line 1223
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1229
    const/4 v0, 0x0

    .line 1231
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/db/MyRecentVideo;

    .line 1232
    if-ge v1, v8, :cond_1

    .line 1235
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1236
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "added: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getCid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", date viewed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getDateViewed()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", position (med time): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getMedTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1240
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1244
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "already had: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/db/MyRecentVideo;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1248
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recent video length:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1249
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 1250
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    new-instance v4, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;

    invoke-direct {v4, p0, v2}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$a;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;Ljava/util/List;)V

    invoke-interface {v0, v1, v3, v4}, Lcom/cbs/app/service/ShowService;->a(Landroid/content/Context;Ljava/util/List;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->f()V

    .line 197
    :cond_3
    return-void
.end method
