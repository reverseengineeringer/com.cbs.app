.class final Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$3;->a:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 165
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 166
    return-void
.end method
