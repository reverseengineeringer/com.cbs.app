.class final Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/UpsellInfo;

.field final synthetic b:Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;Lcom/cbs/app/view/model/UpsellInfo;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$3;->b:Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$3;->a:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$3;->b:Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$3;->a:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/UpsellInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->a(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;Ljava/lang/String;)V

    .line 241
    return-void
.end method
