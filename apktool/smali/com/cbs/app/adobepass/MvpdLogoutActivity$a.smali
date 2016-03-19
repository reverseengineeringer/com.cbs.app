.class final Lcom/cbs/app/adobepass/MvpdLogoutActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/adobepass/MvpdLogoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/adobepass/MvpdLogoutActivity;


# direct methods
.method private constructor <init>(Lcom/cbs/app/adobepass/MvpdLogoutActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cbs/app/adobepass/MvpdLogoutActivity$a;->a:Lcom/cbs/app/adobepass/MvpdLogoutActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/adobepass/MvpdLogoutActivity;B)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/cbs/app/adobepass/MvpdLogoutActivity$a;-><init>(Lcom/cbs/app/adobepass/MvpdLogoutActivity;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 95
    iget-object v0, p0, Lcom/cbs/app/adobepass/MvpdLogoutActivity$a;->a:Lcom/cbs/app/adobepass/MvpdLogoutActivity;

    invoke-static {v0}, Lcom/cbs/app/adobepass/MvpdLogoutActivity;->a(Lcom/cbs/app/adobepass/MvpdLogoutActivity;)Landroid/view/View;

    move-result-object v1

    if-lez p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
