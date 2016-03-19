.class final Lcom/cbs/app/view/TwitterWebOAuthActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/TwitterWebOAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/TwitterWebOAuthActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/TwitterWebOAuthActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$1;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 153
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$1;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->finish()V

    .line 154
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$1;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DATE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method
