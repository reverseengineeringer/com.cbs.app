.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$11;
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
    .line 1009
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$11;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1012
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1013
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$11;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getShowData()V

    .line 1014
    return-void
.end method
