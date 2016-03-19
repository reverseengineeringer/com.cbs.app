.class final Lcom/cbs/app/view/SubscriptionActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SubscriptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/cbs/app/view/SubscriptionActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SubscriptionActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/cbs/app/view/SubscriptionActivity$2;->b:Lcom/cbs/app/view/SubscriptionActivity;

    iput-object p2, p0, Lcom/cbs/app/view/SubscriptionActivity$2;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$2;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
