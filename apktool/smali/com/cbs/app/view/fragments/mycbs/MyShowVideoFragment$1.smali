.class final Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i()Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$VideoDataHolder;

    .line 84
    iget-object v0, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$VideoDataHolder;->b:Lcom/cbs/app/view/model/VideoData;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 89
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;Lcom/cbs/app/view/model/VideoData;)V

    .line 92
    :cond_0
    return-void
.end method
