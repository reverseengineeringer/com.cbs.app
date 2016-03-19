.class final Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/livetv/model/UserStatusEnum;

.field final synthetic c:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;Ljava/lang/String;Lcom/cbs/app/livetv/model/UserStatusEnum;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$3;->c:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$3;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$3;->c:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$3;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;Ljava/lang/String;Lcom/cbs/app/livetv/model/UserStatusEnum;)V

    .line 263
    return-void
.end method
