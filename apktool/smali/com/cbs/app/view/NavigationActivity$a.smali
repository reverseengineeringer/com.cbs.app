.class final Lcom/cbs/app/view/NavigationActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/NavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/NavigationActivity;


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/NavigationActivity;)V
    .locals 0

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/cbs/app/view/NavigationActivity$a;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/NavigationActivity;B)V
    .locals 0

    .prologue
    .line 1214
    invoke-direct {p0, p1}, Lcom/cbs/app/view/NavigationActivity$a;-><init>(Lcom/cbs/app/view/NavigationActivity;)V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1218
    if-nez p3, :cond_2

    .line 1219
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$a;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1220
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$a;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->m()V

    .line 1221
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setIsPlayerActive(Z)V

    .line 1227
    :cond_0
    invoke-static {v1}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 1228
    invoke-static {v1}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1229
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 1231
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$a;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;)V

    .line 1236
    :cond_1
    :goto_0
    return-void

    .line 1234
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$a;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0, p3}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/NavigationActivity;I)V

    goto :goto_0
.end method
