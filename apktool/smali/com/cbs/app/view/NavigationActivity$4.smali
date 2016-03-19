.class final Lcom/cbs/app/view/NavigationActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/menu/MenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/NavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/NavigationActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/menu/CBSMenuItem;)V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p1, Lcom/cbs/app/view/menu/CBSMenuItem;->a:Ljava/lang/String;

    const-string v1, "Shop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->l()V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.cbsstore.com/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    sget-object v2, Lcom/cbs/app/analytics/Action;->ci:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/cbs/app/view/NavigationActivity;->o()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selected() peek = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/cbs/app/view/menu/CBSMenuItem;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p1, Lcom/cbs/app/view/menu/CBSMenuItem;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    iget-object v2, p1, Lcom/cbs/app/view/menu/CBSMenuItem;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    iget-object v2, p1, Lcom/cbs/app/view/menu/CBSMenuItem;->c:Ljava/lang/Class;

    iget-object v3, p1, Lcom/cbs/app/view/menu/CBSMenuItem;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/cbs/app/view/NavigationActivity;->a(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 168
    :cond_2
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    iget-object v1, v1, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->l()V

    .line 170
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    iget-object v0, v0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    const-string v1, "My CBS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/cbs/app/analytics/Action;->z:Lcom/cbs/app/analytics/Action;

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 173
    const-string v2, "appState"

    const-string v3, "cbscom:Homescreen"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 178
    :cond_3
    invoke-static {}, Lcom/cbs/app/view/NavigationActivity;->o()Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$4;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->m()V

    goto/16 :goto_0
.end method
