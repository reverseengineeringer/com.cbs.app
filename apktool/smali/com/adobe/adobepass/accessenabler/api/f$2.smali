.class final Lcom/adobe/adobepass/accessenabler/api/f$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/api/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/adobepass/accessenabler/api/f;


# direct methods
.method constructor <init>(Lcom/adobe/adobepass/accessenabler/api/f;)V
    .locals 2

    .prologue
    const-wide/32 v0, 0x1d4c0

    .line 137
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/api/f$2;->a:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 4

    .prologue
    .line 143
    const-string v0, "PassiveAuthnService"

    const-string v1, "Timer - Time has elapsed."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f$2;->a:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/f;->a(Lcom/adobe/adobepass/accessenabler/api/f;)Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    if-ne v0, v1, :cond_0

    .line 145
    const-string v0, "PassiveAuthnService"

    const-string v1, "Timer - Ending passive flow."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f$2;->a:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/f;->d(Lcom/adobe/adobepass/accessenabler/api/f;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/f$2;->a:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-static {v1}, Lcom/adobe/adobepass/accessenabler/api/f;->c(Lcom/adobe/adobepass/accessenabler/api/f;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string v2, "op_code"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/f$2;->a:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-static {v1}, Lcom/adobe/adobepass/accessenabler/api/f;->c(Lcom/adobe/adobepass/accessenabler/api/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 153
    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
