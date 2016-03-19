.class final Lcom/cbs/app/visualon/player/CBSPlayer$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/visualon/player/CBSPlayer;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 980
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->g()V

    .line 981
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/app/Activity;)V

    .line 983
    return-void
.end method
