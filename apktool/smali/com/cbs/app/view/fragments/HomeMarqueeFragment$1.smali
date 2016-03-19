.class final Lcom/cbs/app/view/fragments/HomeMarqueeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/HomeMarqueeFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/HomeMarqueeFragment;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeMarqueeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeMarqueeFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeMarqueeFragment$1;->a:Lcom/cbs/app/view/fragments/HomeMarqueeFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->a(Lcom/cbs/app/view/fragments/HomeMarqueeFragment;)Lcom/cbs/app/view/model/DeviceHome;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->b(Lcom/cbs/app/view/model/DeviceHome;)V

    .line 122
    return-void
.end method
