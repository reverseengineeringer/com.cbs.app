.class final Lcom/cbs/app/player/SimplePlayerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/player/SimplePlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/player/SimplePlayerActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/player/SimplePlayerActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/cbs/app/player/SimplePlayerActivity$3;->a:Lcom/cbs/app/player/SimplePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/cbs/app/player/SimplePlayerActivity$3;->a:Lcom/cbs/app/player/SimplePlayerActivity;

    invoke-static {v0}, Lcom/cbs/app/player/SimplePlayerActivity;->a(Lcom/cbs/app/player/SimplePlayerActivity;)V

    .line 130
    :cond_0
    return-void
.end method
