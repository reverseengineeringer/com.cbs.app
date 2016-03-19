.class final Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a()Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->b(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 350
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;Lcom/cbs/app/view/model/VideoData;)V

    .line 351
    return-void
.end method
