.class public Lcom/urbanairship/actions/ActionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static b:I


# instance fields
.field private a:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/urbanairship/actions/ActionActivity;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/urbanairship/actions/ActionActivity;->a:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    const-string v1, "com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    iget-object v1, p0, Lcom/urbanairship/actions/ActionActivity;->a:Landroid/os/ResultReceiver;

    invoke-virtual {v1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionActivity;->finish()V

    .line 99
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/c;->a(Landroid/app/Application;)V

    .line 69
    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 71
    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionActivity;->finish()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-nez p1, :cond_0

    .line 78
    const-string v0, "com.urbanairship.actions.START_ACTIVITY_INTENT_EXTRA"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 79
    if-eqz v0, :cond_2

    .line 80
    const-string v2, "com.urbanairship.actions.actionactivity.RESULT_RECEIVER_EXTRA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Lcom/urbanairship/actions/ActionActivity;->a:Landroid/os/ResultReceiver;

    .line 81
    sget v1, Lcom/urbanairship/actions/ActionActivity;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/urbanairship/actions/ActionActivity;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/ActionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionActivity;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 106
    invoke-static {p0}, Lcom/urbanairship/analytics/c;->a(Landroid/app/Activity;)V

    .line 107
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 114
    invoke-static {p0}, Lcom/urbanairship/analytics/c;->b(Landroid/app/Activity;)V

    .line 115
    return-void
.end method
