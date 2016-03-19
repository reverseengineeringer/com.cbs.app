.class final Lcom/urbanairship/push/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 6

    .prologue
    .line 57
    invoke-static {}, Lcom/urbanairship/push/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/a;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/a;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/a;->d()Ljava/util/Set;

    move-result-object v2

    .line 65
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->f()Lcom/urbanairship/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/k;->r()Ljava/util/Set;

    move-result-object v0

    .line 68
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GCMRegistrar - Unregistering GCM Sender IDs:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/gcm/a;->a()V

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "GCMRegistrar - Registering GCM Sender IDs:  "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/iid/a;->b(Landroid/content/Context;)Lcom/google/android/gms/iid/a;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v3

    iget-object v3, v3, Lcom/urbanairship/a;->h:Ljava/lang/String;

    const-string v4, "GCM"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/iid/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GCM registration successful security token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registration ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/urbanairship/push/j;->e(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/j;->c(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->f()Lcom/urbanairship/push/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/k;->b(Ljava/util/Set;)V

    .line 86
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private static b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-static {}, Lcom/urbanairship/google/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const-string v1, "Google Play services for GCM is unavailable."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 132
    :goto_0
    return v0

    .line 102
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    const-string v1, "Google Play services is currently unavailable."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to register with GCM:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    const-string v1, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v1}, Lcom/urbanairship/d/d;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 116
    const-string v1, "com.google.android.c2dm.permission.RECEIVE is unknown to PackageManager. Note that an AVD emulator may not support GCM."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 119
    const-string v1, "If you\'re running in an emulator, you need to install the appropriate image through the Android SDK and AVM manager. See http://developer.android.com/guide/google/gcm/ for further details."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/a;->h:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 128
    const-string v1, "The GCM sender ID is not set. Unable to register."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
