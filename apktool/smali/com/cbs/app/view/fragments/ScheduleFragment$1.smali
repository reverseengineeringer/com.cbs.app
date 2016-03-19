.class final Lcom/cbs/app/view/fragments/ScheduleFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/ScheduleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/ScheduleFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/ScheduleFragment;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ScheduleFragment$1;->a:Lcom/cbs/app/view/fragments/ScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->h:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ScheduleFragment$1;->a:Lcom/cbs/app/view/fragments/ScheduleFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/ScheduleFragment;->a(Lcom/cbs/app/view/fragments/ScheduleFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/ScheduleFragment$1;->a:Lcom/cbs/app/view/fragments/ScheduleFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/ScheduleFragment;->b(Lcom/cbs/app/view/fragments/ScheduleFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment$1;->a:Lcom/cbs/app/view/fragments/ScheduleFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->c(Lcom/cbs/app/view/fragments/ScheduleFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 54
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    .line 55
    const/4 v0, 0x1

    .line 57
    :cond_0
    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->h:Ljava/lang/String;

    return-object v0
.end method
