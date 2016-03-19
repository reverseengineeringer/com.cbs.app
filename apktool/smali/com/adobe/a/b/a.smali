.class public final Lcom/adobe/a/b/a;
.super Lcom/adobe/a/b/b;
.source "SourceFile"


# instance fields
.field private c:Lcom/adobe/a/b/e;

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method protected constructor <init>(Lcom/adobe/a/b/e;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/adobe/a/b/b;-><init>(Lcom/adobe/a/b/f;)V

    .line 16
    iput-object v0, p0, Lcom/adobe/a/b/a;->c:Lcom/adobe/a/b/e;

    .line 17
    iput-object v0, p0, Lcom/adobe/a/b/a;->d:Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/a/b/a;->e:Z

    .line 33
    iput-object p1, p0, Lcom/adobe/a/b/a;->c:Lcom/adobe/a/b/e;

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/adobe/a/b/e;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final a()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/adobe/a/b/b;->a()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/adobe/a/b/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/a/b/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 37
    iput-object p1, p0, Lcom/adobe/a/b/a;->d:Landroid/content/Context;

    .line 39
    iget-boolean v0, p0, Lcom/adobe/a/b/a;->e:Z

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/adobe/a/b/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "ADMS_SuccessfulClose"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/adobe/a/b/a;->a(Ljava/lang/String;Z)V

    .line 44
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/adobe/a/b/a;->a(Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {p0}, Lcom/adobe/a/b/a;->e()V

    .line 47
    :cond_1
    iput-boolean v3, p0, Lcom/adobe/a/b/a;->e:Z

    .line 48
    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 119
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method

.method protected final a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 130
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    return-void
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method protected final b(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 124
    sget-object v0, Lcom/adobe/a/b/e;->b:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/adobe/a/b/a;->c:Lcom/adobe/a/b/e;

    iget-object v0, v0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/adobe/a/b/a;->c:Lcom/adobe/a/b/e;

    iget-object v1, v1, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 165
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 169
    const-string v0, ""

    goto :goto_0
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0, v2}, Lcom/adobe/a/b/a;->a(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {p0}, Lcom/adobe/a/b/a;->f()V

    .line 56
    iput-boolean v2, p0, Lcom/adobe/a/b/a;->e:Z

    .line 57
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/adobe/a/b/a;->c:Lcom/adobe/a/b/e;

    iget-object v0, v0, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/adobe/a/b/a;->c:Lcom/adobe/a/b/e;

    iget-object v1, v1, Lcom/adobe/a/b/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 181
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/adobe/a/b/e;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/adobe/a/b/e;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final d()V
    .locals 6

    .prologue
    .line 193
    .line 1090
    const-string v0, "ADMS_ReferrerProcessed"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    const-string v0, "utm_source"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    const-string v1, "utm_medium"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    const-string v2, "utm_term"

    invoke-virtual {p0, v2}, Lcom/adobe/a/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1094
    const-string v3, "utm_content"

    invoke-virtual {p0, v3}, Lcom/adobe/a/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1095
    const-string v4, "utm_campaign"

    invoke-virtual {p0, v4}, Lcom/adobe/a/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1097
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 1099
    const-string v5, "a.referrer.campaign.source"

    invoke-virtual {p0, v0, v5}, Lcom/adobe/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v0, "a.referrer.campaign.medium"

    invoke-virtual {p0, v1, v0}, Lcom/adobe/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v0, "a.referrer.campaign.term"

    invoke-virtual {p0, v2, v0}, Lcom/adobe/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v0, "a.referrer.campaign.content"

    invoke-virtual {p0, v3, v0}, Lcom/adobe/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v0, "a.referrer.campaign.name"

    invoke-virtual {p0, v4, v0}, Lcom/adobe/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v0, "ADMS_ReferrerProcessed"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/a/b/a;->a(Ljava/lang/String;Z)V

    .line 194
    :cond_0
    return-void
.end method

.method protected final e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/adobe/a/b/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    sget-object v0, Lcom/adobe/a/b/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method
