.class final Lcom/cbs/app/widget/ScheduleGridLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/view/model/Episode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/Episode;

.field final synthetic b:Lcom/cbs/app/widget/ScheduleGridLayout;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/ScheduleGridLayout;Lcom/cbs/app/view/model/Episode;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$4;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-object p2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$4;->a:Lcom/cbs/app/view/model/Episode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 688
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$4;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->f(Lcom/cbs/app/widget/ScheduleGridLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$4;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;Z)Z

    .line 690
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$4;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$4;->a:Lcom/cbs/app/view/model/Episode;

    invoke-static {v0, v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;Lcom/cbs/app/view/model/Episode;)V

    .line 695
    :cond_0
    return-void
.end method
