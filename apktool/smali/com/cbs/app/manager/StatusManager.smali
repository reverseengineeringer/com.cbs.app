.class public Lcom/cbs/app/manager/StatusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;,
        Lcom/cbs/app/manager/StatusManager$a;,
        Lcom/cbs/app/manager/StatusManager$StatusResponseListener;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/manager/StatusManager;->a:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/manager/StatusManager;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 40
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cbs/app/manager/StatusManager;->a(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Z)V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;

    invoke-direct {v0}, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;-><init>()V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 56
    const-string v2, "upgrade_nosupport_dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 59
    :cond_0
    iput-boolean p1, v0, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;->a:Z

    .line 60
    const-string v2, "upgrade_nosupport_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/manager/StatusManager$StatusResponseListener;)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/cbs/app/service/StatusServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/StatusServiceImpl;-><init>()V

    .line 65
    new-instance v1, Lcom/cbs/app/manager/StatusManager$a;

    invoke-direct {v1, p0, p1}, Lcom/cbs/app/manager/StatusManager$a;-><init>(Landroid/content/Context;Lcom/cbs/app/manager/StatusManager$StatusResponseListener;)V

    invoke-interface {v0, p0, v1}, Lcom/cbs/app/service/StatusService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 66
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/cbs/app/manager/StatusManager;->a(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public static getAdServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/cbs/app/manager/StatusManager;->a:Ljava/lang/String;

    return-object v0
.end method
