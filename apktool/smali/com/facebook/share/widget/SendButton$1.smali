.class Lcom/facebook/share/widget/SendButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/SendButton;->getShareOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/SendButton;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/SendButton;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/share/widget/SendButton$1;->this$0:Lcom/facebook/share/widget/SendButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/widget/SendButton$1;->this$0:Lcom/facebook/share/widget/SendButton;

    # invokes: Lcom/facebook/share/widget/SendButton;->callExternalOnClickListener(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/facebook/share/widget/SendButton;->access$000(Lcom/facebook/share/widget/SendButton;Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/share/widget/SendButton$1;->this$0:Lcom/facebook/share/widget/SendButton;

    invoke-virtual {v0}, Lcom/facebook/share/widget/SendButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    iget-object v1, p0, Lcom/facebook/share/widget/SendButton$1;->this$0:Lcom/facebook/share/widget/SendButton;

    invoke-virtual {v1}, Lcom/facebook/share/widget/SendButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/widget/SendButton$1;->this$0:Lcom/facebook/share/widget/SendButton;

    invoke-virtual {v2}, Lcom/facebook/share/widget/SendButton;->getRequestCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/support/v4/app/Fragment;I)V

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/facebook/share/widget/SendButton$1;->this$0:Lcom/facebook/share/widget/SendButton;

    invoke-virtual {v1}, Lcom/facebook/share/widget/SendButton;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    iget-object v1, p0, Lcom/facebook/share/widget/SendButton$1;->this$0:Lcom/facebook/share/widget/SendButton;

    # invokes: Lcom/facebook/share/widget/SendButton;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/share/widget/SendButton;->access$100(Lcom/facebook/share/widget/SendButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/widget/SendButton$1;->this$0:Lcom/facebook/share/widget/SendButton;

    invoke-virtual {v2}, Lcom/facebook/share/widget/SendButton;->getRequestCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;I)V

    goto :goto_0
.end method
