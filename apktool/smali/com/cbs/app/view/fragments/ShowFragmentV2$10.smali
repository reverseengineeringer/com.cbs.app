.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/ShowFragmentV2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/ShowFragmentV2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$10;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1018
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1019
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$10;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->F(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$10;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->G(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 1021
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    .line 1023
    :cond_0
    return-void
.end method
