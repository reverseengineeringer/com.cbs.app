.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$28;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$28;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Channel Id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$28;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$28;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    const-string v2, "Share Push Channel Id"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->startActivity(Landroid/content/Intent;)V

    .line 261
    return-void
.end method
