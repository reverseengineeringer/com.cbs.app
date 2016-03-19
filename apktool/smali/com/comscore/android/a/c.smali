.class public final Lcom/comscore/android/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static d:Z

.field private static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0123456789ABCDEF"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "0123456789abcdef"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "9774d56d682e549c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "9774D56D682E549C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ANDROID_ID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/comscore/android/a/c;->a:[Ljava/lang/String;

    sput-boolean v3, Lcom/comscore/android/a/c;->d:Z

    const-string v0, "com.google.android.gms"

    sput-object v0, Lcom/comscore/android/a/c;->b:Ljava/lang/String;

    const-string v0, "com.google.android.gms.ads.identifier.service.START"

    sput-object v0, Lcom/comscore/android/a/c;->c:Ljava/lang/String;

    sput-boolean v3, Lcom/comscore/android/a/c;->e:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v2, Lcom/comscore/android/a/c;->d:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v2, Lcom/comscore/android/a/d;

    invoke-direct {v2, v0}, Lcom/comscore/android/a/d;-><init>(B)V

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/comscore/android/a/c;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/comscore/android/a/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    new-instance v3, Lcom/comscore/android/a/e;

    invoke-virtual {v2}, Lcom/comscore/android/a/d;->a()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/comscore/android/a/e;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3}, Lcom/comscore/android/a/e;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_4
    :goto_1
    if-nez v0, :cond_1

    sput-boolean v1, Lcom/comscore/android/a/c;->d:Z

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public static final b(Landroid/content/Context;)Lcom/comscore/android/a/b;
    .locals 2

    .prologue
    .line 0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    sget-boolean v0, Lcom/comscore/android/a/c;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 0
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/comscore/android/a/c;->f(Landroid/content/Context;)Lcom/comscore/android/a/b;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1000
    :cond_1
    invoke-static {p0}, Lcom/comscore/android/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_3
    invoke-static {p0}, Lcom/comscore/android/a/c;->c(Landroid/content/Context;)Lcom/comscore/android/a/b;

    move-result-object v0

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Lcom/comscore/android/a/b;
    .locals 8

    .prologue
    const/16 v2, 0x9

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x0

    .line 2000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 3000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 2000
    :goto_0
    new-instance v2, Lcom/comscore/android/a/b;

    const-string v5, "AndroidSerial"

    invoke-direct {v2, v5, v0, v7, v4}, Lcom/comscore/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    move-object v0, v2

    .line 0
    :goto_1
    invoke-virtual {v0}, Lcom/comscore/android/a/b;->a()Ljava/lang/String;

    move-result-object v5

    .line 4000
    if-eqz v5, :cond_3

    move v2, v3

    :goto_2
    sget-object v6, Lcom/comscore/android/a/c;->a:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    sget-object v6, Lcom/comscore/android/a/c;->a:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move-object v0, v1

    .line 3000
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2000
    goto :goto_1

    .line 4000
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_3

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "***"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 0
    :goto_3
    if-nez v2, :cond_7

    .line 5000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/comscore/android/a/b;

    const-string v5, "AndroidId"

    const/4 v6, 0x7

    const/4 v7, 0x2

    invoke-direct {v0, v5, v2, v6, v7}, Lcom/comscore/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 0
    :goto_4
    invoke-virtual {v0}, Lcom/comscore/android/a/b;->a()Ljava/lang/String;

    move-result-object v5

    move v2, v3

    .line 6000
    :goto_5
    sget-object v6, Lcom/comscore/android/a/c;->a:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_6

    sget-object v6, Lcom/comscore/android/a/c;->a:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 0
    :goto_6
    if-nez v3, :cond_7

    :goto_7
    return-object v1

    :cond_3
    move v2, v3

    .line 4000
    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 5000
    goto :goto_4

    .line 6000
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v3, v4

    goto :goto_6

    :cond_7
    move-object v1, v0

    .line 0
    goto :goto_7
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/comscore/android/a/d;

    invoke-direct {v2, v0}, Lcom/comscore/android/a/d;-><init>(B)V

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/comscore/android/a/c;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/comscore/android/a/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, ""

    new-instance v1, Lcom/comscore/android/a/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/comscore/android/a/d;-><init>(B)V

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/comscore/android/a/c;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/comscore/android/a/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Lcom/comscore/android/a/e;

    invoke-virtual {v1}, Lcom/comscore/android/a/d;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/comscore/android/a/e;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2}, Lcom/comscore/android/a/e;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method private static f(Landroid/content/Context;)Lcom/comscore/android/a/b;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/comscore/android/a/c;->d(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/comscore/android/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/comscore/android/a/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/comscore/android/a/b;

    invoke-direct {v1, v0}, Lcom/comscore/android/a/b;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    const-string v0, "none"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
