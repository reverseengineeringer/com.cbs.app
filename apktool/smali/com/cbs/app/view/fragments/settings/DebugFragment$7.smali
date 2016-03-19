.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$7;
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
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$7;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 455
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$7;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$7;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$7;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(Lcom/cbs/app/view/fragments/settings/DebugFragment;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 456
    return-void
.end method
