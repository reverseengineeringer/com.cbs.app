.class final Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

.field private b:I

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->a:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1592
    iput-object p3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->c:Landroid/os/Bundle;

    .line 1593
    iput p2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->b:I

    .line 1594
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->a:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)Lcom/adobe/adobepass/accessenabler/api/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1600
    const-string v0, "AccessEnablerService"

    const-string v1, "No implementation for the IAccessEnablerDelegate was provided."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :goto_0
    return-void

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->a:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1605
    const-string v0, "AccessEnablerService"

    const-string v1, "AccessEnabler context not initialized."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1611
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->a:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->f(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)[Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$a;

    move-result-object v0

    iget v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->c:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$a;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1612
    :catch_0
    move-exception v0

    .line 1613
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1614
    const-string v1, "AccessEnablerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in the worker thread. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
