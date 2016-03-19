.class final Lcom/cbs/app/widget/ScheduleGridLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/widget/ScheduleGridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/widget/ScheduleGridLayout;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/ScheduleGridLayout;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$6;->a:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$6;->a:Lcom/cbs/app/widget/ScheduleGridLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;Z)Z

    .line 939
    return-void
.end method
