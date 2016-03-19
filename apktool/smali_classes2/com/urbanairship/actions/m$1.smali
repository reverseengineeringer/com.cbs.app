.class final Lcom/urbanairship/actions/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/m;->c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/richpush/c;

.field final synthetic b:Lcom/urbanairship/actions/m;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/m;Lcom/urbanairship/richpush/c;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/urbanairship/actions/m$1;->b:Lcom/urbanairship/actions/m;

    iput-object p2, p0, Lcom/urbanairship/actions/m$1;->a:Lcom/urbanairship/richpush/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/high16 v4, 0x30000000

    .line 110
    iget-object v0, p0, Lcom/urbanairship/actions/m$1;->a:Lcom/urbanairship/richpush/c;

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/m$1;->a:Lcom/urbanairship/richpush/c;

    .line 1128
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v1}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 1134
    const-string v2, "com.urbanairship.VIEW_RICH_PUSH_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1138
    const-string v2, "com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1142
    const-string v0, "Unable to view the inbox message. Add the intent filter to an activity that can handle viewing an inbox message: <intent-filter><action android:name=\"com.urbanairship.VIEW_RICH_PUSH_MESSAGE\" /><data android:scheme=\"message\"/><category android:name=\"android.intent.category.DEFAULT\" /></intent-filter>"

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 2171
    :goto_0
    return-void

    .line 1152
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    .line 2161
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.VIEW_RICH_PUSH_INBOX"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 2165
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2166
    const-string v0, "Unable to view the inbox. Add the intent filter to an activity that can handle viewing the inbox: <intent-filter><action android:name=\"com.urbanairship.VIEW_RICH_PUSH_INBOX\" /><category android:name=\"android.intent.category.DEFAULT\" /></intent-filter>"

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2174
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
