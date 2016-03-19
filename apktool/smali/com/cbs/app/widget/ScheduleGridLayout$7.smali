.class final Lcom/cbs/app/widget/ScheduleGridLayout$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/view/model/VideoData;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/VideoData;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/cbs/app/widget/ScheduleGridLayout;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/ScheduleGridLayout;Lcom/cbs/app/view/model/VideoData;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->c:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-object p2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->a:Lcom/cbs/app/view/model/VideoData;

    iput-object p3, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 978
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video link : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->c:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->c:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v0

    .line 982
    if-eqz v0, :cond_0

    .line 983
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentNavShow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 984
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->c:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 985
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->c:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0, v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/view/model/VideoData;)V

    .line 986
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$7;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 991
    :cond_0
    return-void
.end method
