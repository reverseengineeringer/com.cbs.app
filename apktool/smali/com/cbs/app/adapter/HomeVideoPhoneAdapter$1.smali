.class final Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;


# direct methods
.method constructor <init>(Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1;->a:Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1;->a:Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;

    invoke-static {v1}, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->a(Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/NavigationActivity;

    .line 83
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/NavigationActivity;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/model/VideoData;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v2, Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-direct {v2, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v3, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1$1;-><init>(Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/NavigationActivity;)V

    invoke-virtual {v2, v3}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->setShowServiceListener(Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;)V

    .line 101
    invoke-virtual {v2}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->getEverything()V

    goto :goto_0
.end method
