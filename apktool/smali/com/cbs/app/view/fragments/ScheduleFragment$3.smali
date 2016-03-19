.class final Lcom/cbs/app/view/fragments/ScheduleFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


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
    .line 97
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ScheduleFragment$3;->a:Lcom/cbs/app/view/fragments/ScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setReconcileDialogShowing(Z)V

    .line 102
    return-void
.end method
