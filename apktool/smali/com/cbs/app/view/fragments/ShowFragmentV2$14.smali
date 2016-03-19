.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/ShowFragmentV2;
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
    .line 208
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$14;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$14;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    .line 213
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$14;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e()V

    .line 214
    return-void
.end method
