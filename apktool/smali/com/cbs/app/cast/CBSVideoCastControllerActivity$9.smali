.class final Lcom/cbs/app/cast/CBSVideoCastControllerActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$9;->b:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    iput-object p2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$9;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$9;->a:Ljava/lang/String;

    const-string v1, "captions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$9;->b:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    .line 1910
    invoke-virtual {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->finish()V

    .line 545
    :cond_1
    return-void
.end method
