.class public final Lcom/urbanairship/google/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/Boolean;


# direct methods
.method public static a()Z
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/urbanairship/google/a;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 135
    :try_start_0
    const-string v0, "com.google.android.gms.common.e"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/google/a;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    sget-object v0, Lcom/urbanairship/google/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 138
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/google/a;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    sget-object v0, Lcom/urbanairship/google/a;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lcom/urbanairship/google/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/google/a;->b:Ljava/lang/Boolean;

    .line 165
    :cond_0
    :goto_0
    sget-object v0, Lcom/urbanairship/google/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 156
    :cond_1
    :try_start_0
    const-string v0, "com.google.android.gms.gcm.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 157
    const-string v0, "com.google.android.gms.gcm.GcmReceiver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/google/a;->b:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/google/a;->b:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    sget-object v0, Lcom/urbanairship/google/a;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/urbanairship/google/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/google/a;->c:Ljava/lang/Boolean;

    .line 198
    :cond_0
    :goto_0
    sget-object v0, Lcom/urbanairship/google/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 190
    :cond_1
    :try_start_0
    const-string v0, "com.google.android.gms.location.h"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 191
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/google/a;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/google/a;->c:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static d()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-static {}, Lcom/urbanairship/p;->d()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 210
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.vending"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.market"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :cond_1
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
