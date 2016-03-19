.class final Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$4;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$4;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->e(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)V

    .line 331
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$4;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->g(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$4;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->f(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    return-void
.end method
