.class public final Lcom/adobe/a/b/e;
.super Lcom/adobe/a/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/a/b/e$a;
    }
.end annotation


# static fields
.field private static A:Lcom/adobe/a/b/a;

.field private static volatile B:Z

.field static b:Landroid/content/SharedPreferences;

.field static c:Landroid/content/SharedPreferences$Editor;

.field private static u:Ljava/lang/Integer;

.field private static v:Lcom/adobe/a/b/i;


# instance fields
.field protected a:Landroid/content/Context;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/adobe/a/b/e;->u:Ljava/lang/Integer;

    .line 33
    sput-object v1, Lcom/adobe/a/b/e;->v:Lcom/adobe/a/b/i;

    .line 40
    sput-object v1, Lcom/adobe/a/b/e;->A:Lcom/adobe/a/b/a;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/a/b/e;->B:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/adobe/a/b/f;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/adobe/a/b/e;->w:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/adobe/a/b/e;->x:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/adobe/a/b/e;->y:Ljava/lang/String;

    .line 38
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/adobe/a/b/e;->z:Ljava/lang/String;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/adobe/a/b/e;-><init>()V

    return-void
.end method

.method public static a()Lcom/adobe/a/b/e;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/adobe/a/b/e$a;->a:Lcom/adobe/a/b/e;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/adobe/a/b/e;
    .locals 1

    .prologue
    .line 1052
    sget-object v0, Lcom/adobe/a/b/e$a;->a:Lcom/adobe/a/b/e;

    .line 62
    invoke-static {p0}, Lcom/adobe/a/b/e;->d(Landroid/content/Context;)V

    .line 64
    sget-object v0, Lcom/adobe/a/b/e$a;->a:Lcom/adobe/a/b/e;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2052
    sget-object v1, Lcom/adobe/a/b/e$a;->a:Lcom/adobe/a/b/e;

    .line 84
    if-eqz p0, :cond_5

    sget-boolean v2, Lcom/adobe/a/b/e;->B:Z

    if-nez v2, :cond_5

    .line 85
    monitor-enter v1

    .line 86
    :try_start_0
    iput-object p0, v1, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    .line 87
    sget-object v2, Lcom/adobe/a/b/e;->A:Lcom/adobe/a/b/a;

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Lcom/adobe/a/b/a;

    invoke-direct {v2, v1}, Lcom/adobe/a/b/a;-><init>(Lcom/adobe/a/b/e;)V

    sput-object v2, Lcom/adobe/a/b/e;->A:Lcom/adobe/a/b/a;

    .line 90
    :cond_0
    sget-object v2, Lcom/adobe/a/b/e;->v:Lcom/adobe/a/b/i;

    if-nez v2, :cond_1

    .line 91
    new-instance v2, Lcom/adobe/a/b/i;

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "AppMeasurementOfflineCacheDatabase.sqlite"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/a/b/i;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/adobe/a/b/e;->v:Lcom/adobe/a/b/i;

    .line 93
    :cond_1
    iget-object v2, v1, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    const-string v3, "APP_MEASUREMENT_CACHE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 94
    sput-object v2, Lcom/adobe/a/b/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-object v2, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    .line 2337
    iget-object v2, v1, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 2338
    sget-object v0, Lcom/adobe/a/b/e;->b:Landroid/content/SharedPreferences;

    const-string v2, "APP_MEASUREMENT_VISITOR_ID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_2
    iput-object v0, v1, Lcom/adobe/a/b/e;->e:Ljava/lang/String;

    .line 97
    iget-object v0, v1, Lcom/adobe/a/b/e;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2347
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 98
    iput-object v0, v1, Lcom/adobe/a/b/e;->e:Ljava/lang/String;

    .line 99
    iget-object v0, v1, Lcom/adobe/a/b/e;->e:Ljava/lang/String;

    .line 3327
    iget-object v2, v1, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 3328
    sget-object v2, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "APP_MEASUREMENT_VISITOR_ID"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3329
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    :cond_3
    sget-object v0, Lcom/adobe/a/b/e;->v:Lcom/adobe/a/b/i;

    invoke-virtual {v0}, Lcom/adobe/a/b/i;->a()V

    .line 104
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Mozilla/5.0 (Linux; U; Android "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3374
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3357
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v1}, Lcom/adobe/a/b/e;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4288
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3357
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Build/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/a/b/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    iput-object v0, v1, Lcom/adobe/a/b/e;->q:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ADMS_OfflineCache.offline"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    sget-object v1, Lcom/adobe/a/b/e;->v:Lcom/adobe/a/b/i;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/a/b/i;->c(Ljava/lang/String;)V

    .line 112
    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/a/b/e;->B:Z

    .line 114
    :cond_5
    return-void

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 124
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/a/b/e;->c(Landroid/content/Context;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    if-eqz p0, :cond_0

    .line 129
    invoke-static {p0}, Lcom/adobe/a/b/e;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/a/b/e;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 365
    const-string v0, "en-US"

    iput-object v0, p0, Lcom/adobe/a/b/e;->y:Ljava/lang/String;

    .line 370
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/a/b/e;->y:Ljava/lang/String;

    return-object v0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/a/b/e;->y:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/adobe/a/b/e;->h:Z

    if-eqz v0, :cond_0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    const-string v1, "\tUser-Agent\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/adobe/a/b/e;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, "\tAccept-Language\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-direct {p0}, Lcom/adobe/a/b/e;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    sget-object v1, Lcom/adobe/a/b/e;->v:Lcom/adobe/a/b/i;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/a/b/i;->a(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/adobe/a/b/e;->A:Lcom/adobe/a/b/a;

    iget-object v1, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adobe/a/b/a;->b(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 146
    invoke-static {p1}, Lcom/adobe/a/b/e;->d(Landroid/content/Context;)V

    .line 148
    sget-object v0, Lcom/adobe/a/b/e;->A:Lcom/adobe/a/b/a;

    iget-object v1, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adobe/a/b/a;->a(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adobe/a/b/e;->w:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/a/b/e;->w:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/a/b/e;->w:Ljava/lang/String;

    return-object v0

    .line 254
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 260
    invoke-static {v0}, Lcom/adobe/a/b/e;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/adobe/a/b/e;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/a/b/e;->w:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    .line 266
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/a/b/e;->w:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_2
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/adobe/a/b/e;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 277
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/a/b/e;->x:Ljava/lang/String;

    .line 283
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/a/b/e;->x:Ljava/lang/String;

    return-object v0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/a/b/e;->x:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4374
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 299
    const-string v0, ""

    .line 302
    :goto_0
    return-object v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 302
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/adobe/a/b/e;->z:Ljava/lang/String;

    return-object v0
.end method
