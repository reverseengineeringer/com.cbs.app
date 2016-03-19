.class public Lcom/google/android/libraries/cast/companionlibrary/cast/c;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/b/c;
.implements Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/cast/c$a;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;
    }
.end annotation


# static fields
.field public static final q:J

.field private static final r:Ljava/lang/String;

.field private static s:Lcom/google/android/libraries/cast/companionlibrary/cast/c;


# instance fields
.field private A:Landroid/content/ComponentName;

.field private B:Lcom/google/android/gms/cast/i;

.field private C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

.field private D:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Lcom/google/android/gms/cast/a$e;

.field private I:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

.field private J:J

.field private final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/cast/companionlibrary/widgets/a;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;",
            ">;"
        }
    .end annotation
.end field

.field private w:D

.field private x:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

.field private y:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private z:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 122
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->q:J

    .line 124
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->r:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    .line 128
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    .line 129
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->v:Ljava/util/Set;

    .line 131
    const-wide v0, 0x3fa999999999999aL    # 0.05

    iput-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->w:D

    .line 138
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    .line 144
    sget-wide v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->q:J

    iput-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J:J

    .line 147
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    .line 128
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    .line 129
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->v:Ljava/util/Set;

    .line 131
    const-wide v0, 0x3fa999999999999aL    # 0.05

    iput-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->w:D

    .line 138
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    .line 144
    sget-wide v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->q:J

    iput-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J:J

    .line 153
    iput-object p4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G:Ljava/lang/String;

    .line 154
    if-nez p3, :cond_0

    .line 155
    const-class p3, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    .line 157
    :cond_0
    iput-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y:Ljava/lang/Class;

    .line 158
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "cast-activity-name"

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "cast-custom-data-namespace"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->z:Landroid/media/AudioManager;

    .line 166
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    const-class v2, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->A:Landroid/content/ComponentName;

    .line 167
    return-void
.end method

.method public static B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->s:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    if-nez v0, :cond_0

    .line 189
    const-string v0, "No VideoCastManager instance was found, did you forget to initialize it?"

    .line 191
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->s:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/libraries/cast/companionlibrary/cast/c;"
        }
    .end annotation

    .prologue
    .line 171
    const-class v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->s:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    if-nez v0, :cond_0

    .line 173
    invoke-static {p0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    .line 178
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->s:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 180
    :cond_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->s:Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/c;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    .line 11680
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(Z)V

    .line 11681
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11682
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b(Landroid/support/v7/media/MediaRouter;)V

    .line 11684
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 11685
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->c(I)V

    goto :goto_0

    .line 11687
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_3

    .line 11688
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onApplicationDisconnected(): Cached RouteInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->o()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onApplicationDisconnected(): Selected RouteInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11691
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->o()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->o()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11693
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 11696
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/CastDevice;)V

    .line 11697
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c(Z)V

    .line 11698
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ae()V

    .line 113
    return-void
.end method

.method private a(DZ)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 1717
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 10160
    iget v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    .line 1717
    if-ne v4, v6, :cond_0

    invoke-virtual {p0, v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1720
    const/4 v0, 0x0

    .line 1731
    :goto_0
    return v0

    .line 1723
    :cond_0
    if-eqz p3, :cond_1

    .line 10571
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 10572
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->K()D

    move-result-wide v4

    add-double/2addr v4, p1

    .line 10573
    cmpl-double v6, v4, v0

    if-lez v6, :cond_2

    .line 10578
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(D)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 1731
    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 10575
    :cond_2
    cmpg-double v0, v4, v2

    if-gez v0, :cond_3

    move-wide v0, v2

    .line 10576
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_3
    move-wide v0, v4

    goto :goto_1
.end method

.method static synthetic aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method private ab()V
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c(Lcom/google/android/libraries/cast/companionlibrary/widgets/a;)V
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0

    .line 249
    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 248
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private ac()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>()V

    throw v0

    .line 446
    :cond_0
    return-void
.end method

.method private ad()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 658
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    :cond_0
    :goto_0
    return v1

    .line 662
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    const-class v4, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v0, "com.google.android.libraries.cast.companionlibrary.action.notificationvisibility"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v4, "visible"

    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->k:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 665
    goto :goto_1
.end method

.method private ae()V
    .locals 4

    .prologue
    .line 670
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    const-class v3, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private af()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1251
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1264
    :goto_0
    return v0

    .line 1255
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    if-eqz v1, :cond_1

    .line 1256
    sget-object v1, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/cast/a$b;->c(Lcom/google/android/gms/common/api/b;Ljava/lang/String;)V

    .line 1258
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H:Lcom/google/android/gms/cast/a$e;

    .line 1259
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v2, "cast-custom-data-namespace"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1260
    const/4 v0, 0x1

    goto :goto_0

    .line 1262
    :catch_0
    move-exception v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeDataChannel() failed to remove namespace "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private ag()V
    .locals 8

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    .line 1511
    if-eqz v0, :cond_0

    .line 1514
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v1

    .line 1516
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a()Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    move-result-object v2

    const/4 v3, 0x7

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a(ILjava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    move-result-object v1

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a(ILjava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a(J)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1529
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1530
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/cast/d;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1410
    if-nez p1, :cond_1

    .line 6453
    :cond_0
    :goto_0
    return-void

    .line 6422
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    if-eqz v0, :cond_0

    .line 6426
    invoke-virtual {p1}, Lcom/google/android/gms/cast/d;->b()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 6428
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a()Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a()V

    goto :goto_0

    .line 6434
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v0

    .line 6435
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_5

    .line 6436
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 6437
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->b()Landroid/net/Uri;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 6452
    :goto_1
    if-eqz v0, :cond_7

    .line 6453
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a()Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a()V

    goto :goto_0

    .line 6438
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 6439
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->b()Landroid/net/Uri;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 6440
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_8

    .line 6442
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder_large:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 6445
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 6446
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->b()Landroid/net/Uri;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 6449
    :cond_6
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 6458
    :cond_7
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$4;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$4;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$4;->a(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    .line 11273
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->c()Lcom/google/android/gms/cast/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11344
    :cond_0
    :goto_0
    return-void

    .line 11278
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->c()Lcom/google/android/gms/cast/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/g;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    .line 11279
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->c()Lcom/google/android/gms/cast/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/g;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F:I

    .line 11282
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->K()D

    move-result-wide v4

    .line 11283
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->L()Z

    move-result v3

    .line 11285
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 11287
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(Z)V

    .line 11288
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->N()J

    move-result-wide v6

    .line 11289
    invoke-virtual {p0, v6, v7}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(J)V

    .line 11290
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ad()Z

    move v0, v2

    .line 11329
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ae()V

    .line 11333
    if-nez v0, :cond_7

    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c(Z)V

    .line 11334
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ab()V

    .line 11335
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 11336
    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->b()V

    .line 11337
    invoke-interface {v0, v4, v5, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->a(DZ)V

    goto :goto_3

    .line 11344
    :catch_0
    move-exception v0

    goto :goto_0

    .line 11291
    :cond_3
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_4

    .line 11293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(Z)V

    .line 11294
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ad()Z

    move v0, v2

    goto :goto_1

    .line 11295
    :cond_4
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    if-ne v0, v1, :cond_6

    .line 11297
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(Z)V

    .line 11298
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F:I

    packed-switch v0, :pswitch_data_0

    .line 11315
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "onRemoteMediaPlayerStatusUpdated(): Unexpected Idle Reason "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v2

    .line 11318
    :goto_4
    if-eqz v0, :cond_2

    .line 11319
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->z()V

    goto :goto_1

    .line 11344
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 11300
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->V()V

    move v0, v1

    .line 11302
    goto :goto_4

    .line 11307
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->V()V

    .line 11308
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_receiver_player_error:I

    const/4 v6, -0x1

    invoke-virtual {p0, v0, v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(II)V

    move v0, v1

    .line 11309
    goto :goto_4

    .line 11312
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_4

    .line 11321
    :cond_6
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x4

    if-eq v0, v6, :cond_8

    move v0, v1

    .line 11325
    goto :goto_1

    :cond_7
    move v1, v2

    .line 11333
    goto :goto_2

    .line 113
    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    .line 11298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    return-object v0
.end method

.method private c(Lcom/google/android/libraries/cast/companionlibrary/widgets/a;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 222
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ac()V

    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->b()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;->setStreamType(I)V

    .line 227
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F:I

    invoke-interface {p1, v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;->setPlaybackStatus(II)V

    .line 228
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->g:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;->setSubtitle(Ljava/lang/String;)V

    .line 230
    const-string v0, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;->setTitle(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {v1}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;->setIcon(Landroid/net/Uri;)V

    .line 235
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    .locals 3

    .prologue
    .line 113
    .line 11702
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11706
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/a$b;->d(Lcom/google/android/gms/common/api/b;)Ljava/lang/String;

    move-result-object v1

    .line 11708
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 11709
    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11713
    :cond_0
    return-void
.end method

.method private e(Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1477
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1484
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 1485
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v2

    .line 7370
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7374
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->z:Landroid/media/AudioManager;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 7377
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    const-class v5, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7379
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->z:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 7381
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    if-nez v3, :cond_2

    .line 7382
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7383
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->A:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7384
    new-instance v4, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;-><init>(Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    .line 7386
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->z:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    invoke-static {v3, v4}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/b;->a(Landroid/media/AudioManager;Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;)V

    .line 7389
    :cond_2
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a(Landroid/support/v7/media/MediaRouter;)V

    .line 7390
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    invoke-virtual {v3}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b()V

    .line 7392
    if-nez v2, :cond_5

    .line 7393
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a(I)V

    .line 1487
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    if-eqz v2, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x8

    .line 1490
    :cond_4
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    if-eqz p1, :cond_6

    :goto_2
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a(I)V

    goto :goto_0

    .line 1497
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 7396
    :cond_5
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a(I)V

    .line 7400
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/gms/cast/d;)V

    .line 7403
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ag()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1497
    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 1490
    goto :goto_2
.end method

.method static synthetic f(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    .locals 5

    .prologue
    .line 11720
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->K()D

    move-result-wide v2

    .line 11721
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->L()Z

    move-result v1

    .line 11722
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 11723
    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->a(DZ)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 11729
    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    return-void

    .line 113
    :catch_1
    move-exception v0

    goto :goto_1

    .line 11729
    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final C()V
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 264
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Q()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G()Z

    move-result v0

    .line 268
    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->P()V

    goto :goto_0
.end method

.method public final D()Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->I:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    return-object v0
.end method

.method public final E()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->I:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    .line 401
    return-void
.end method

.method public final F()Lcom/google/android/gms/cast/i;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    return-object v0
.end method

.method public final G()Z
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 417
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final H()Z
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 479
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final I()Z
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 489
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final J()Lcom/google/android/gms/cast/d;
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 510
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ac()V

    .line 511
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->d()Lcom/google/android/gms/cast/d;

    move-result-object v0

    return-object v0
.end method

.method public final K()D
    .locals 2

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 522
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    if-ne v0, v1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ac()V

    .line 524
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->c()Lcom/google/android/gms/cast/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/g;->g()D

    move-result-wide v0

    .line 526
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->r()D

    move-result-wide v0

    goto :goto_0
.end method

.method public final L()Z
    .locals 2

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 596
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    if-ne v0, v1, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ac()V

    .line 598
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->c()Lcom/google/android/gms/cast/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/g;->h()Z

    move-result v0

    .line 600
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->s()Z

    move-result v0

    goto :goto_0
.end method

.method public final M()J
    .locals 2

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 624
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ac()V

    .line 625
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final N()J
    .locals 4

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 634
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-nez v0, :cond_0

    .line 635
    const-wide/16 v0, -0x1

    .line 637
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/i;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final O()J
    .locals 2

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 647
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ac()V

    .line 648
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final P()V
    .locals 3

    .prologue
    .line 940
    .line 5916
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 5917
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-nez v0, :cond_0

    .line 5919
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>()V

    throw v0

    .line 5921
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/i;->b(Lcom/google/android/gms/common/api/b;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$11;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$11;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    .line 941
    return-void
.end method

.method public final Q()V
    .locals 3

    .prologue
    .line 984
    .line 5995
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 5996
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-nez v0, :cond_0

    .line 5998
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>()V

    throw v0

    .line 6000
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/b;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$12;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$12;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    .line 985
    return-void
.end method

.method public final R()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1076
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 1077
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H()Z

    move-result v0

    .line 1078
    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Q()V

    .line 1088
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F:I

    if-ne v0, v1, :cond_1

    .line 1083
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/d;)V

    goto :goto_0

    .line 1085
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->P()V

    goto :goto_0
.end method

.method public final S()I
    .locals 1

    .prologue
    .line 1160
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    return v0
.end method

.method public final T()I
    .locals 1

    .prologue
    .line 1168
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F:I

    return v0
.end method

.method public final U()V
    .locals 2

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ag()V

    .line 1354
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 1355
    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->c()V

    goto :goto_0

    .line 1358
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/gms/cast/d;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 1362
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final V()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1536
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->z:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1538
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->z:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/b;->b(Landroid/media/AudioManager;Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;)V

    .line 1541
    iput-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->C:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    .line 1544
    :cond_0
    return-void
.end method

.method public final W()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y:Ljava/lang/Class;

    return-object v0
.end method

.method public final X()D
    .locals 2

    .prologue
    .line 1738
    iget-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->w:D

    return-wide v0
.end method

.method public final Y()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    return-object v0
.end method

.method public final Z()[J
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->c()Lcom/google/android/gms/cast/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->c()Lcom/google/android/gms/cast/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/g;->i()[J

    move-result-object v0

    .line 1898
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1669
    invoke-super {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(II)V

    .line 1670
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    const-string v1, "media"

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b(Lcom/google/android/gms/cast/d;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 286
    return-void
.end method

.method protected final a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onApplicationConnected() reached with sessionId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and mReconnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 742
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_1

    .line 744
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v2, "route-id"

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 746
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a:I

    .line 750
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 756
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ad()Z

    .line 3180
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3183
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H:Lcom/google/android/gms/cast/a$e;

    if-nez v0, :cond_2

    .line 3186
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 3187
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$3;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H:Lcom/google/android/gms/cast/a$e;
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 3197
    :try_start_1
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H:Lcom/google/android/gms/cast/a$e;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/a$b;->a(Lcom/google/android/gms/common/api/b;Ljava/lang/String;Lcom/google/android/gms/cast/a$e;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_1 .. :try_end_1} :catch_1

    .line 4093
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 4094
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-nez v0, :cond_3

    .line 4095
    new-instance v0, Lcom/google/android/gms/cast/i;

    invoke-direct {v0}, Lcom/google/android/gms/cast/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    .line 4097
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$15;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$15;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/cast/i$c;)V

    .line 4108
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/cast/i$b;)V
    :try_end_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_2 .. :try_end_2} :catch_1

    .line 4121
    :cond_3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/i;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/a$b;->a(Lcom/google/android/gms/common/api/b;Ljava/lang/String;Lcom/google/android/gms/cast/a$e;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_3 .. :try_end_3} :catch_1

    .line 760
    :goto_1
    :try_start_4
    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->p:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const-string v1, "session-id"

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$9;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$9;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    .line 775
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 776
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->p:Ljava/lang/String;

    invoke-interface {v0, p1, v2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V
    :try_end_4
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 780
    :catch_0
    move-exception v0

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection_trans:I

    invoke-virtual {p0, v0, v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(II)V

    .line 786
    :cond_4
    :goto_3
    return-void

    .line 783
    :catch_1
    move-exception v0

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection:I

    invoke-virtual {p0, v0, v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(II)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/cast/d;)V
    .locals 3

    .prologue
    .line 842
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/d;ZILorg/json/JSONObject;)V

    .line 843
    return-void
.end method

.method public final a(Lcom/google/android/gms/cast/d;ZILorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 855
    .line 4871
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 4872
    if-eqz p1, :cond_1

    .line 4875
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-nez v0, :cond_0

    .line 4877
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>()V

    throw v0

    .line 4880
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    const/4 v3, 0x1

    int-to-long v4, p3

    const/4 v6, 0x0

    move-object v2, p1

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/cast/d;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$10;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$10;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    .line 856
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/cast/j;)V
    .locals 4

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/cast/j;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$5;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$5;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    .line 1778
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 1780
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->a(Lcom/google/android/gms/cast/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1782
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTextTrackStyleChanged(): Failed to inform "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1785
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .prologue
    .line 1645
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 1646
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(Z)V

    .line 1647
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ae()V

    .line 1648
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V
    .locals 2

    .prologue
    .line 1553
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1554
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;)V

    .line 1555
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully added the new CastConsumer listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    :cond_0
    monitor-exit p0

    return-void

    .line 1553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;)V
    .locals 1

    .prologue
    .line 1927
    if-eqz p1, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->v:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1930
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/libraries/cast/companionlibrary/widgets/a;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1608
    .line 7578
    if-eqz p1, :cond_3

    .line 7580
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    monitor-enter v1

    .line 7582
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 7583
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7584
    if-eqz v2, :cond_4

    .line 7585
    invoke-interface {p1, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;->setOnMiniControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;)V

    .line 7588
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8497
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 8498
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->I()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 7588
    :cond_1
    if-eqz v0, :cond_2

    .line 7590
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c(Lcom/google/android/libraries/cast/companionlibrary/widgets/a;)V

    .line 7591
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;->setVisibility(I)V
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_1 .. :try_end_1} :catch_1

    .line 7596
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully added the new MiniController "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    return-void

    .line 7583
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 7598
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to adding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but it was already registered, skipping this step"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;

    .line 1952
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 1954
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 1834
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->a(Ljava/util/Locale;)V

    goto :goto_0

    .line 1836
    :cond_0
    return-void
.end method

.method public final a(ZZZ)V
    .locals 1

    .prologue
    .line 1653
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(ZZZ)V

    .line 1654
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c(Z)V

    .line 1655
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->o:Z

    if-nez v0, :cond_0

    .line 1656
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->V()V

    .line 1658
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    .line 1659
    return-void
.end method

.method public final a([J)V
    .locals 2

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->d()Lcom/google/android/gms/cast/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/b;[J)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$8;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$8;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/KeyEvent;D)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1698
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1700
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v1, v2

    .line 1713
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1699
    goto :goto_0

    .line 1702
    :pswitch_0
    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(DZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1707
    :pswitch_1
    neg-double v4, p2

    invoke-direct {p0, v4, v5, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(DZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1700
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(D)V
    .locals 5

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 539
    cmpl-double v4, p1, v0

    if-lez v4, :cond_1

    move-wide p1, v0

    .line 544
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    if-ne v0, v1, :cond_2

    .line 545
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ac()V

    .line 546
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/b;D)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    .line 561
    :goto_1
    return-void

    .line 541
    :cond_1
    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    move-wide p1, v2

    .line 542
    goto :goto_0

    .line 559
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(D)V

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/cast/j;)V
    .locals 4

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->d()Lcom/google/android/gms/cast/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1812
    :cond_0
    return-void

    .line 1795
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/cast/j;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$6;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$6;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    .line 1805
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 1807
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->a(Lcom/google/android/gms/cast/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1809
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTextTrackStyleChanged(): Failed to inform "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final declared-synchronized b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V
    .locals 1

    .prologue
    .line 1564
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1565
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/a;)V

    .line 1566
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1568
    :cond_0
    monitor-exit p0

    return-void

    .line 1564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;)V
    .locals 1

    .prologue
    .line 1936
    if-eqz p1, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->v:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1939
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/libraries/cast/companionlibrary/widgets/a;)V
    .locals 2

    .prologue
    .line 1615
    if-eqz p1, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    monitor-enter v1

    .line 1617
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1619
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;->setVisibility(I)V

    .line 1620
    monitor-exit v1

    .line 1623
    :cond_0
    return-void

    .line 1620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 427
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 436
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 433
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 814
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 815
    const/16 v0, 0x7d5

    if-ne p1, v0, :cond_0

    .line 818
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a:I

    .line 819
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/CastDevice;)V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 825
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/CastDevice;)V

    .line 826
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 4

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "minicontroller size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    monitor-enter v2

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;

    .line 306
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/a;->setVisibility(I)V

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 306
    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    .line 308
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected final d()Lcom/google/android/gms/cast/a$c$a;
    .locals 3

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->f:Lcom/google/android/gms/cast/CastDevice;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$a;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$a;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    .line 10000
    new-instance v2, Lcom/google/android/gms/cast/a$c$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/cast/a$c$a;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/a$d;)V

    .line 1637
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    invoke-virtual {v2}, Lcom/google/android/gms/cast/a$c$a;->a()Lcom/google/android/gms/cast/a$c$a;

    .line 1640
    :cond_0
    return-object v2
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 807
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->d(I)V

    goto :goto_0

    .line 809
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 1819
    if-nez p1, :cond_0

    .line 1820
    const/4 v0, 0x0

    new-array v0, v0, [J

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a([J)V

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 1824
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->b(Z)V

    goto :goto_0

    .line 1826
    :cond_1
    return-void
.end method

.method protected final e()Landroid/support/v7/app/MediaRouteDialogFactory;
    .locals 1

    .prologue
    .line 1663
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/b;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/b;-><init>()V

    return-object v0
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 1627
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->ae()V

    .line 9142
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-eqz v0, :cond_0

    .line 9144
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/a$b;->c(Lcom/google/android/gms/common/api/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9149
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    .line 1629
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->af()Z

    .line 1630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c(Z)V

    .line 1631
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E:I

    .line 1632
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final i(I)V
    .locals 6

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attempting to play media at position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>()V

    throw v0

    .line 5050
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 5051
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-nez v0, :cond_1

    .line 5053
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>()V

    throw v0

    .line 5055
    :cond_1
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$14;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$14;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    .line 5066
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    int-to-long v4, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/b;JI)Lcom/google/android/gms/common/api/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    .line 906
    return-void
.end method

.method public final j(I)V
    .locals 5

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x()V

    .line 1023
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-nez v0, :cond_0

    .line 1025
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;-><init>()V

    throw v0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    int-to-long v2, p1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/b;JI)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$13;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$13;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    .line 1040
    return-void
.end method

.method protected final q()V
    .locals 2

    .prologue
    .line 209
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->x:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    .line 211
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2840
    sget-boolean v1, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a:Z

    if-eqz v1, :cond_0

    .line 2841
    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 2843
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$7;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$7;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 213
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 4

    .prologue
    .line 795
    .line 4129
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_0

    .line 4132
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/i;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B:Lcom/google/android/gms/cast/i;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/a$b;->a(Lcom/google/android/gms/common/api/b;Ljava/lang/String;Lcom/google/android/gms/cast/a$e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4204
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H:Lcom/google/android/gms/cast/a$e;

    if-eqz v0, :cond_1

    .line 4206
    :try_start_1
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/a$b;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l:Lcom/google/android/gms/common/api/b;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H:Lcom/google/android/gms/cast/a$e;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/a$b;->a(Lcom/google/android/gms/common/api/b;Ljava/lang/String;Lcom/google/android/gms/cast/a$e;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 797
    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->w()V

    .line 798
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method
