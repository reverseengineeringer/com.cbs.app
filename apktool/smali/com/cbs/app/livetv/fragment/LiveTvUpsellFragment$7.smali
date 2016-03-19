.class final Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/UpsellInfo;

.field final synthetic b:Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Lcom/cbs/app/view/model/UpsellInfo;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$7;->b:Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$7;->a:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$7;->b:Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$7;->a:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Ljava/lang/String;)V

    .line 238
    return-void
.end method
