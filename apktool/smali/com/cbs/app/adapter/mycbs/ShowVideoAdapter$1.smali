.class final Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;


# direct methods
.method constructor <init>(Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$1;->a:Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 218
    sget-object v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->a:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    sget-object v1, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video pid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$1;->a:Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;

    invoke-static {v1}, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->a(Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/NavigationActivity;

    .line 223
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v2

    .line 224
    if-eqz v2, :cond_1

    .line 225
    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/NavigationActivity;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/model/VideoData;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    new-instance v2, Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-direct {v2, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;-><init>(Landroid/content/Context;)V

    .line 228
    new-instance v3, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$1$1;-><init>(Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$1;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/NavigationActivity;)V

    invoke-virtual {v2, v3}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->setShowServiceListener(Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;)V

    .line 239
    invoke-virtual {v2}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->getEverything()V

    goto :goto_0
.end method
