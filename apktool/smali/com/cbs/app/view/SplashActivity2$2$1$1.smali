.class final Lcom/cbs/app/view/SplashActivity2$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SplashActivity2$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SplashActivity2$2$1;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2$2$1;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 950
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    const-class v2, Lcom/cbs/app/view/NavigationActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 952
    sget-boolean v0, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 954
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    :cond_0
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 957
    const-string v0, "homeMarquee"

    iget-object v2, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v2, v2, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v2, v2, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v2}, Lcom/cbs/app/view/SplashActivity2;->l(Lcom/cbs/app/view/SplashActivity2;)[Lcom/cbs/app/view/model/DeviceHome;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 958
    const-string v0, "episodeSchedule"

    iget-object v2, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v2, v2, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v2, v2, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v2}, Lcom/cbs/app/view/SplashActivity2;->m(Lcom/cbs/app/view/SplashActivity2;)[Lcom/cbs/app/view/model/Episode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 959
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->n(Lcom/cbs/app/view/SplashActivity2;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 960
    const-string v2, "tonightEpisodes"

    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->n(Lcom/cbs/app/view/SplashActivity2;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v3, v3, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v3, v3, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v3}, Lcom/cbs/app/view/SplashActivity2;->n(Lcom/cbs/app/view/SplashActivity2;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/cbs/app/view/model/Episode;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 975
    :cond_1
    const v0, 0x10008000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 976
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/SplashActivity2;->startActivity(Landroid/content/Intent;)V

    .line 977
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0, v4, v4}, Lcom/cbs/app/view/SplashActivity2;->overridePendingTransition(II)V

    .line 978
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 979
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->finish()V

    .line 980
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2$1$1;->a:Lcom/cbs/app/view/SplashActivity2$2$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0, v4, v4}, Lcom/cbs/app/view/SplashActivity2;->overridePendingTransition(II)V

    .line 982
    return-void
.end method
