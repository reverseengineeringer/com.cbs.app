.class final Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;->a:Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;B)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;-><init>(Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->h:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;->a:Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->d()V

    .line 83
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 66
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->h:Ljava/lang/String;

    .line 67
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;->b:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;->a:Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->b()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 70
    new-instance v1, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a$1;-><init>(Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;->b:Z

    .line 78
    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->h:Ljava/lang/String;

    .line 61
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
