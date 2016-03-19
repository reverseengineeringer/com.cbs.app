.class public Lcom/cbs/app/view/UnableToConnectDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    .prologue
    .line 37
    const-class v3, Lcom/cbs/app/view/UnableToConnectDialogHelper;

    monitor-enter v3

    :try_start_0
    sget-boolean v1, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a:Z

    if-nez v1, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->L(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 44
    :goto_0
    new-instance v4, Landroid/app/Dialog;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0b00e9

    invoke-direct {v1, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    const v1, 0x7f0300fe

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 46
    const-string v1, "CBS"

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 49
    const v1, 0x7f0f036d

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v1, 0x7f0f0371

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    const v2, 0x7f0f0370

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v5, Lcom/cbs/app/view/UnableToConnectDialogHelper$1;

    invoke-direct {v5, v4, p0, p2}, Lcom/cbs/app/view/UnableToConnectDialogHelper$1;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v1, Lcom/cbs/app/view/UnableToConnectDialogHelper$2;

    invoke-direct {v1, v4, p0, p4}, Lcom/cbs/app/view/UnableToConnectDialogHelper$2;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const/4 v1, 0x1

    sput-boolean v1, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a:Z

    .line 80
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit v3

    return-void

    .line 41
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a:Z

    return v0
.end method
