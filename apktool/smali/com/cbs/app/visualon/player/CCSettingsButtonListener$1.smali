.class final Lcom/cbs/app/visualon/player/CCSettingsButtonListener$1;
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
    .line 92
    iput-object p1, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$1;->a:Lcom/cbs/app/visualon/player/CCSettingsButtonListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 96
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->A()V

    .line 97
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->h()V

    .line 98
    return-void
.end method
