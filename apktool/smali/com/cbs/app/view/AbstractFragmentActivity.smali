.class public abstract Lcom/cbs/app/view/AbstractFragmentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/AsyncActivity;
.implements Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:Landroid/view/MenuItem;

.field e:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

.field f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/BackButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Lcom/cbs/app/view/VideoEnabledWebView;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/cbs/app/view/AbstractFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/AbstractFragmentActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->g:Ljava/util/ArrayList;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->b:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/cbs/app/view/AbstractFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/AbstractFragmentActivity$1;-><init>(Lcom/cbs/app/view/AbstractFragmentActivity;)V

    iput-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    .line 93
    iput-boolean v1, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->h:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->j:Lcom/cbs/app/view/VideoEnabledWebView;

    .line 99
    iput-boolean v1, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->k:Z

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b()V

    .line 417
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->k:Z

    .line 418
    return-void
.end method


# virtual methods
.method public final a(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_1

    .line 431
    const-string v1, "episodeSchedule"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 432
    if-eqz v3, :cond_1

    array-length v0, v3

    if-lez v0, :cond_1

    .line 433
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 434
    instance-of v5, v0, Lcom/cbs/app/view/model/Episode;

    if-eqz v5, :cond_0

    .line 435
    check-cast v0, Lcom/cbs/app/view/model/Episode;

    .line 437
    :try_start_0
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-nez v5, :cond_0

    .line 439
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 449
    :cond_1
    return-object v2
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    iget-object v1, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->d:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->d:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 276
    :cond_0
    if-eqz v0, :cond_1

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->k:Z

    .line 278
    const-string v1, "seen_chromecast_intro"

    invoke-static {p0, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    new-instance v1, Lcom/github/amlcurran/showcaseview/a/b;

    invoke-direct {v1, v0}, Lcom/github/amlcurran/showcaseview/a/b;-><init>(Landroid/view/View;)V

    .line 280
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    if-nez v0, :cond_2

    .line 281
    new-instance v0, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;

    invoke-direct {v0, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->b()Lcom/github/amlcurran/showcaseview/ShowcaseView$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a(Lcom/github/amlcurran/showcaseview/a/a;)Lcom/github/amlcurran/showcaseview/ShowcaseView$a;

    move-result-object v0

    const v1, 0x7f080263

    invoke-virtual {p0, v1}, Lcom/cbs/app/view/AbstractFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->c()Lcom/github/amlcurran/showcaseview/ShowcaseView$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$a;->a()Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 287
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->c()V

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/a/a;)V

    .line 290
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    goto :goto_0
.end method

.method public final a(Lcom/cbs/app/view/BackButtonListener;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public final a(Lcom/cbs/app/view/VideoEnabledWebView;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->i:Z

    .line 116
    iput-object p1, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->j:Lcom/cbs/app/view/VideoEnabledWebView;

    .line 117
    return-void
.end method

.method public abstract b()V
.end method

.method public final b(Lcom/cbs/app/view/BackButtonListener;)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public final b(Lcom/cbs/app/view/VideoEnabledWebView;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->i:Z

    .line 122
    iput-object p1, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->j:Lcom/cbs/app/view/VideoEnabledWebView;

    .line 123
    return-void
.end method

.method public abstract c()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 104
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 106
    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Landroid/view/KeyEvent;D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Lcom/cbs/app/view/MainApplication;
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/MainApplication;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const v3, 0x7f0f03d1

    const/4 v2, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 300
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->d:Landroid/view/MenuItem;

    .line 1230
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1232
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 1233
    invoke-virtual {v0, p1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Landroid/view/Menu;I)Landroid/view/MenuItem;

    .line 1235
    const v0, 0x7f0f02bb

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/AbstractFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 1236
    const v1, 0x7f0f02bd

    invoke-virtual {p0, v1}, Lcom/cbs/app/view/AbstractFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1237
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1238
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1251
    :cond_0
    iget-boolean v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->c:Z

    if-nez v0, :cond_3

    .line 1255
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->v(Landroid/content/Context;)Z

    move-result v1

    .line 1256
    const-string v0, "upsell_dialog_seen"

    invoke-static {p0, v0, v2}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 1257
    const-string v0, "seen_chromecast_intro"

    invoke-static {p0, v0, v2}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 1259
    :goto_0
    iget-object v2, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->f:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1261
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1262
    new-instance v1, Lcom/cbs/app/view/AbstractFragmentActivity$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/AbstractFragmentActivity$2;-><init>(Lcom/cbs/app/view/AbstractFragmentActivity;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_4
    move v0, v2

    .line 1257
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->h:Z

    .line 212
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    .line 215
    const v0, 0x7f0f02bf

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/AbstractFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/cast/CBSMiniController;

    .line 217
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/widgets/a;)V

    .line 218
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSMiniController;->setVisibility(I)V

    .line 220
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 374
    .line 376
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 378
    sget-boolean v0, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->O(Landroid/content/Context;)V

    .line 381
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->finish()V

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 384
    :cond_1
    iget-boolean v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->i:Z

    if-nez v0, :cond_4

    .line 385
    iget-boolean v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->k:Z

    if-eqz v0, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->d()V

    goto :goto_0

    .line 1358
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_8

    .line 1359
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/BackButtonListener;

    .line 1360
    invoke-interface {v0}, Lcom/cbs/app/view/BackButtonListener;->c()Z

    move-result v4

    .line 1361
    if-eqz v4, :cond_3

    .line 1362
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleBackListeners: handled by listener "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 390
    :goto_2
    if-nez v0, :cond_7

    .line 391
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->finish()V

    move v0, v1

    :goto_3
    move v1, v0

    .line 394
    goto :goto_0

    .line 1358
    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    .line 396
    :cond_4
    iget-boolean v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->k:Z

    if-eqz v0, :cond_6

    .line 397
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->d()V

    .line 400
    :goto_4
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->j:Lcom/cbs/app/view/VideoEnabledWebView;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->j:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->a()Z

    goto :goto_0

    .line 408
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 191
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h()V

    .line 197
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 199
    const v0, 0x7f0f02bf

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/AbstractFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/cast/CBSMiniController;

    .line 201
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/widgets/a;)V

    .line 202
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSMiniController;->setVisibility(I)V

    .line 204
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 170
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/app/Activity;)Z

    .line 174
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->g()V

    .line 181
    const v0, 0x7f0f02bf

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/AbstractFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/cast/CBSMiniController;

    .line 182
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/a;)V

    .line 185
    :cond_0
    return-void
.end method
