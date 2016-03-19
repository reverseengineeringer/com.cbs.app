.class final Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$7;->b:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$7;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$7;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$7;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$7;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$7;->b:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    const v2, 0x7f080174

    invoke-virtual {v1, v2}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
