.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2572
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$37;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$37;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2575
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 2576
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$37;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2577
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$37;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2578
    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setLoginIsShowing(Z)V

    .line 2579
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$37;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;)V

    .line 2580
    return-void
.end method
