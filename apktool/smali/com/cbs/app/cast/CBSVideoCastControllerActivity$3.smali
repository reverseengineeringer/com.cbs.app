.class final Lcom/cbs/app/cast/CBSVideoCastControllerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$3;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$3;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-virtual {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a()Z

    .line 326
    return-void
.end method
