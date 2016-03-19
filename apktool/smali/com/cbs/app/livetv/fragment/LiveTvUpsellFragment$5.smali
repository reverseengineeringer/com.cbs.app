.class final Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$5;
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
    .line 202
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$5;->b:Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$5;->a:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$5;->b:Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$5;->a:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/UpsellInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;Ljava/lang/String;)V

    .line 206
    return-void
.end method
