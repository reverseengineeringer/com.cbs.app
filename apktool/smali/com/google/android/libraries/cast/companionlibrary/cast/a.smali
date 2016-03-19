.class public abstract Lcom/google/android/libraries/cast/companionlibrary/cast/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/b$b;
.implements Lcom/google/android/gms/common/api/b$c;
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/cast/a$a;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String;

.field private static r:Ljava/lang/String;


# instance fields
.field protected a:I

.field protected b:Landroid/content/Context;

.field protected c:Landroid/support/v7/media/MediaRouter;

.field protected d:Landroid/support/v7/media/MediaRouteSelector;

.field protected e:Lcom/google/android/libraries/cast/companionlibrary/cast/b;

.field protected f:Lcom/google/android/gms/cast/CastDevice;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

.field protected i:Ljava/lang/String;

.field protected j:I

.field protected k:Z

.field protected l:Lcom/google/android/gms/common/api/b;

.field protected m:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected n:I

.field protected o:Z

.field protected p:Ljava/lang/String;

.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Landroid/os/Handler;

.field private v:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->q:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    .line 106
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a:I

    .line 122
    iput-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->t:Z

    .line 126
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->w:I

    .line 129
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    .line 106
    iput v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a:I

    .line 122
    iput-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->t:Z

    .line 126
    iput v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->w:I

    .line 132
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_version:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->r:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseCastManager is instantiated\nVersion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nApplication ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b:Landroid/content/Context;

    .line 136
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    .line 137
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/a$a;

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a$a;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;B)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->u:Landroid/os/Handler;

    .line 138
    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->i:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "application-id"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    .line 142
    new-instance v0, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->i:Ljava/lang/String;

    .line 2000
    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "applicationId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v2, "com.google.android.gms.cast.CATEGORY_CAST"

    .line 3000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[A-F0-9]+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid application ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->d:Landroid/support/v7/media/MediaRouteSelector;

    .line 145
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/b;

    .line 146
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->d:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/b;

    invoke-virtual {v0, v1, v2, v5}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 148
    return-void
.end method

.method static synthetic A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method private b(ZZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disconnectDevice("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f:Lcom/google/android/gms/cast/CastDevice;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 292
    :cond_0
    iput-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f:Lcom/google/android/gms/cast/CastDevice;

    .line 293
    iput-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->g:Ljava/lang/String;

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mConnectionSuspended: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 295
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->o:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h(I)V

    .line 297
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->z()V

    .line 300
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    .line 4000
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->x()V

    .line 4001
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/a$b;->b(Lcom/google/android/gms/common/api/b;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/a$4;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a$4;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(ZZZ)V

    .line 308
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f()V

    .line 309
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_6

    .line 311
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    .line 321
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 325
    :cond_5
    iput-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    .line 327
    :cond_6
    iput-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->p:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static b(II)Z
    .locals 1

    .prologue
    .line 158
    if-eqz p0, :cond_0

    and-int v0, p0, p1

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/Menu;I)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 379
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 380
    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroid/support/v4/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/MediaRouteActionProvider;

    .line 382
    if-eqz v0, :cond_0

    .line 383
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->d:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/MediaRouteActionProvider;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 384
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e()Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 385
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/MediaRouteActionProvider;->setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V

    .line 388
    :cond_0
    return-object v1
.end method

.method public final a(D)V
    .locals 3

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->x()V

    .line 605
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/a$b;->a(Lcom/google/android/gms/common/api/b;D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 610
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/b/a;

    const-string v2, "Failed to set volume"

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 608
    :catch_1
    move-exception v0

    .line 609
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    const-string v2, "setDeviceVolume()"

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->o:Z

    .line 932
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 933
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->a(I)V

    goto :goto_0

    .line 935
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 1065
    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->a(II)V

    goto :goto_0

    .line 1067
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 764
    const-string v0, "reconnectSessionIfPossible(%d, %s)"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 765
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "route-id"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5691
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "session-id"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5692
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v5, "route-id"

    invoke-virtual {v1, v5}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5693
    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v6, "ssid"

    invoke-virtual {v5, v6}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5694
    if-eqz v0, :cond_2

    if-nez v1, :cond_6

    :cond_2
    move v0, v2

    .line 769
    :goto_1
    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 771
    const/4 v1, 0x0

    .line 772
    if-eqz v0, :cond_c

    .line 773
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 774
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 780
    :goto_2
    if-eqz v0, :cond_a

    .line 5706
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5709
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v4, "session-id"

    invoke-virtual {v1, v4}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5710
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v5, "route-id"

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5711
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "reconnectSessionIfPossible() Retrieved from preferences: sessionId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", routeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5713
    if-eqz v1, :cond_4

    if-nez v4, :cond_9

    .line 790
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->m:Landroid/os/AsyncTask;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->m:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 791
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->m:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 795
    :cond_5
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;I)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->m:Landroid/os/AsyncTask;

    .line 826
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    .line 827
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->m:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5697
    :cond_6
    if-eqz p2, :cond_8

    if-eqz v5, :cond_7

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v0, v2

    .line 5698
    goto/16 :goto_1

    :cond_8
    move v0, v3

    .line 5702
    goto/16 :goto_1

    .line 5716
    :cond_9
    invoke-virtual {p0, v7}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f(I)V

    .line 5717
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->a(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 5719
    if-eqz v0, :cond_4

    .line 5720
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "trying to acquire Cast Client for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5721
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Lcom/google/android/gms/cast/CastDevice;)V

    goto :goto_3

    .line 786
    :cond_a
    invoke-virtual {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f(I)V

    goto :goto_3

    .line 829
    :cond_b
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->m:Landroid/os/AsyncTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto/16 :goto_2
.end method

.method protected final a(J)V
    .locals 5

    .prologue
    .line 1103
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1107
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 1108
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v3, "media-end"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1109
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1110
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1111
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnected() reached with prior suspension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 851
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->o:Z

    if-eqz v0, :cond_2

    .line 852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->o:Z

    .line 853
    if-eqz p1, :cond_1

    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l()V

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->w()V

    goto :goto_0

    .line 862
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 863
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a:I

    if-ne v0, v3, :cond_0

    .line 864
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f(I)V

    goto :goto_0

    .line 869
    :cond_3
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 870
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v2, "ssid"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_4
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/a$b;->a(Lcom/google/android/gms/common/api/b;)V

    .line 5943
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5944
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a:I

    if-ne v0, v3, :cond_5

    .line 5945
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f(I)V

    .line 876
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 877
    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->d()V

    goto :goto_2

    .line 884
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5948
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->x()V

    .line 5951
    :cond_6
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a:I

    if-ne v0, v3, :cond_7

    .line 5953
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "session-id"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5955
    sget-object v1, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/cast/a$b;->b(Lcom/google/android/gms/common/api/b;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/a$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    goto :goto_1

    .line 884
    :catch_1
    move-exception v0

    goto :goto_0

    .line 5975
    :cond_7
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/a$b;->a(Lcom/google/android/gms/common/api/b;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/a$3;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/app/MediaRouteButton;)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->d:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteButton;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 408
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e()Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 409
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteButton;->setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V

    .line 411
    return-void
.end method

.method public final a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 367
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V
.end method

.method public final a(Lcom/google/android/gms/cast/CastDevice;)V
    .locals 3

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 254
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->t:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(ZZZ)V

    .line 258
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 259
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->a(Lcom/google/android/gms/cast/CastDevice;)V

    goto :goto_1

    .line 3343
    :cond_1
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f:Lcom/google/android/gms/cast/CastDevice;

    .line 3344
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->g:Ljava/lang/String;

    .line 3346
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    if-nez v0, :cond_2

    .line 3347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "acquiring a connection to Google Play services for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3348
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->d()Lcom/google/android/gms/cast/a$c$a;

    move-result-object v0

    .line 3349
    new-instance v1, Lcom/google/android/gms/common/api/b$a;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/cast/a;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/a$c$a;->b()Lcom/google/android/gms/cast/a$c;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a$a;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/b$b;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/b$c;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->b()Lcom/google/android/gms/common/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    .line 3354
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    goto :goto_0

    .line 3355
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3356
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    goto :goto_0

    .line 261
    :cond_3
    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionFailed() reached, error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->t:Z

    invoke-direct {p0, v0, v2, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(ZZZ)V

    .line 918
    iput-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->o:Z

    .line 919
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 924
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    .line 926
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;)V
    .locals 2

    .prologue
    .line 1025
    if-eqz p1, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully added the new BaseCastConsumer listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1030
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 273
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->a(Z)V

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method protected a(ZZZ)V
    .locals 2

    .prologue
    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->g:Ljava/lang/String;

    .line 902
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 903
    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->e()V

    goto :goto_0

    .line 905
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->w:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->w:I

    .line 203
    return-void
.end method

.method public final b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;)V
    .locals 2

    .prologue
    .line 1036
    if-eqz p1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully removed the existing BaseCastConsumer listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1042
    :cond_0
    return-void
.end method

.method protected final b(Z)V
    .locals 2

    .prologue
    .line 457
    if-eqz p1, :cond_1

    .line 458
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/b;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->i()V

    .line 468
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 469
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->c(Z)V

    goto :goto_1

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 4485
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 4486
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/b;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->a()V

    goto :goto_0

    .line 471
    :cond_2
    return-void
.end method

.method protected abstract c(I)V
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isChromecastAvailable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->w:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()Lcom/google/android/gms/cast/a$c$a;
.end method

.method protected abstract d(I)V
.end method

.method protected abstract e()Landroid/support/v7/app/MediaRouteDialogFactory;
.end method

.method public final e(I)Z
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->n:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public final f(I)V
    .locals 3

    .prologue
    .line 665
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a:I

    if-eq v0, p1, :cond_0

    .line 666
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a:I

    .line 667
    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a:I

    .line 4672
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 4673
    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->e(I)V

    goto :goto_0

    .line 669
    :cond_0
    return-void
.end method

.method public final declared-synchronized g()V
    .locals 4

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j:I

    .line 420
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->k:Z

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->k:Z

    .line 422
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->u:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_0
    monitor-exit p0

    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(I)V
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(ILjava/lang/String;)V

    .line 751
    return-void
.end method

.method public final declared-synchronized h()V
    .locals 4

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j:I

    if-nez v0, :cond_0

    .line 440
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->k:Z

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->k:Z

    .line 442
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->u:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :cond_0
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1088
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "session-id"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "route-id"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :cond_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "ssid"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_2
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1098
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "media-end"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1100
    :cond_3
    return-void
.end method

.method public final i()V
    .locals 4

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->d:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/b;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 479
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 510
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->t:Z

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(ZZZ)V

    .line 513
    :cond_1
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->d:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public final o()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->v:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 559
    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->n:I

    .line 560
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->q()V

    .line 561
    return-void
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method public final r()D
    .locals 3

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->x()V

    .line 586
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/a$b;->b(Lcom/google/android/gms/common/api/b;)D
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    const-string v2, "getDeviceVolume()"

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final s()Z
    .locals 3

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->x()V

    .line 633
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->l:Lcom/google/android/gms/common/api/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/a$b;->c(Lcom/google/android/gms/common/api/b;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    const-string v2, "isDeviceMute()"

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a:I

    return v0
.end method

.method public final u()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->m:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->m:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->m:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 733
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 741
    .line 4750
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(ILjava/lang/String;)V

    .line 742
    return-void
.end method

.method public w()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;

    .line 839
    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;->a()V

    goto :goto_0

    .line 841
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1053
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->o:Z

    if-eqz v0, :cond_0

    .line 1054
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b/d;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/d;-><init>()V

    throw v0

    .line 1056
    :cond_0
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>()V

    throw v0

    .line 1059
    :cond_1
    return-void
.end method

.method public final y()Lcom/google/android/libraries/cast/companionlibrary/a/c;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    return-object v0
.end method

.method protected final z()V
    .locals 3

    .prologue
    .line 1116
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1121
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1122
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
