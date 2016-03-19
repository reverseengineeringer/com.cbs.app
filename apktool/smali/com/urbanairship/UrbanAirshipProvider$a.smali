.class final Lcom/urbanairship/UrbanAirshipProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/UrbanAirshipProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/urbanairship/d/b;

.field final b:Ljava/lang/String;

.field final c:Landroid/net/Uri;

.field final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/urbanairship/d/b;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/urbanairship/UrbanAirshipProvider$a;->a:Lcom/urbanairship/d/b;

    .line 346
    iput-object p2, p0, Lcom/urbanairship/UrbanAirshipProvider$a;->b:Ljava/lang/String;

    .line 347
    iput-object p3, p0, Lcom/urbanairship/UrbanAirshipProvider$a;->c:Landroid/net/Uri;

    .line 348
    iput-object p4, p0, Lcom/urbanairship/UrbanAirshipProvider$a;->d:Ljava/lang/String;

    .line 349
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$a;
    .locals 5

    .prologue
    .line 358
    new-instance v0, Lcom/urbanairship/o;

    invoke-direct {v0, p0}, Lcom/urbanairship/o;-><init>(Landroid/content/Context;)V

    .line 359
    new-instance v1, Lcom/urbanairship/UrbanAirshipProvider$a;

    const-string v2, "richpush"

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "message_id"

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$a;-><init>(Lcom/urbanairship/d/b;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method

.method static b(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$a;
    .locals 5

    .prologue
    .line 370
    new-instance v0, Lcom/urbanairship/m;

    invoke-direct {v0, p0}, Lcom/urbanairship/m;-><init>(Landroid/content/Context;)V

    .line 371
    new-instance v1, Lcom/urbanairship/UrbanAirshipProvider$a;

    const-string v2, "preferences"

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->c()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id"

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$a;-><init>(Lcom/urbanairship/d/b;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method final a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider$a;->c:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v2, v3}, Lcom/urbanairship/d/h;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UrbanAirshipProvider - Notifying of change to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 386
    return-void
.end method
