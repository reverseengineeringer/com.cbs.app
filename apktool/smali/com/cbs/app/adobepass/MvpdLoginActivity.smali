.class public Lcom/cbs/app/adobepass/MvpdLoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/adobepass/MvpdLoginActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/view/View;

.field private final c:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 99
    new-instance v0, Lcom/cbs/app/adobepass/MvpdLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/adobepass/MvpdLoginActivity$1;-><init>(Lcom/cbs/app/adobepass/MvpdLoginActivity;)V

    iput-object v0, p0, Lcom/cbs/app/adobepass/MvpdLoginActivity;->c:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/adobepass/MvpdLoginActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/adobepass/MvpdLoginActivity;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/cbs/app/adobepass/MvpdLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const v0, 0x7f030084

    invoke-virtual {p0, v0}, Lcom/cbs/app/adobepass/MvpdLoginActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f0f0227

    invoke-virtual {p0, v0}, Lcom/cbs/app/adobepass/MvpdLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cbs/app/adobepass/MvpdLoginActivity;->a:Landroid/webkit/WebView;

    .line 57
    iget-object v0, p0, Lcom/cbs/app/adobepass/MvpdLoginActivity;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/cbs/app/adobepass/MvpdLoginActivity;->c:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 58
    iget-object v0, p0, Lcom/cbs/app/adobepass/MvpdLoginActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/cbs/app/adobepass/MvpdLoginActivity$a;

    invoke-direct {v2, p0, v4}, Lcom/cbs/app/adobepass/MvpdLoginActivity$a;-><init>(Lcom/cbs/app/adobepass/MvpdLoginActivity;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 61
    iget-object v0, p0, Lcom/cbs/app/adobepass/MvpdLoginActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 67
    iget-object v0, p0, Lcom/cbs/app/adobepass/MvpdLoginActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/cbs/app/adobepass/MvpdLoginActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 69
    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 70
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 73
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    const v0, 0x7f0f0228

    invoke-virtual {p0, v0}, Lcom/cbs/app/adobepass/MvpdLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/adobepass/MvpdLoginActivity;->b:Landroid/view/View;

    .line 76
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Lcom/cbs/app/adobepass/MvpdLoginActivity;->finish()V

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
