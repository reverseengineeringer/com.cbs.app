.class final Lcom/cbs/app/view/NavigationActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/NavigationActivity;
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
    .line 121
    iput-object p1, p0, Lcom/cbs/app/view/NavigationActivity$2;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$2;->a:Lcom/cbs/app/view/NavigationActivity;

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity$2;->a:Lcom/cbs/app/view/NavigationActivity;

    iget-object v1, v1, Lcom/cbs/app/view/NavigationActivity;->k:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    invoke-static {v0, v1}, Lcom/cbs/app/manager/StatusManager;->a(Landroid/content/Context;Lcom/cbs/app/manager/StatusManager$StatusResponseListener;)V

    .line 125
    return-void
.end method
