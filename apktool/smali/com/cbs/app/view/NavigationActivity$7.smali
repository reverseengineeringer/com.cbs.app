.class final Lcom/cbs/app/view/NavigationActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/NavigationActivity;->l()V
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
    .line 736
    iput-object p1, p0, Lcom/cbs/app/view/NavigationActivity$7;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$7;->a:Lcom/cbs/app/view/NavigationActivity;

    new-instance v1, Lcom/cbs/app/view/NavigationActivity$7$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/NavigationActivity$7$1;-><init>(Lcom/cbs/app/view/NavigationActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 745
    return-void
.end method
