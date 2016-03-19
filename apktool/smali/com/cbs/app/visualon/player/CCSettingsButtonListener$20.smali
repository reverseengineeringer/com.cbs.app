.class final Lcom/cbs/app/visualon/player/CCSettingsButtonListener$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->setButtonListeners(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/visualon/player/CCSettingsButtonListener;


# direct methods
.method constructor <init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$20;->a:Lcom/cbs/app/visualon/player/CCSettingsButtonListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontEdgeType(I)V

    .line 339
    return-void
.end method
