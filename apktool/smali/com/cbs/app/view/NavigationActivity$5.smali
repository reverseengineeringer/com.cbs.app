.class final Lcom/cbs/app/view/NavigationActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/NavigationActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/NavigationActivity;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/cbs/app/view/NavigationActivity$5;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$5;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->setNielsonDialogShownParam(Landroid/content/Context;)V

    .line 329
    return-void
.end method
