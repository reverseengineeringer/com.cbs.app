.class final Lcom/cbs/app/view/fragments/TOUDialogFragment$3;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/TOUDialogFragment;->a(Landroid/text/Spannable;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/view/fragments/TOUDialogFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/TOUDialogFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$3;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->a()Ljava/lang/String;

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$3;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$3;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method
