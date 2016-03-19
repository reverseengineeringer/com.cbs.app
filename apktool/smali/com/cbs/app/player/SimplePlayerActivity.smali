.class public Lcom/cbs/app/player/SimplePlayerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View$OnTouchListener;

.field b:Landroid/os/Handler;

.field c:Ljava/lang/Runnable;

.field private d:Lcom/cbs/app/player/SystemUiHider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Lcom/cbs/app/player/SimplePlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/player/SimplePlayerActivity$1;-><init>(Lcom/cbs/app/player/SimplePlayerActivity;)V

    iput-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity;->a:Landroid/view/View$OnTouchListener;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity;->b:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/cbs/app/player/SimplePlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/player/SimplePlayerActivity$2;-><init>(Lcom/cbs/app/player/SimplePlayerActivity;)V

    iput-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity;->c:Ljava/lang/Runnable;

    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cbs/app/player/SimplePlayerActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cbs/app/player/SimplePlayerActivity;->c:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/player/SimplePlayerActivity;)V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xfa0

    invoke-direct {p0, v0}, Lcom/cbs/app/player/SimplePlayerActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/cbs/app/player/SimplePlayerActivity;)Lcom/cbs/app/player/SystemUiHider;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity;->d:Lcom/cbs/app/player/SystemUiHider;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0f00a4

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/cbs/app/player/SimplePlayerActivity;->setContentView(I)V

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/cbs/app/player/SimplePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    const-string v2, "videoUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 86
    :cond_0
    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p0, v4}, Lcom/cbs/app/player/SimplePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    invoke-static {p0, v0}, Lcom/cbs/app/player/SystemUiHider;->a(Landroid/app/Activity;Landroid/view/View;)Lcom/cbs/app/player/SystemUiHider;

    move-result-object v2

    iput-object v2, p0, Lcom/cbs/app/player/SimplePlayerActivity;->d:Lcom/cbs/app/player/SystemUiHider;

    .line 92
    iget-object v2, p0, Lcom/cbs/app/player/SimplePlayerActivity;->d:Lcom/cbs/app/player/SystemUiHider;

    invoke-virtual {v2}, Lcom/cbs/app/player/SystemUiHider;->a()V

    .line 93
    iget-object v2, p0, Lcom/cbs/app/player/SimplePlayerActivity;->d:Lcom/cbs/app/player/SystemUiHider;

    new-instance v3, Lcom/cbs/app/player/SimplePlayerActivity$3;

    invoke-direct {v3, p0}, Lcom/cbs/app/player/SimplePlayerActivity$3;-><init>(Lcom/cbs/app/player/SimplePlayerActivity;)V

    invoke-virtual {v2, v3}, Lcom/cbs/app/player/SystemUiHider;->setOnVisibilityChangeListener(Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;)V

    .line 134
    new-instance v2, Lcom/cbs/app/player/SimplePlayerActivity$4;

    invoke-direct {v2, p0}, Lcom/cbs/app/player/SimplePlayerActivity$4;-><init>(Lcom/cbs/app/player/SimplePlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0, v4}, Lcom/cbs/app/player/SimplePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/cbs/app/player/SimplePlayerActivity;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    const v0, 0x7f0f00a4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/cbs/app/player/SimplePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 154
    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v2, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 156
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 159
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    const-string v0, "Error with URL or with connecting."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 166
    :cond_1
    const-string v0, "You must provide a url."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    invoke-virtual {p0}, Lcom/cbs/app/player/SimplePlayerActivity;->finish()V

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 177
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/cbs/app/player/SimplePlayerActivity;->a(I)V

    .line 178
    return-void
.end method
